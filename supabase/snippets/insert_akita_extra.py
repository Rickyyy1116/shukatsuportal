# -*- coding: utf-8 -*-
import json, subprocess

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
    {"name":"博善社湯沢","slug":"akita-yuzawa-hakuzensha","venue_type":"private_hall","description":"湯沢市に位置する博善社の斎場。秋田県南端のエリアで、湯沢・羽後町の方に利用されている地域密着型の施設です。","address":"秋田県湯沢市表町3-2-15","prefecture_slug":"akita","city_slug":"yuzawa-akita","latitude":39.170,"longitude":140.505,"nearest_station":"JR奥羽本線 湯沢駅","station_walk_minutes":10,"capacity_max":50,"hall_count":1,"has_crematorium":False,"parking_count":18,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"安置室":True},"price_plans":[{"type":"kazokuso","label":"家族葬プラン","priceFrom":340000},{"type":"ippanso","label":"一般葬プラン","priceFrom":620000}],"features":["家族葬対応","駅近"],"operator_name":"博善社","rating_avg":3.9,"review_count":12},
    {"name":"清月記潟上","slug":"akita-katagami-seigetsuki","venue_type":"private_hall","description":"潟上市に位置する清月記の斎場。秋田市との境界エリアに立地し、秋田市北西部からの利用も多い施設です。八郎潟の豊かな自然環境の中で、心安らぐお別れの場を提供しています。","address":"秋田県潟上市天王字上江川47-3","prefecture_slug":"akita","city_slug":"katagami","latitude":39.812,"longitude":140.042,"nearest_station":"JR奥羽本線 天王駅","station_walk_minutes":12,"capacity_max":50,"hall_count":1,"has_crematorium":False,"parking_count":18,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"バリアフリー":True,"安置室":True},"price_plans":[{"type":"kazokuso","label":"家族葬プラン","priceFrom":355000},{"type":"ippanso","label":"一般葬プラン","priceFrom":640000}],"features":["家族葬対応"],"operator_name":"清月記","rating_avg":4.0,"review_count":11},
]

print(f"秋田県追加データ件数: {len(extra)}")
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
print("秋田県追加データ投入完了")
