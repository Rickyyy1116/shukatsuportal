-- =============================================
-- 葬儀場・斎場テーブル追加マイグレーション
-- 事業者(providers)中心 → 施設(venues)中心への移行
-- =============================================

-- 施設種別のENUM型
CREATE TYPE venue_type AS ENUM (
  'public_crematorium',   -- 公営火葬場
  'private_crematorium',  -- 民営火葬場
  'private_hall',         -- 民営斎場
  'temple_hall',          -- 寺院式場
  'public_facility'       -- 公共施設
);

-- =============================================
-- 斎場・葬儀場テーブル
-- =============================================
CREATE TABLE venues (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL CHECK (char_length(name) BETWEEN 1 AND 200),
  slug TEXT NOT NULL UNIQUE CHECK (slug ~ '^[a-z0-9][a-z0-9\-]*[a-z0-9]$' AND char_length(slug) BETWEEN 2 AND 100),
  venue_type venue_type NOT NULL,
  description TEXT NOT NULL DEFAULT '' CHECK (char_length(description) <= 5000),
  address TEXT NOT NULL DEFAULT '' CHECK (char_length(address) <= 500),
  prefecture_slug TEXT NOT NULL CHECK (char_length(prefecture_slug) BETWEEN 1 AND 50),
  city_slug TEXT NOT NULL DEFAULT '' CHECK (char_length(city_slug) <= 50),
  latitude DOUBLE PRECISION CHECK (latitude IS NULL OR (latitude BETWEEN -90 AND 90)),
  longitude DOUBLE PRECISION CHECK (longitude IS NULL OR (longitude BETWEEN -180 AND 180)),
  nearest_station TEXT NOT NULL DEFAULT '' CHECK (char_length(nearest_station) <= 200),
  station_walk_minutes SMALLINT CHECK (station_walk_minutes IS NULL OR (station_walk_minutes BETWEEN 0 AND 120)),
  capacity_max INT CHECK (capacity_max IS NULL OR (capacity_max BETWEEN 1 AND 10000)),
  hall_count SMALLINT CHECK (hall_count IS NULL OR (hall_count BETWEEN 1 AND 100)),
  has_crematorium BOOLEAN NOT NULL DEFAULT false,
  parking_count INT CHECK (parking_count IS NULL OR (parking_count BETWEEN 0 AND 5000)),
  facilities JSONB NOT NULL DEFAULT '{}',
  price_plans JSONB NOT NULL DEFAULT '[]',
  features TEXT[] NOT NULL DEFAULT '{}',
  images TEXT[] NOT NULL DEFAULT '{}',
  operator_name TEXT NOT NULL DEFAULT '' CHECK (char_length(operator_name) <= 200),
  rating_avg NUMERIC(2, 1) NOT NULL DEFAULT 0 CHECK (rating_avg BETWEEN 0 AND 5),
  review_count INT NOT NULL DEFAULT 0 CHECK (review_count >= 0),
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_venues_prefecture ON venues (prefecture_slug);
CREATE INDEX idx_venues_city ON venues (prefecture_slug, city_slug);
CREATE INDEX idx_venues_type ON venues (venue_type);
CREATE INDEX idx_venues_rating ON venues (rating_avg DESC);
CREATE INDEX idx_venues_active ON venues (is_active) WHERE is_active = true;

-- updated_atトリガー
CREATE TRIGGER trigger_updated_at_venues
  BEFORE UPDATE ON venues FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- =============================================
-- RLS（Row Level Security）— venuesテーブル
-- 読み取り: 誰でも可
-- 書き込み: service_roleキー経由のみ（RLSバイパス）
-- anonキーやauthenticatedユーザーからの直接変更を禁止
-- =============================================
ALTER TABLE venues ENABLE ROW LEVEL SECURITY;
CREATE POLICY "venues_select_public" ON venues FOR SELECT USING (true);
-- INSERT/UPDATE/DELETEポリシーを定義しない = anonキー経由では一切書き込み不可
-- データ管理はservice_roleキー（RLSバイパス）またはSupabaseダッシュボードから行う

-- =============================================
-- 既存テーブルへのカラム追加
-- =============================================

-- reviewsテーブルにvenue_id追加（既存provider_idと共存）
ALTER TABLE reviews ADD COLUMN venue_id UUID REFERENCES venues(id) ON DELETE CASCADE;
CREATE INDEX idx_reviews_venue ON reviews (venue_id);

-- leadsテーブルにvenue_id追加
ALTER TABLE leads ADD COLUMN venue_id UUID REFERENCES venues(id);
CREATE INDEX idx_leads_venue ON leads (venue_id);

-- =============================================
-- 既存テーブルのセキュリティ強化
-- =============================================

-- providers: authenticatedユーザーからの書き込みを禁止（service_roleのみに変更）
DROP POLICY IF EXISTS "providers_insert" ON providers;
DROP POLICY IF EXISTS "providers_update" ON providers;
-- providers INSERT/UPDATE/DELETEはservice_roleキー経由のみ

-- leads: 入力データの長さ制限追加
ALTER TABLE leads ADD CONSTRAINT check_user_name_length CHECK (char_length(user_name) BETWEEN 1 AND 200);
ALTER TABLE leads ADD CONSTRAINT check_user_email_length CHECK (char_length(user_email) BETWEEN 3 AND 320);
ALTER TABLE leads ADD CONSTRAINT check_user_email_format CHECK (user_email ~ '^[^@\s]+@[^@\s]+\.[^@\s]+$');
ALTER TABLE leads ADD CONSTRAINT check_message_length CHECK (message IS NULL OR char_length(message) <= 5000);
ALTER TABLE leads ADD CONSTRAINT check_user_phone_length CHECK (user_phone IS NULL OR char_length(user_phone) <= 30);

-- providers: rating_avg/review_countにCHECK制約追加（既存テーブル）
ALTER TABLE providers ADD CONSTRAINT check_provider_rating CHECK (rating_avg BETWEEN 0 AND 5);
ALTER TABLE providers ADD CONSTRAINT check_provider_review_count CHECK (review_count >= 0);

-- rewards: 入力データの長さ制限
ALTER TABLE rewards ADD CONSTRAINT check_reward_user_name_length CHECK (char_length(user_name) BETWEEN 1 AND 200);
ALTER TABLE rewards ADD CONSTRAINT check_reward_user_email_length CHECK (char_length(user_email) BETWEEN 3 AND 320);
ALTER TABLE rewards ADD CONSTRAINT check_reward_amount CHECK (amount > 0 AND amount <= 1000000);

-- =============================================
-- lead_number採番のレースコンディション修正
-- アドバイザリーロックを使用して同時採番を防止
-- =============================================
CREATE OR REPLACE FUNCTION generate_lead_number()
RETURNS TRIGGER AS $$
DECLARE
  today_count INT;
BEGIN
  -- 同日の採番をシリアライズするためのアドバイザリーロック
  PERFORM pg_advisory_xact_lock(hashtext('lead_number_' || CURRENT_DATE::TEXT));

  SELECT COUNT(*) + 1 INTO today_count
  FROM leads
  WHERE DATE(created_at) = CURRENT_DATE;

  NEW.lead_number := 'L-' || TO_CHAR(CURRENT_DATE, 'YYYYMMDD') || '-' || LPAD(today_count::TEXT, 3, '0');
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- =============================================
-- カテゴリのprovider_labelを更新（葬儀のみ）
-- =============================================
UPDATE categories
SET provider_label = '葬儀場・斎場'
WHERE slug = 'sougi';

-- =============================================
-- 既存の葬儀社データを非アクティブに
-- =============================================
UPDATE providers
SET is_active = false
WHERE category_slug = 'sougi';
