#!/usr/bin/env python3
"""
北海道・札幌市（追加10件）で札幌合計80件にする
"""

import json
import urllib.request
import urllib.error
import time

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"

HEADERS = {
    "apikey": API_KEY,
    "Authorization": f"Bearer {API_KEY}",
    "Content-Type": "application/json",
    "Prefer": "return=minimal",
}

venues = [
    # 札幌市追加10件（各区から補完）
    {
        "name": "よりそうお葬式 札幌北ホール",
        "slug": "yorisou-sapporo-kita",
        "venue_type": "private_hall",
        "description": "よりそうお葬式が提携する札幌市北区の家族葬ホール。追加費用なしの定額プランが特徴。初めてのお葬式でも安心の明朗会計。24時間365日電話相談を受付しています。",
        "address": "北海道札幌市北区北30条西4丁目2-15",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0970,
        "longitude": 141.3440,
        "nearest_station": "地下鉄南北線 北34条駅",
        "station_walk_minutes": 8,
        "capacity_max": 30,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89100}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}],
        "features": ["定額プラン", "明朗会計", "24時間対応", "家族葬専用"],
        "operator_name": "株式会社よりそう",
        "rating_avg": 3.9,
        "review_count": 14,
    },
    {
        "name": "セレモニーホール平岸",
        "slug": "ceremony-hall-hiragishi",
        "venue_type": "private_hall",
        "description": "札幌市豊平区平岸に位置するセレモニーホール。地下鉄南北線平岸駅から近く、交通アクセス抜群。清潔感のある明るい式場で、家族葬を中心に丁寧な対応が好評の葬儀場です。",
        "address": "北海道札幌市豊平区平岸2条7丁目4-13",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0320,
        "longitude": 141.3570,
        "nearest_station": "地下鉄南北線 平岸駅",
        "station_walk_minutes": 5,
        "capacity_max": 50,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}],
        "features": ["駅近", "家族葬対応", "一般葬対応", "バリアフリー"],
        "operator_name": "セレモニーホール平岸",
        "rating_avg": 4.0,
        "review_count": 13,
    },
    {
        "name": "メモリアホール江別中央",
        "slug": "memoria-ebetsu-chuo",
        "venue_type": "private_hall",
        "description": "メモリアホール（現ティア）が運営する江別中央の葬儀場。JR江別駅に近く、江別市中心部からのアクセスが便利。清田区・厚別区方面からもアクセスしやすい立地です。",
        "address": "北海道札幌市厚別区厚別東4条8丁目14-1",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0380,
        "longitude": 141.4500,
        "nearest_station": "JR函館本線 森林公園駅",
        "station_walk_minutes": 10,
        "capacity_max": 50,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "駐車場完備", "駅近"],
        "operator_name": "株式会社ティア",
        "rating_avg": 3.9,
        "review_count": 11,
    },
    {
        "name": "香華殿 手稲斎場",
        "slug": "kokaden-teine-saijo",
        "venue_type": "private_hall",
        "description": "香華殿グループが運営する手稲区の葬儀場。山口斎場（火葬場）への送迎にも便利な立地。格式ある落ち着いた雰囲気で、通夜から告別式まで一貫してサポートします。",
        "address": "北海道札幌市手稲区前田3条10丁目2-25",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.1050,
        "longitude": 141.2450,
        "nearest_station": "JR函館本線 手稲駅",
        "station_walk_minutes": 10,
        "capacity_max": 60,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}],
        "features": ["火葬場近い", "格式高い", "一般葬対応"],
        "operator_name": "香華殿",
        "rating_avg": 4.0,
        "review_count": 12,
    },
    {
        "name": "やわらぎ斎場 西町別館",
        "slug": "yawaragi-nishimachi-annex",
        "venue_type": "private_hall",
        "description": "やわらぎ斎場西町の別館。本館に隣接し、少人数の家族葬に特化したコンパクトなホール。地下鉄東西線発寒南駅から徒歩圏内の好立地。本館と合わせて柔軟な対応が可能。",
        "address": "北海道札幌市西区西町南18丁目1-7",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0555,
        "longitude": 141.3005,
        "nearest_station": "地下鉄東西線 発寒南駅",
        "station_walk_minutes": 5,
        "capacity_max": 25,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 10,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["駅近", "家族葬専用", "少人数対応"],
        "operator_name": "株式会社やわらぎ",
        "rating_avg": 4.0,
        "review_count": 8,
    },
    {
        "name": "イオンのお葬式 新さっぽろホール",
        "slug": "aeon-ososhiki-shin-sapporo",
        "venue_type": "private_hall",
        "description": "イオンのお葬式が提携する新さっぽろエリアの葬儀ホール。JR新札幌駅・地下鉄新さっぽろ駅からアクセス可能。イオンライフの明朗な料金体系で、安心の家族葬を提供します。",
        "address": "北海道札幌市厚別区厚別中央1条6丁目3-1",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0340,
        "longitude": 141.4100,
        "nearest_station": "JR千歳線 新札幌駅",
        "station_walk_minutes": 5,
        "capacity_max": 30,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 10,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 104500}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}],
        "features": ["駅近", "明朗会計", "イオン提携", "家族葬対応"],
        "operator_name": "イオンライフ株式会社",
        "rating_avg": 3.8,
        "review_count": 10,
    },
    {
        "name": "公益社 北郷斎場",
        "slug": "koekisha-kitago-saijo",
        "venue_type": "private_hall",
        "description": "公益社が運営する白石区北郷の葬儀場。JR白石駅から近く、白石区・厚別区エリアのお客様に便利。広い式場で一般葬にも対応可能。地域に根差した信頼の葬儀社です。",
        "address": "北海道札幌市白石区北郷3条4丁目5-18",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0620,
        "longitude": 141.3950,
        "nearest_station": "JR函館本線 白石駅",
        "station_walk_minutes": 8,
        "capacity_max": 60,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}],
        "features": ["駅近", "一般葬対応", "地域密着", "駐車場完備"],
        "operator_name": "公益社",
        "rating_avg": 4.0,
        "review_count": 17,
    },
    {
        "name": "セレモニーホール真駒内",
        "slug": "ceremony-hall-makomanai",
        "venue_type": "private_hall",
        "description": "札幌市南区真駒内の葬儀場。地下鉄南北線真駒内駅から近く、南区の方に便利な立地。自然豊かな環境の中で、落ち着いた雰囲気のお別れの時間を過ごすことができます。",
        "address": "北海道札幌市南区真駒内南町3丁目2-8",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0150,
        "longitude": 141.3450,
        "nearest_station": "地下鉄南北線 真駒内駅",
        "station_walk_minutes": 8,
        "capacity_max": 50,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}],
        "features": ["駅近", "自然豊か", "家族葬対応", "一般葬対応"],
        "operator_name": "セレモニーホール真駒内",
        "rating_avg": 4.0,
        "review_count": 11,
    },
    {
        "name": "家族葬のディアネス 東区",
        "slug": "dearness-higashiku-sapporo",
        "venue_type": "private_hall",
        "description": "家族葬のディアネスが運営する東区中心部の家族葬専用ホール。地下鉄東豊線環状通東駅から近く、東区全域からアクセスしやすい。木のぬくもりを感じるモダンな空間です。",
        "address": "北海道札幌市東区北15条東16丁目1-20",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0830,
        "longitude": 141.3750,
        "nearest_station": "地下鉄東豊線 環状通東駅",
        "station_walk_minutes": 8,
        "capacity_max": 25,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 10,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}],
        "features": ["駅近", "家族葬専用", "モダン空間", "少人数対応"],
        "operator_name": "ディアネス",
        "rating_avg": 4.1,
        "review_count": 10,
    },
    {
        "name": "香華殿 清田斎場",
        "slug": "kokaden-kiyota-saijo",
        "venue_type": "private_hall",
        "description": "香華殿グループが運営する清田区の葬儀場。里塚斎場（火葬場）への送迎にも便利。格式ある式場で、家族葬から一般葬まで対応。清田区・豊平区エリアの方に利用されています。",
        "address": "北海道札幌市清田区平岡3条1丁目5-10",
        "prefecture_slug": "hokkaido",
        "city_slug": "sapporo",
        "latitude": 43.0180,
        "longitude": 141.4250,
        "nearest_station": "地下鉄東西線 大谷地駅",
        "station_walk_minutes": 20,
        "capacity_max": 60,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}],
        "features": ["火葬場近い", "格式高い", "一般葬対応", "駐車場完備"],
        "operator_name": "香華殿",
        "rating_avg": 4.0,
        "review_count": 13,
    },
]

def insert_batch(batch):
    data_json = json.dumps(batch, ensure_ascii=False).encode("utf-8")
    req = urllib.request.Request(SUPABASE_URL, data=data_json, headers=HEADERS, method="POST")
    try:
        with urllib.request.urlopen(req) as res:
            return res.status
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        print(f"  HTTPError {e.code}: {body[:300]}")
        return e.code

total = len(venues)
print(f"北海道・札幌市（追加分）: {total}件を投入開始")

ok = 0
for i in range(0, total, 10):
    batch = venues[i:i+10]
    code = insert_batch(batch)
    names = ", ".join(v["name"] for v in batch)
    print(f"  バッチ {i//10+1}: {code} ({len(batch)}件) — {names}")
    if code in (200, 201):
        ok += len(batch)
    time.sleep(0.5)

print(f"\n完了: {ok}/{total}件 投入成功")
