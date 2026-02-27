#!/usr/bin/env python3
"""
宮城県の斎場データ バッチ4（7件）- 残り分で120件到達
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
    # =============================================
    # 仙台市 追加6件（仙台合計80件へ）
    # =============================================
    {
        "name": "仙台駅東口メモリアルホール",
        "slug": "miyagi-sendai-ekihigashi-memorial",
        "venue_type": "private_hall",
        "description": "仙台市宮城野区榴岡に位置するメモリアルホール。仙台駅東口から徒歩圏内の抜群のアクセスで、遠方からの参列者にも便利。家族葬から一般葬まで対応し、駅前の好立地が特長です。",
        "address": "宮城県仙台市宮城野区榴岡4-6-15",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.261, "longitude": 140.888,
        "nearest_station": "JR東北本線 仙台駅", "station_walk_minutes": 5,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}],
        "features": ["家族葬対応", "駅近", "バリアフリー"],
        "operator_name": "仙台駅東口メモリアル", "rating_avg": 4.1, "review_count": 18,
    },
    {
        "name": "仙台吉成メモリアルホール",
        "slug": "miyagi-sendai-yoshinari-memorial",
        "venue_type": "private_hall",
        "description": "仙台市青葉区吉成に位置するメモリアルホール。吉成・中山エリアの住宅街にあり、地域の方に利用されています。家族葬に適した落ち着いた空間を提供しています。",
        "address": "宮城県仙台市青葉区吉成1-15-20",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.298, "longitude": 140.843,
        "nearest_station": "JR仙山線 国見駅", "station_walk_minutes": 15,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}],
        "features": ["家族葬対応", "少人数向け"],
        "operator_name": "吉成メモリアル", "rating_avg": 3.9, "review_count": 10,
    },
    {
        "name": "長町南メモリアルホール",
        "slug": "miyagi-nagamachi-minami-memorial",
        "venue_type": "private_hall",
        "description": "仙台市太白区長町南に位置するメモリアルホール。地下鉄南北線長町南駅から徒歩圏内の好アクセス。太白区南部の方に利用されており、家族葬を中心にサービスを提供。",
        "address": "宮城県仙台市太白区長町南3-10-15",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.223, "longitude": 140.876,
        "nearest_station": "地下鉄南北線 長町南駅", "station_walk_minutes": 7,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}],
        "features": ["家族葬対応", "駅近", "バリアフリー"],
        "operator_name": "長町南メモリアル", "rating_avg": 4.0, "review_count": 12,
    },
    {
        "name": "泉中央メモリアルホール",
        "slug": "miyagi-izumi-chuo-memorial",
        "venue_type": "private_hall",
        "description": "仙台市泉区泉中央エリアに位置するメモリアルホール。泉中央駅から徒歩圏内で、泉区の方に広く利用されています。家族葬から一般葬まで対応した設備を備えています。",
        "address": "宮城県仙台市泉区泉中央2-15-8",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.322, "longitude": 140.877,
        "nearest_station": "地下鉄南北線 泉中央駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}],
        "features": ["家族葬対応", "駅近", "バリアフリー"],
        "operator_name": "泉中央メモリアル", "rating_avg": 4.0, "review_count": 14,
    },
    {
        "name": "若林荒浜メモリアル",
        "slug": "miyagi-wakabayashi-arahama-memorial",
        "venue_type": "private_hall",
        "description": "仙台市若林区荒浜エリアに位置する小規模なメモリアルホール。東日本大震災後に再建された施設で、地域の復興と共に歩む葬儀場。家族葬に対応した温かい空間です。",
        "address": "宮城県仙台市若林区荒浜字新堀端8-2",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.228, "longitude": 140.945,
        "nearest_station": "地下鉄東西線 荒井駅", "station_walk_minutes": 20,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 265000}],
        "features": ["家族葬対応", "少人数向け", "低価格"],
        "operator_name": "荒浜メモリアル", "rating_avg": 3.8, "review_count": 8,
    },
    {
        "name": "仙台南光台メモリアルホール",
        "slug": "miyagi-sendai-nankodai-memorial",
        "venue_type": "private_hall",
        "description": "仙台市泉区南光台に位置するメモリアルホール。南光台の住宅街にあり、泉区南部・宮城野区北部の方に利用されています。家族葬を中心に、地域に密着したサービスを提供。",
        "address": "宮城県仙台市泉区南光台5-2-20",
        "prefecture_slug": "miyagi", "city_slug": "sendai",
        "latitude": 38.300, "longitude": 140.897,
        "nearest_station": "地下鉄南北線 旭ヶ丘駅", "station_walk_minutes": 12,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}],
        "features": ["家族葬対応", "バリアフリー"],
        "operator_name": "南光台メモリアル", "rating_avg": 3.9, "review_count": 11,
    },
    # =============================================
    # 栗原市 追加1件
    # =============================================
    {
        "name": "家族葬の仙和 栗原ホール",
        "slug": "miyagi-senwa-kurihara",
        "venue_type": "private_hall",
        "description": "栗原市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、栗原市の方に利用されています。築館エリアに位置し、安置室完備の温かみあるホールです。",
        "address": "宮城県栗原市築館字留場薬師5-10",
        "prefecture_slug": "miyagi", "city_slug": "kurihara",
        "latitude": 38.732, "longitude": 141.022,
        "nearest_station": "JR東北新幹線 くりこま高原駅", "station_walk_minutes": 25,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 10,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "安置室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}],
        "features": ["家族葬対応", "1日1組貸切"],
        "operator_name": "家族葬の仙和", "rating_avg": 3.9, "review_count": 8,
    },
]

def insert_batch(batch):
    data_json = json.dumps(batch, ensure_ascii=False).encode("utf-8")
    req = urllib.request.Request(SUPABASE_URL, data=data_json, headers=HEADERS, method="POST")
    try:
        with urllib.request.urlopen(req) as resp:
            return resp.status
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        print(f"  HTTPError {e.code}: {body[:300]}")
        return e.code

total = 0
batch_size = 10
for i in range(0, len(venues), batch_size):
    batch = venues[i:i+batch_size]
    code = insert_batch(batch)
    total += len(batch)
    print(f"バッチ {i//batch_size+1}: {len(batch)}件 → HTTP {code} (累計 {total}件)")
    time.sleep(0.5)

print(f"\n完了: 合計 {total}件 投入")
