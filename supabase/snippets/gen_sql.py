# -*- coding: utf-8 -*-
import json, sys, os

def escape_sql(s):
    """SQLのシングルクォートエスケープ"""
    if s is None:
        return "NULL"
    return s.replace("'", "''")

def venue_to_sql(v, idx):
    """1件分のINSERT文を生成"""
    features_arr = ", ".join([f"'{escape_sql(f)}'" for f in v.get("features", [])])
    images_arr = ", ".join([f"'{escape_sql(i)}'" for i in v.get("images", [])])
    facilities_json = json.dumps(v["facilities"], ensure_ascii=False)
    price_plans_json = json.dumps(v["price_plans"], ensure_ascii=False)

    sql = f"""-- {idx}. {v['name']}
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '{escape_sql(v["name"])}',
  '{escape_sql(v["slug"])}',
  '{v["venue_type"]}',
  '{escape_sql(v["description"])}',
  '{escape_sql(v["address"])}',
  '{escape_sql(v["prefecture_slug"])}', '{escape_sql(v["city_slug"])}',
  {v["latitude"]}, {v["longitude"]},
  '{escape_sql(v["nearest_station"])}',
  {v["station_walk_minutes"]},
  {v["capacity_max"]}, {v["hall_count"]}, {str(v["has_crematorium"]).lower()}, {v["parking_count"]},
  '{escape_sql(facilities_json)}'::jsonb,
  '{escape_sql(price_plans_json)}'::jsonb,
  ARRAY[{features_arr}],
  '{escape_sql(v["operator_name"])}',
  {v["rating_avg"]}, {v["review_count"]}
);
"""
    return sql

def generate_sql_file(data, output_path, header_comment):
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(header_comment + "\n\n")
        for idx, v in enumerate(data, 1):
            f.write(venue_to_sql(v, idx))
            f.write("\n")
    print(f"生成完了: {output_path} ({len(data)}件)")

# ===== 福島県 =====
# insert_fukushima.pyのデータを読み込み
namespace = {}
with open('insert_fukushima.py', encoding='utf-8') as f:
    code = f.read().split('\nprint(f"')[0]
    exec(code, namespace)
with open('insert_fukushima_extra.py', encoding='utf-8') as f:
    code = f.read().split('\nprint(f"')[0]
    exec(code, namespace)

fukushima_data = namespace['fukushima'] + namespace['extra']

fukushima_header = """-- =============================================
-- 斎場データ: 福島県 80件
-- 郡山市18件, いわき市15件, 福島市15件, 会津若松市8件,
-- 須賀川市4件, 白河市4件, 南相馬市3件, 相馬市3件,
-- 喜多方市2件, 二本松市2件, 田村市2件, 伊達市3件, 本宮市3件
-- ============================================="""

generate_sql_file(
    fukushima_data,
    os.path.expanduser('/Users/riku/Desktop/Claude Code実行フォルダ/SEOプロジェクト/終活サイト/portal/supabase/snippets/seed_venues_fukushima.sql'),
    fukushima_header
)

# ===== 秋田県 =====
namespace2 = {}
with open('insert_akita.py', encoding='utf-8') as f:
    code = f.read().split('\nprint(f"')[0]
    exec(code, namespace2)
with open('insert_akita_extra.py', encoding='utf-8') as f:
    code = f.read().split('\nprint(f"')[0]
    exec(code, namespace2)

akita_data = namespace2['akita'] + namespace2['extra']

akita_header = """-- =============================================
-- 斎場データ: 秋田県 60件
-- 秋田市20件, 横手市6件, 大仙市6件, 由利本荘市5件,
-- 大館市4件, 能代市4件, 湯沢市4件, 鹿角市2件,
-- 潟上市3件, 北秋田市2件, にかほ市2件, 仙北市2件
-- ============================================="""

generate_sql_file(
    akita_data,
    os.path.expanduser('/Users/riku/Desktop/Claude Code実行フォルダ/SEOプロジェクト/終活サイト/portal/supabase/snippets/seed_venues_akita.sql'),
    akita_header
)
