# -*- coding: utf-8 -*-
import json, subprocess, time

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

extra = [
    {"name":"セレモニーホール伊達梁川","slug":"fukushima-date-yanagawa-ceremony","venue_type":"private_hall","description":"伊達市梁川町に位置する斎場。阿武隈川沿いの落ち着いた環境で、梁川・霊山エリアの方々に利用されています。家族葬を中心に対応しています。","address":"福島県伊達市梁川町字東土井内25","prefecture_slug":"fukushima","city_slug":"date-fukushima","latitude":37.856,"longitude":140.568,"nearest_station":"阿武隈急行 梁川駅","station_walk_minutes":8,"capacity_max":50,"hall_count":1,"has_crematorium":False,"parking_count":18,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"安置室":True},"price_plans":[{"type":"kasoshiki","label":"火葬式プラン","priceFrom":88000},{"type":"kazokuso","label":"家族葬プラン","priceFrom":310000},{"type":"ippanso","label":"一般葬プラン","priceFrom":570000}],"features":["家族葬対応","駅近"],"operator_name":"セレモニーホール","rating_avg":3.9,"review_count":11},
    {"name":"メモリアルホール本宮","slug":"fukushima-motomiya-memorial","venue_type":"private_hall","description":"本宮市郊外に位置するメモリアルホール。安達太良山を望む静かな環境で、心安らぐお別れの場を提供しています。大玉村からのアクセスも良好です。","address":"福島県本宮市高木字井戸上38","prefecture_slug":"fukushima","city_slug":"motomiya","latitude":37.518,"longitude":140.400,"nearest_station":"JR東北本線 本宮駅","station_walk_minutes":15,"capacity_max":50,"hall_count":1,"has_crematorium":False,"parking_count":20,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"バリアフリー":True,"安置室":True},"price_plans":[{"type":"kazokuso","label":"家族葬プラン","priceFrom":335000},{"type":"ippanso","label":"一般葬プラン","priceFrom":600000}],"features":["家族葬対応"],"operator_name":"メモリアルホール","rating_avg":4.0,"review_count":13},
]

print(f"福島県追加データ件数: {len(extra)}")
status = insert_batch(extra)
print(f"HTTP {status}")
if status != "201":
    data_json = json.dumps(extra, ensure_ascii=False)
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
    print(f"エラー詳細: {result.stdout[:500]}")
print("福島県追加データ投入完了")
