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

venues = [
    # === 宮津市 2件 ===
    {"name":"公益社 宮津ホール","slug":"kyoto-koekisha-miyazu","venue_type":"private_hall","description":"天橋立で有名な宮津市の公益社ホール。宮津湾を望む立地で、丹後エリアの葬儀を支えています。","address":"京都府宮津市字鶴賀2066-3","prefecture_slug":"kyoto","city_slug":"miyazu","latitude":35.534,"longitude":135.193,"nearest_station":"京都丹後鉄道 宮津駅","station_walk_minutes":8,"capacity_max":60,"hall_count":1,"has_crematorium":False,"parking_count":20,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"バリアフリー":True,"安置室":True},"price_plans":[{"type":"kasoshiki","label":"火葬式プラン","priceFrom":92000},{"type":"kazokuso","label":"家族葬プラン","priceFrom":348000},{"type":"ippanso","label":"一般葬プラン","priceFrom":630000}],"features":["家族葬対応","駅近"],"operator_name":"公益社","rating_avg":4.0,"review_count":14},
    {"name":"家族葬のファミーユ宮津","slug":"kyoto-famillu-miyazu","venue_type":"private_hall","description":"宮津市の家族葬専門ホール。天橋立エリアの少人数葬儀に対応しています。","address":"京都府宮津市字新浜1992","prefecture_slug":"kyoto","city_slug":"miyazu","latitude":35.537,"longitude":135.198,"nearest_station":"京都丹後鉄道 宮津駅","station_walk_minutes":10,"capacity_max":30,"hall_count":1,"has_crematorium":False,"parking_count":8,"facilities":{"式場":True,"親族控室":True,"駐車場":True,"安置室":True},"price_plans":[{"type":"kasoshiki","label":"火葬式プラン","priceFrom":82000},{"type":"kazokuso","label":"家族葬プラン","priceFrom":280000}],"features":["家族葬対応","少人数対応","低価格"],"operator_name":"家族葬のファミーユ","rating_avg":4.2,"review_count":8},
    # === 京丹後市 2件 ===
    {"name":"公益社 京丹後ホール","slug":"kyoto-koekisha-kyotango","venue_type":"private_hall","description":"京丹後市峰山エリアの公益社ホール。丹後半島の葬儀を広くサポートしています。","address":"京都府京丹後市峰山町杉谷691","prefecture_slug":"kyoto","city_slug":"kyotango","latitude":35.622,"longitude":135.063,"nearest_station":"京都丹後鉄道 峰山駅","station_walk_minutes":10,"capacity_max":60,"hall_count":1,"has_crematorium":False,"parking_count":20,"facilities":{"式場":True,"親族控室":True,"お清め所":True,"駐車場":True,"安置室":True},"price_plans":[{"type":"kasoshiki","label":"火葬式プラン","priceFrom":90000},{"type":"kazokuso","label":"家族葬プラン","priceFrom":340000},{"type":"ippanso","label":"一般葬プラン","priceFrom":620000}],"features":["家族葬対応","駅近"],"operator_name":"公益社","rating_avg":4.0,"review_count":12},
    {"name":"家族葬のファミーユ京丹後","slug":"kyoto-famillu-kyotango","venue_type":"private_hall","description":"京丹後市の家族葬専門ホール。丹後エリアの少人数葬儀に対応しています。","address":"京都府京丹後市峰山町新町1606","prefecture_slug":"kyoto","city_slug":"kyotango","latitude":35.625,"longitude":135.060,"nearest_station":"京都丹後鉄道 峰山駅","station_walk_minutes":8,"capacity_max":30,"hall_count":1,"has_crematorium":False,"parking_count":8,"facilities":{"式場":True,"親族控室":True,"駐車場":True,"安置室":True},"price_plans":[{"type":"kasoshiki","label":"火葬式プラン","priceFrom":82000},{"type":"kazokuso","label":"家族葬プラン","priceFrom":275000}],"features":["家族葬対応","少人数対応","低価格"],"operator_name":"家族葬のファミーユ","rating_avg":4.2,"review_count":8},
]

code = insert_batch(venues)
print(f"投入: {code} ({len(venues)}件)")
print(f"\n完了: 合計 {len(venues)} 件")
