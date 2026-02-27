#!/usr/bin/env python3
"""
福島県追加2件 + 秋田県追加5件 = 合計7件をSupabase REST APIに投入
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
    # 福島県 追加2件（合計80件に到達）
    # =============================================
    {
        "name": "家族葬のファミラル 北沢又",
        "slug": "fukushima-familar-kitasawamata",
        "venue_type": "private_hall",
        "description": "福島市北沢又に位置する家族葬のファミラル。福島市北部エリアの方に利用されている家族葬専用ホール。少人数で温かいお別れの場を提供しています。",
        "address": "福島県福島市北沢又字成出16-3",
        "prefecture_slug": "fukushima", "city_slug": "fukushima-city",
        "latitude": 37.780, "longitude": 140.460,
        "nearest_station": "福島交通飯坂線 笹谷駅", "station_walk_minutes": 10,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}],
        "features": ["家族葬対応", "24時間対応"],
        "operator_name": "アルファクラブ株式会社", "rating_avg": 4.0, "review_count": 10,
    },
    {
        "name": "こころ斎苑 いなわしろ",
        "slug": "fukushima-kokoro-inawashiro",
        "venue_type": "private_hall",
        "description": "耶麻郡猪苗代町に位置するたまのやの家族葬ホール。磐梯山と猪苗代湖に囲まれた自然豊かな環境にあり、会津地域の方に利用されています。家族葬に特化した施設です。",
        "address": "福島県耶麻郡猪苗代町大字千代田字扇田10-7",
        "prefecture_slug": "fukushima", "city_slug": "aizuwakamatsu",
        "latitude": 37.555, "longitude": 140.080,
        "nearest_station": "JR磐越西線 猪苗代駅", "station_walk_minutes": 10,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}],
        "features": ["家族葬対応", "駅近", "24時間対応"],
        "operator_name": "株式会社たまのや", "rating_avg": 4.0, "review_count": 9,
    },
    # =============================================
    # 秋田県 追加5件（合計60件に到達）
    # =============================================
    {
        "name": "こすもすホール角館",
        "slug": "senboku-cosmos-kakunodate",
        "venue_type": "private_hall",
        "description": "仙北市角館に位置するこすもす秋田の葬儀ホール。武家屋敷の街・角館で家族葬から一般葬まで対応可能。秋田新幹線角館駅からアクセスも良好です。",
        "address": "秋田県仙北市角館町上野18-1",
        "prefecture_slug": "akita", "city_slug": "senboku",
        "latitude": 39.595, "longitude": 140.558,
        "nearest_station": "JR秋田新幹線 角館駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}],
        "features": ["家族葬対応", "駅近"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 4.0, "review_count": 11,
    },
    {
        "name": "にかほ市斎場",
        "slug": "nikaho-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "にかほ市が運営する公営火葬場。鳥海山と日本海に挟まれた自然豊かなにかほ市に位置し、市民は火葬料の優遇措置があります。",
        "address": "秋田県にかほ市金浦字岡の谷地1",
        "prefecture_slug": "akita", "city_slug": "nikaho",
        "latitude": 39.220, "longitude": 139.910,
        "nearest_station": "JR羽越本線 金浦駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "にかほ市", "rating_avg": 3.5, "review_count": 7,
    },
    {
        "name": "潟上市斎場",
        "slug": "katagami-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "潟上市が運営する公営火葬場。八郎潟に面した潟上市に位置し、市民は火葬料の優遇措置があります。秋田市に隣接するアクセスの良い施設です。",
        "address": "秋田県潟上市昭和大久保字片田124",
        "prefecture_slug": "akita", "city_slug": "katagami",
        "latitude": 39.790, "longitude": 140.005,
        "nearest_station": "JR奥羽本線 大久保駅", "station_walk_minutes": 12,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "潟上市", "rating_avg": 3.5, "review_count": 8,
    },
    {
        "name": "横手市北部斎場",
        "slug": "yokote-hokubu-saijo",
        "venue_type": "public_crematorium",
        "description": "横手市北部に位置する公営火葬場。横手市北部・大仙市方面の方に利用されている施設。横手市民は火葬料の優遇措置があります。",
        "address": "秋田県横手市大森町字八沢木上段96",
        "prefecture_slug": "akita", "city_slug": "yokote",
        "latitude": 39.340, "longitude": 140.470,
        "nearest_station": "JR奥羽本線 横手駅", "station_walk_minutes": 30,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "横手市", "rating_avg": 3.5, "review_count": 9,
    },
    {
        "name": "こすもすホール由利本荘南",
        "slug": "yurihonjo-cosmos-minami",
        "venue_type": "private_hall",
        "description": "由利本荘市南部に位置するこすもす秋田の葬儀ホール。矢島・岩城エリアの方に利用されている施設で、家族葬に適した落ち着いた空間を提供しています。",
        "address": "秋田県由利本荘市岩城内道川字新鶴潟5-1",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.420, "longitude": 140.050,
        "nearest_station": "JR羽越本線 道川駅", "station_walk_minutes": 10,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["家族葬対応", "駅近"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 3.9, "review_count": 8,
    },
]

def insert_batch(batch, batch_num):
    data_json = json.dumps(batch, ensure_ascii=False).encode("utf-8")
    req = urllib.request.Request(SUPABASE_URL, data=data_json, headers=HEADERS, method="POST")
    try:
        with urllib.request.urlopen(req) as resp:
            print(f"  バッチ{batch_num}: {resp.status} — {len(batch)}件投入成功")
            return True
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        print(f"  バッチ{batch_num}: エラー {e.code} — {body}")
        return False

def main():
    total = len(venues)
    success = 0
    print(f"福島県+秋田県 追加分: 合計{total}件を投入開始")
    if insert_batch(venues, 1):
        success = total
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
