-- =============================================
-- 安心終活ナビ ポータル 初期スキーマ
-- Phase 1: 基本テーブル + 課金モデル + フォローアップ
-- =============================================

-- カテゴリのENUM型
CREATE TYPE category_slug AS ENUM (
  'sougi', 'ohaka', 'kaigo', 'souzoku', 'ihinseiri', 'hoken'
);

-- 料金帯のENUM型
CREATE TYPE price_range AS ENUM ('low', 'mid', 'high');

-- =============================================
-- カテゴリテーブル
-- =============================================
CREATE TABLE categories (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  slug category_slug NOT NULL UNIQUE,
  sort_order INT NOT NULL DEFAULT 0,
  icon TEXT NOT NULL DEFAULT '',
  description TEXT NOT NULL DEFAULT '',
  provider_label TEXT NOT NULL DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

-- =============================================
-- エリアテーブル（都道府県 + 市区町村の階層構造）
-- =============================================
CREATE TABLE areas (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL,
  code TEXT NOT NULL DEFAULT '',
  parent_slug TEXT,
  level SMALLINT NOT NULL CHECK (level IN (1, 2)),
  region TEXT NOT NULL DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE (slug, parent_slug)
);

CREATE INDEX idx_areas_level ON areas (level);
CREATE INDEX idx_areas_parent_slug ON areas (parent_slug);

-- =============================================
-- 事業者テーブル
-- =============================================
CREATE TABLE providers (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL,
  category_slug category_slug NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  address TEXT NOT NULL DEFAULT '',
  phone TEXT NOT NULL DEFAULT '',
  website TEXT NOT NULL DEFAULT '',
  price_range price_range NOT NULL DEFAULT 'mid',
  price_detail TEXT NOT NULL DEFAULT '',
  business_hours TEXT NOT NULL DEFAULT '',
  features TEXT[] NOT NULL DEFAULT '{}',
  images TEXT[] NOT NULL DEFAULT '{}',
  latitude DOUBLE PRECISION,
  longitude DOUBLE PRECISION,
  prefecture_slug TEXT NOT NULL,
  city_slug TEXT NOT NULL DEFAULT '',
  rating_avg NUMERIC(2, 1) NOT NULL DEFAULT 0,
  review_count INT NOT NULL DEFAULT 0,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE (category_slug, slug)
);

CREATE INDEX idx_providers_category ON providers (category_slug);
CREATE INDEX idx_providers_prefecture ON providers (prefecture_slug);
CREATE INDEX idx_providers_city ON providers (prefecture_slug, city_slug);
CREATE INDEX idx_providers_rating ON providers (rating_avg DESC);
CREATE INDEX idx_providers_active ON providers (is_active) WHERE is_active = true;

-- =============================================
-- 口コミテーブル
-- =============================================
CREATE TABLE reviews (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  provider_id UUID NOT NULL REFERENCES providers(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
  content TEXT NOT NULL DEFAULT '',
  service_type TEXT NOT NULL DEFAULT '',
  used_at TEXT NOT NULL DEFAULT '',
  author_name TEXT NOT NULL DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_reviews_provider ON reviews (provider_id);

-- =============================================
-- リード（問い合わせ）テーブル
-- 設計書セクション3-3準拠
-- =============================================
CREATE TABLE leads (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  lead_number TEXT UNIQUE NOT NULL,

  -- ユーザー情報
  user_name TEXT NOT NULL,
  user_email TEXT NOT NULL,
  user_phone TEXT,
  user_id UUID REFERENCES auth.users(id),

  -- 紹介先情報
  provider_id UUID REFERENCES providers(id),
  category category_slug NOT NULL,
  area_id UUID REFERENCES areas(id),

  -- リード種別
  lead_type TEXT NOT NULL CHECK (lead_type IN (
    'inquiry', 'document_request', 'visit_booking', 'phone_call', 'estimate'
  )),
  message TEXT,

  -- リードステータス
  status TEXT NOT NULL DEFAULT 'new' CHECK (status IN (
    'new', 'sent', 'contacted', 'negotiating',
    'closed_won', 'closed_lost', 'expired'
  )),

  -- 反響課金
  lead_fee NUMERIC NOT NULL DEFAULT 0,
  lead_fee_status TEXT NOT NULL DEFAULT 'pending' CHECK (lead_fee_status IN (
    'pending', 'billed', 'paid'
  )),

  -- 成約追跡（葬儀・お墓・介護のみ使用）
  provider_reported_status TEXT CHECK (provider_reported_status IN (
    'contacted', 'won', 'lost'
  )),
  provider_reported_at TIMESTAMPTZ,
  provider_reported_amount NUMERIC,

  user_reported_status TEXT CHECK (user_reported_status IN (
    'satisfied', 'contracted', 'cancelled'
  )),
  user_reported_at TIMESTAMPTZ,

  -- 成約課金（成約確定後に計算）
  deal_amount NUMERIC,
  commission_rate NUMERIC,
  commission_amount NUMERIC,
  commission_status TEXT NOT NULL DEFAULT 'none' CHECK (commission_status IN (
    'none', 'calculated', 'billed', 'paid'
  )),

  -- 検証
  is_verified BOOLEAN NOT NULL DEFAULT false,
  verification_method TEXT CHECK (verification_method IN (
    'auto', 'manual', 'reward'
  )),
  mismatch_flag BOOLEAN NOT NULL DEFAULT false,

  -- 流入経路
  source TEXT,
  utm_source TEXT,
  utm_medium TEXT,
  utm_campaign TEXT,

  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_leads_provider ON leads (provider_id);
CREATE INDEX idx_leads_category ON leads (category);
CREATE INDEX idx_leads_status ON leads (status);
CREATE INDEX idx_leads_created ON leads (created_at DESC);
CREATE INDEX idx_leads_fee_status ON leads (lead_fee_status);

-- =============================================
-- リード番号の自動採番トリガー
-- 形式: L-YYYYMMDD-001
-- =============================================
CREATE OR REPLACE FUNCTION generate_lead_number()
RETURNS TRIGGER AS $$
DECLARE
  today_count INT;
BEGIN
  SELECT COUNT(*) + 1 INTO today_count
  FROM leads
  WHERE DATE(created_at) = CURRENT_DATE;

  NEW.lead_number := 'L-' || TO_CHAR(CURRENT_DATE, 'YYYYMMDD') || '-' || LPAD(today_count::TEXT, 3, '0');
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_lead_number
  BEFORE INSERT ON leads
  FOR EACH ROW EXECUTE FUNCTION generate_lead_number();

-- =============================================
-- 反響課金の自動計算トリガー
-- 設計書セクション2-3準拠
-- =============================================
CREATE OR REPLACE FUNCTION calculate_lead_fee()
RETURNS TRIGGER AS $$
BEGIN
  NEW.lead_fee := CASE
    WHEN NEW.category = 'sougi' THEN 5000
    WHEN NEW.category = 'ohaka' AND NEW.lead_type = 'document_request' THEN 3000
    WHEN NEW.category = 'ohaka' AND NEW.lead_type = 'visit_booking' THEN 5000
    WHEN NEW.category = 'ohaka' THEN 3000
    WHEN NEW.category = 'kaigo' THEN 3000
    WHEN NEW.category = 'ihinseiri' THEN 3000
    WHEN NEW.category = 'souzoku' THEN 3000
    WHEN NEW.category = 'hoken' THEN 2000
    ELSE 0
  END;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_lead_fee
  BEFORE INSERT ON leads
  FOR EACH ROW EXECUTE FUNCTION calculate_lead_fee();

-- =============================================
-- フォローアップスケジュールテーブル
-- =============================================
CREATE TABLE followups (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  lead_id UUID NOT NULL REFERENCES leads(id) ON DELETE CASCADE,
  type TEXT NOT NULL CHECK (type IN (
    'email_7d', 'email_14d', 'email_30d', 'phone_3d'
  )),
  scheduled_at TIMESTAMPTZ NOT NULL,
  sent_at TIMESTAMPTZ,
  response_token TEXT UNIQUE,
  user_response TEXT CHECK (user_response IN (
    'clicked_won', 'clicked_lost', 'clicked_ongoing'
  )),
  responded_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_followups_lead ON followups (lead_id);
CREATE INDEX idx_followups_scheduled ON followups (scheduled_at) WHERE sent_at IS NULL;
CREATE INDEX idx_followups_token ON followups (response_token) WHERE response_token IS NOT NULL;

-- =============================================
-- フォローアップ自動スケジュールトリガー
-- =============================================
CREATE OR REPLACE FUNCTION schedule_followups()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO followups (lead_id, type, scheduled_at, response_token)
  VALUES (NEW.id, 'email_7d', NEW.created_at + INTERVAL '7 days', gen_random_uuid()::TEXT);

  INSERT INTO followups (lead_id, type, scheduled_at, response_token)
  VALUES (NEW.id, 'email_14d', NEW.created_at + INTERVAL '14 days', gen_random_uuid()::TEXT);

  INSERT INTO followups (lead_id, type, scheduled_at, response_token)
  VALUES (NEW.id, 'email_30d', NEW.created_at + INTERVAL '30 days', gen_random_uuid()::TEXT);

  IF NEW.category = 'sougi' THEN
    INSERT INTO followups (lead_id, type, scheduled_at, response_token)
    VALUES (NEW.id, 'phone_3d', NEW.created_at + INTERVAL '3 days', gen_random_uuid()::TEXT);
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_schedule_followups
  AFTER INSERT ON leads
  FOR EACH ROW EXECUTE FUNCTION schedule_followups();

-- =============================================
-- お祝い金テーブル
-- =============================================
CREATE TABLE rewards (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  lead_id UUID NOT NULL REFERENCES leads(id) ON DELETE CASCADE,
  user_name TEXT NOT NULL,
  user_email TEXT NOT NULL,

  reward_type TEXT NOT NULL CHECK (reward_type IN (
    'visit_reward', 'contract_reward'
  )),
  amount NUMERIC NOT NULL,

  provider_name TEXT,
  contract_date DATE,
  contract_amount NUMERIC,
  evidence_url TEXT,

  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN (
    'pending', 'reviewing', 'approved', 'paid', 'rejected'
  )),
  reviewed_by TEXT,
  reviewed_at TIMESTAMPTZ,
  rejection_reason TEXT,

  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_rewards_lead ON rewards (lead_id);
CREATE INDEX idx_rewards_status ON rewards (status);

-- =============================================
-- 統計ビュー: 事業者別成約統計
-- =============================================
CREATE VIEW provider_conversion_stats AS
SELECT
  p.id AS provider_id,
  p.name AS provider_name,
  l.category,
  COUNT(l.id) AS total_leads,
  COUNT(CASE WHEN l.status = 'closed_won' THEN 1 END) AS won_leads,
  COUNT(CASE WHEN l.status = 'closed_lost' THEN 1 END) AS lost_leads,
  COUNT(CASE WHEN l.status = 'expired' THEN 1 END) AS expired_leads,
  ROUND(
    COUNT(CASE WHEN l.status = 'closed_won' THEN 1 END)::NUMERIC
    / NULLIF(COUNT(CASE WHEN l.status IN ('closed_won', 'closed_lost') THEN 1 END), 0)
    * 100, 2
  ) AS conversion_rate,
  COUNT(CASE
    WHEN l.user_reported_status = 'contracted'
    AND l.provider_reported_status IS DISTINCT FROM 'won'
    THEN 1
  END) AS mismatch_count,
  SUM(l.lead_fee) AS total_lead_fees,
  SUM(COALESCE(l.commission_amount, 0)) AS total_commissions
FROM providers p
LEFT JOIN leads l ON l.provider_id = p.id
GROUP BY p.id, p.name, l.category;

-- =============================================
-- 統計ビュー: 不一致検出
-- =============================================
CREATE VIEW lead_mismatches AS
SELECT
  l.id,
  l.lead_number,
  l.category,
  l.created_at,
  p.name AS provider_name,
  l.provider_reported_status,
  l.user_reported_status,
  CASE
    WHEN l.user_reported_status = 'contracted'
    AND l.provider_reported_status = 'lost' THEN 'MISMATCH_SUSPECT'
    WHEN l.user_reported_status = 'contracted'
    AND l.provider_reported_status IS NULL THEN 'UNREPORTED'
    WHEN l.provider_reported_status = 'won'
    AND l.user_reported_status = 'cancelled' THEN 'FALSE_REPORT'
    ELSE 'OK'
  END AS flag
FROM leads l
JOIN providers p ON p.id = l.provider_id
WHERE l.user_reported_status IS NOT NULL
  OR l.provider_reported_status IS NOT NULL;

-- =============================================
-- 統計ビュー: 月次請求サマリー
-- =============================================
CREATE VIEW monthly_billing AS
SELECT
  p.id AS provider_id,
  p.name AS provider_name,
  DATE_TRUNC('month', l.created_at) AS billing_month,
  COUNT(l.id) AS lead_count,
  SUM(l.lead_fee) AS total_lead_fees,
  COUNT(CASE WHEN l.commission_status != 'none' THEN 1 END) AS commission_count,
  SUM(COALESCE(l.commission_amount, 0)) AS total_commissions,
  SUM(l.lead_fee) + SUM(COALESCE(l.commission_amount, 0)) AS total_billing
FROM leads l
JOIN providers p ON p.id = l.provider_id
WHERE l.lead_fee_status != 'pending'
GROUP BY p.id, p.name, DATE_TRUNC('month', l.created_at);

-- =============================================
-- updated_at 自動更新トリガー
-- =============================================
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_updated_at_categories
  BEFORE UPDATE ON categories FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER trigger_updated_at_areas
  BEFORE UPDATE ON areas FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER trigger_updated_at_providers
  BEFORE UPDATE ON providers FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER trigger_updated_at_leads
  BEFORE UPDATE ON leads FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- =============================================
-- RLS（Row Level Security）ポリシー
-- =============================================

-- カテゴリ・エリア・口コミ: 誰でも読める
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
CREATE POLICY "categories_select" ON categories FOR SELECT USING (true);

ALTER TABLE areas ENABLE ROW LEVEL SECURITY;
CREATE POLICY "areas_select" ON areas FOR SELECT USING (true);

ALTER TABLE reviews ENABLE ROW LEVEL SECURITY;
CREATE POLICY "reviews_select" ON reviews FOR SELECT USING (true);

-- 事業者: 誰でも読める、認証ユーザーのみ変更可
ALTER TABLE providers ENABLE ROW LEVEL SECURITY;
CREATE POLICY "providers_select" ON providers FOR SELECT USING (true);
CREATE POLICY "providers_insert" ON providers FOR INSERT WITH CHECK (auth.role() = 'authenticated');
CREATE POLICY "providers_update" ON providers FOR UPDATE USING (auth.role() = 'authenticated');

-- リード: 匿名でも問い合わせ送信可、閲覧・更新は認証ユーザーのみ
ALTER TABLE leads ENABLE ROW LEVEL SECURITY;
CREATE POLICY "leads_insert_anon" ON leads FOR INSERT WITH CHECK (true);
CREATE POLICY "leads_select_auth" ON leads FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "leads_update_auth" ON leads FOR UPDATE USING (auth.role() = 'authenticated');

-- フォローアップ: 認証ユーザーのみ
ALTER TABLE followups ENABLE ROW LEVEL SECURITY;
CREATE POLICY "followups_select_auth" ON followups FOR SELECT USING (auth.role() = 'authenticated');

-- お祝い金: 匿名でも申請可、管理は認証ユーザーのみ
ALTER TABLE rewards ENABLE ROW LEVEL SECURITY;
CREATE POLICY "rewards_insert_anon" ON rewards FOR INSERT WITH CHECK (true);
CREATE POLICY "rewards_select_auth" ON rewards FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "rewards_update_auth" ON rewards FOR UPDATE USING (auth.role() = 'authenticated');
