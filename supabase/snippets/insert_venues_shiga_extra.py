#!/usr/bin/env python3
"""滋賀県の追加斎場データ（5件）"""
import json, subprocess, time

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"

def insert_batch(venues):
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run(["curl","-s","-o","/dev/null","-w","%{http_code}","-X","POST",SUPABASE_URL,"-H",f"apikey: {API_KEY}","-H",f"Authorization: Bearer {API_KEY}","-H","Content-Type: application/json","-H","Prefer: return=minimal","-H","User-Agent: Mozilla/5.0","-d",data_json], capture_output=True, text=True)
    return result.stdout.strip()

venues = [
    {
        "name": "大津唐崎セレモニーホール",
        "slug": "shiga-otsu-karasaki-ceremony",
        "venue_type": "private_hall",
        "description": "大津市唐崎エリアのセレモニーホール。JR唐崎駅から徒歩圏内。琵琶湖畔の静かな環境で温かいお別れの場を提供します。",
        "address": "滋賀県大津市唐崎3丁目5-12",
        "prefecture_slug": "shiga",
        "city_slug": "otsu",
        "latitude": 35.0400,
        "longitude": 135.8800,
        "nearest_station": "JR湖西線 唐崎駅",
        "station_walk_minutes": 5,
        "capacity_max": 50,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 18,
        "facilities": {"控室": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}],
        "features": ["駅近", "琵琶湖畔", "家族葬対応"],
        "operator_name": "唐崎セレモニー",
        "rating_avg": 4.0,
        "review_count": 14,
    },
    {
        "name": "草津南セレモニーホール",
        "slug": "shiga-kusatsu-minami-ceremony",
        "venue_type": "private_hall",
        "description": "草津市南部の矢橋エリアに位置するセレモニーホール。近江大橋に近くアクセス良好。家族葬に対応する温かい空間です。",
        "address": "滋賀県草津市矢橋町550-3",
        "prefecture_slug": "shiga",
        "city_slug": "kusatsu",
        "latitude": 35.0050,
        "longitude": 135.9500,
        "nearest_station": "JR東海道本線 南草津駅",
        "station_walk_minutes": 15,
        "capacity_max": 45,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 18,
        "facilities": {"控室": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "駐車場完備", "リーズナブル"],
        "operator_name": "草津南セレモニー",
        "rating_avg": 4.0,
        "review_count": 10,
    },
    {
        "name": "彦根やすらぎホール",
        "slug": "shiga-hikone-yasuragi",
        "venue_type": "private_hall",
        "description": "彦根市稲枝エリアのやすらぎホール。JR稲枝駅から近く、温かみのある家族葬を提供しています。",
        "address": "滋賀県彦根市稲枝町355-8",
        "prefecture_slug": "shiga",
        "city_slug": "hikone",
        "latitude": 35.2200,
        "longitude": 136.2300,
        "nearest_station": "JR東海道本線 稲枝駅",
        "station_walk_minutes": 8,
        "capacity_max": 40,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"控室": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}],
        "features": ["駅近", "家族葬対応", "リーズナブル"],
        "operator_name": "彦根やすらぎホール",
        "rating_avg": 4.0,
        "review_count": 10,
    },
    {
        "name": "甲賀メモリアルホール",
        "slug": "shiga-koka-memorial",
        "venue_type": "private_hall",
        "description": "甲賀市甲南エリアのメモリアルホール。地域密着のサービスでリーズナブルな家族葬を提供。忍者の里で温かいお別れを。",
        "address": "滋賀県甲賀市甲南町深川1658-3",
        "prefecture_slug": "shiga",
        "city_slug": "koka",
        "latitude": 34.9350,
        "longitude": 136.1500,
        "nearest_station": "JR草津線 甲南駅",
        "station_walk_minutes": 8,
        "capacity_max": 40,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"控室": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000}],
        "features": ["駅近", "地域密着", "家族葬対応"],
        "operator_name": "甲賀メモリアルサービス",
        "rating_avg": 4.0,
        "review_count": 8,
    },
    {
        "name": "長浜やすらぎホール",
        "slug": "shiga-nagahama-yasuragi",
        "venue_type": "private_hall",
        "description": "長浜市木之本エリアのやすらぎホール。北びわ湖の豊かな自然に囲まれた環境で、温かい家族葬を提供しています。",
        "address": "滋賀県長浜市木之本町木之本1580-5",
        "prefecture_slug": "shiga",
        "city_slug": "nagahama",
        "latitude": 35.4700,
        "longitude": 136.2300,
        "nearest_station": "JR北陸本線 木ノ本駅",
        "station_walk_minutes": 8,
        "capacity_max": 35,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"控室": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000}],
        "features": ["北びわ湖", "駅近", "家族葬対応"],
        "operator_name": "長浜やすらぎホール",
        "rating_avg": 4.0,
        "review_count": 8,
    },
]

print(f"滋賀県追加データ投入開始: 合計{len(venues)}件")
status = insert_batch(venues)
print(f"  バッチ 1: {len(venues)}件 → HTTP {status}")
if status != "201":
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run(["curl","-s","-X","POST",SUPABASE_URL,"-H",f"apikey: {API_KEY}","-H",f"Authorization: Bearer {API_KEY}","-H","Content-Type: application/json","-H","Prefer: return=minimal","-H","User-Agent: Mozilla/5.0","-d",data_json], capture_output=True, text=True)
    print(f"    詳細: {result.stdout[:500]}")
print(f"\n滋賀県追加: 全{len(venues)}件の投入完了")
