#!/usr/bin/env python3
"""
岩手県の追加2件をSupabase REST APIに投入するスクリプト
"""

import json
import subprocess

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"

def insert_batch(venues):
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run([
        "curl", "-s", "-o", "/dev/null", "-w", "%{http_code}",
        "-X", "POST", SUPABASE_URL,
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Content-Type: application/json",
        "-H", "Prefer: return=minimal",
        "-H", "User-Agent: Mozilla/5.0",
        "-d", data_json
    ], capture_output=True, text=True)
    return result.stdout.strip()

venues = [
    {
        "name": "盛岡東典礼会館",
        "slug": "iwate-morioka-higashi-tenrei",
        "venue_type": "private_hall",
        "description": "盛岡市東部に位置する葬儀式場。家族葬から一般葬まで対応し、東北自動車道盛岡ICからも近い好アクセス。清潔感のある明るい施設で、心安らぐお別れの場を提供します。",
        "address": "岩手県盛岡市東見前6-45-3",
        "prefecture_slug": "iwate",
        "city_slug": "morioka",
        "latitude": 39.6800,
        "longitude": 141.1550,
        "nearest_station": "JR東北本線 岩手飯岡駅",
        "station_walk_minutes": 18,
        "capacity_max": 80,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}],
        "features": ["家族葬対応", "一般葬対応", "宿泊可能", "IC近い", "駐車場完備"],
        "operator_name": "盛岡東典礼会館",
        "rating_avg": 4.0,
        "review_count": 13,
    },
    {
        "name": "紫波長安殿",
        "slug": "iwate-shiwa-choan-den",
        "venue_type": "private_hall",
        "description": "さがみ典礼が運営する紫波郡の葬儀会館。盛岡市と花巻市の中間に位置し、広域からのアクセスが良好。家族葬から一般葬まで対応し、地域の葬儀文化を大切にしたサービスを提供します。滝沢市からも利用可能です。",
        "address": "岩手県紫波郡紫波町日詰字下丸森36-2",
        "prefecture_slug": "iwate",
        "city_slug": "takizawa",
        "latitude": 39.5550,
        "longitude": 141.1480,
        "nearest_station": "JR東北本線 紫波中央駅",
        "station_walk_minutes": 10,
        "capacity_max": 80,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}],
        "features": ["家族葬対応", "一般葬対応", "宿泊可能", "駅近", "駐車場完備"],
        "operator_name": "株式会社アルファクラブ東北（さがみ典礼）",
        "rating_avg": 4.1,
        "review_count": 14,
    },
]

print(f"岩手県追加データ: {len(venues)} 件")
code = insert_batch(venues)
print(f"  HTTP {code}")
if code != "201":
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run([
        "curl", "-s",
        "-X", "POST", SUPABASE_URL,
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Content-Type: application/json",
        "-H", "Prefer: return=minimal",
        "-H", "User-Agent: Mozilla/5.0",
        "-d", data_json
    ], capture_output=True, text=True)
    print(f"    エラー詳細: {result.stdout[:500]}")
print("岩手県追加分の投入完了!")
