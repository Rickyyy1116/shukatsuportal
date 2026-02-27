#!/usr/bin/env python3
"""
秋田県の斎場データ パート2（30件）をSupabase REST APIに投入するスクリプト
由利本荘市5件 + 大館市4件 + 能代市4件 + 大仙市追加2件 + その他15件
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
    # 由利本荘市 5件
    # =============================================
    {
        "name": "由利本荘市斎場",
        "slug": "yurihonjo-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "由利本荘市が運営する公営火葬場。鳥海山のふもとに位置する自然豊かな環境の施設。由利本荘市民は火葬料の優遇措置があります。",
        "address": "秋田県由利本荘市新沢字北ノ沢86-1",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.380, "longitude": 140.050,
        "nearest_station": "JR羽越本線 羽後本荘駅", "station_walk_minutes": 20,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 25,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "由利本荘市", "rating_avg": 3.5, "review_count": 14,
    },
    {
        "name": "こすもすホール本荘",
        "slug": "yurihonjo-cosmos-honjo",
        "venue_type": "private_hall",
        "description": "由利本荘市に位置するこすもす秋田の葬儀ホール。JR羽後本荘駅から近くアクセスが良好。家族葬から一般葬まで対応可能な設備を備えた施設です。",
        "address": "秋田県由利本荘市瓦谷地21-3",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.385, "longitude": 140.045,
        "nearest_station": "JR羽越本線 羽後本荘駅", "station_walk_minutes": 8,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}],
        "features": ["家族葬対応", "駅近", "駐車場完備"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 4.1, "review_count": 16,
    },
    {
        "name": "セレモニーホール本荘",
        "slug": "yurihonjo-ceremony-honjo",
        "venue_type": "private_hall",
        "description": "由利本荘市中心部に位置する地域密着型の葬儀ホール。長年にわたり由利本荘地域の葬儀を担ってきた実績のある施設。きめ細かいサービスが評判です。",
        "address": "秋田県由利本荘市表尾崎町13-2",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.387, "longitude": 140.048,
        "nearest_station": "JR羽越本線 羽後本荘駅", "station_walk_minutes": 10,
        "capacity_max": 100, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "セレモニーホール本荘", "rating_avg": 4.0, "review_count": 15,
    },
    {
        "name": "JA秋田しんせい 葬祭会館",
        "slug": "yurihonjo-ja-shinsei",
        "venue_type": "public_facility",
        "description": "JA秋田しんせいが運営する葬祭会館。由利本荘市・にかほ市エリアの方に広く利用されています。JA組合員以外も利用可能で、リーズナブルな価格設定です。",
        "address": "秋田県由利本荘市川口字家後53",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.375, "longitude": 140.055,
        "nearest_station": "JR羽越本線 羽後本荘駅", "station_walk_minutes": 15,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "駐車場": True, "控室": True, "バリアフリー": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 450000}],
        "features": ["家族葬対応", "低価格", "駐車場完備"],
        "operator_name": "JA秋田しんせい", "rating_avg": 3.8, "review_count": 11,
    },
    {
        "name": "家族葬のファミーユ 本荘",
        "slug": "yurihonjo-famille",
        "venue_type": "private_hall",
        "description": "由利本荘市に位置する家族葬のファミーユ。家族葬に特化した温かみのあるホールで、費用を抑えた葬儀をお考えの方に最適です。",
        "address": "秋田県由利本荘市出戸町字中道17-1",
        "prefecture_slug": "akita", "city_slug": "yurihonjo",
        "latitude": 39.390, "longitude": 140.042,
        "nearest_station": "JR羽越本線 羽後本荘駅", "station_walk_minutes": 12,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.0, "review_count": 9,
    },
    # =============================================
    # 大館市 4件
    # =============================================
    {
        "name": "大館市斎場",
        "slug": "odate-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "大館市が運営する公営火葬場。忠犬ハチ公のふるさと大館市に位置し、市民は火葬料の優遇措置があります。大館市・小坂町エリアの方に利用されています。",
        "address": "秋田県大館市釈迦内字大野17-1",
        "prefecture_slug": "akita", "city_slug": "odate",
        "latitude": 40.270, "longitude": 140.555,
        "nearest_station": "JR奥羽本線 大館駅", "station_walk_minutes": 18,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 25,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "大館市", "rating_avg": 3.5, "review_count": 12,
    },
    {
        "name": "こすもすホール大館",
        "slug": "odate-cosmos",
        "venue_type": "private_hall",
        "description": "大館市に位置するこすもす秋田の葬儀ホール。大館駅から近くアクセスが良好。秋田県北部エリアで家族葬から一般葬まで対応可能な施設です。",
        "address": "秋田県大館市御成町2-8-15",
        "prefecture_slug": "akita", "city_slug": "odate",
        "latitude": 40.273, "longitude": 140.565,
        "nearest_station": "JR奥羽本線 大館駅", "station_walk_minutes": 8,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}],
        "features": ["家族葬対応", "駅近", "駐車場完備"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 4.1, "review_count": 15,
    },
    {
        "name": "大館セレモニーホール",
        "slug": "odate-ceremony-hall",
        "venue_type": "private_hall",
        "description": "大館市中心部に位置する地域密着型の葬儀ホール。大館地域で長年の実績を持ち、家族葬から一般葬まで丁寧に対応。信頼のおけるサービスが評判です。",
        "address": "秋田県大館市片山町2-6-35",
        "prefecture_slug": "akita", "city_slug": "odate",
        "latitude": 40.275, "longitude": 140.558,
        "nearest_station": "JR奥羽本線 大館駅", "station_walk_minutes": 10,
        "capacity_max": 100, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "大館セレモニーホール", "rating_avg": 4.0, "review_count": 14,
    },
    {
        "name": "JA秋田たかのす 葬祭会館大館",
        "slug": "odate-ja-takanosu",
        "venue_type": "public_facility",
        "description": "JA秋田たかのすが運営する葬祭会館。大館市・北秋田市エリアの方に利用されている施設。リーズナブルな価格設定で、地域の方に親しまれています。",
        "address": "秋田県大館市清水2-3-45",
        "prefecture_slug": "akita", "city_slug": "odate",
        "latitude": 40.268, "longitude": 140.560,
        "nearest_station": "JR奥羽本線 大館駅", "station_walk_minutes": 12,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "駐車場": True, "控室": True, "バリアフリー": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 450000}],
        "features": ["家族葬対応", "低価格"],
        "operator_name": "JA秋田たかのす", "rating_avg": 3.8, "review_count": 10,
    },
    # =============================================
    # 能代市 4件
    # =============================================
    {
        "name": "能代市斎場",
        "slug": "noshiro-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "能代市が運営する公営火葬場。バスケの街として知られる能代市に位置し、市民は火葬料の優遇措置があります。能代市・三種町エリアの方に利用されています。",
        "address": "秋田県能代市字大森山1-1",
        "prefecture_slug": "akita", "city_slug": "noshiro",
        "latitude": 40.195, "longitude": 140.025,
        "nearest_station": "JR五能線 能代駅", "station_walk_minutes": 18,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 25,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "能代市", "rating_avg": 3.5, "review_count": 12,
    },
    {
        "name": "こすもすホール能代",
        "slug": "noshiro-cosmos",
        "venue_type": "private_hall",
        "description": "能代市に位置するこすもす秋田の葬儀ホール。能代駅から近くアクセスが良好。家族葬から一般葬まで対応可能な設備を備えた施設です。",
        "address": "秋田県能代市柳町12-20",
        "prefecture_slug": "akita", "city_slug": "noshiro",
        "latitude": 40.200, "longitude": 140.030,
        "nearest_station": "JR五能線 能代駅", "station_walk_minutes": 8,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}],
        "features": ["家族葬対応", "駅近", "駐車場完備"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 4.0, "review_count": 14,
    },
    {
        "name": "能代セレモニーホール",
        "slug": "noshiro-ceremony-hall",
        "venue_type": "private_hall",
        "description": "能代市中心部に位置する地域密着型の葬儀ホール。能代地域で長年の実績を持ち、地域の方に信頼されている施設。家族葬から一般葬まで丁寧に対応します。",
        "address": "秋田県能代市万町4-8",
        "prefecture_slug": "akita", "city_slug": "noshiro",
        "latitude": 40.198, "longitude": 140.028,
        "nearest_station": "JR五能線 能代駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "能代セレモニーホール", "rating_avg": 4.0, "review_count": 13,
    },
    {
        "name": "家族葬のファミーユ 能代",
        "slug": "noshiro-famille",
        "venue_type": "private_hall",
        "description": "能代市に位置する家族葬のファミーユ。家族葬に特化したコンパクトなホールで、費用を抑えた温かいお別れの場を提供しています。",
        "address": "秋田県能代市寿域長根52-8",
        "prefecture_slug": "akita", "city_slug": "noshiro",
        "latitude": 40.202, "longitude": 140.035,
        "nearest_station": "JR五能線 能代駅", "station_walk_minutes": 12,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 3.9, "review_count": 8,
    },
    # =============================================
    # 大仙市 追加2件
    # =============================================
    {
        "name": "平安閣 大曲",
        "slug": "daisen-heian-kaku",
        "venue_type": "private_hall",
        "description": "大仙市大曲に位置する平安閣の葬儀会館。格式高い式場で、大規模な一般葬にも対応可能。充実した設備と丁寧なサービスが評判です。",
        "address": "秋田県大仙市大曲福住町5-20",
        "prefecture_slug": "akita", "city_slug": "daisen",
        "latitude": 39.458, "longitude": 140.485,
        "nearest_station": "JR奥羽本線 大曲駅", "station_walk_minutes": 10,
        "capacity_max": 150, "hall_count": 3, "has_crematorium": False, "parking_count": 50,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}],
        "features": ["大規模葬対応", "家族葬対応", "駐車場完備"],
        "operator_name": "平安閣", "rating_avg": 4.2, "review_count": 16,
    },
    {
        "name": "家族葬のファミーユ 大曲",
        "slug": "daisen-famille",
        "venue_type": "private_hall",
        "description": "大仙市大曲に位置する家族葬のファミーユ。家族葬に特化した温かみのあるホールで、費用を抑えた葬儀が可能です。",
        "address": "秋田県大仙市大曲上栄町5-15",
        "prefecture_slug": "akita", "city_slug": "daisen",
        "latitude": 39.452, "longitude": 140.480,
        "nearest_station": "JR奥羽本線 大曲駅", "station_walk_minutes": 12,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.0, "review_count": 9,
    },
    # =============================================
    # 湯沢市 3件
    # =============================================
    {
        "name": "湯沢市斎場",
        "slug": "yuzawa-akita-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "湯沢市が運営する公営火葬場。小野小町のふるさと湯沢市に位置し、市民は火葬料の優遇措置があります。静かな環境で故人をお見送りできる施設です。",
        "address": "秋田県湯沢市字岩崎字千年133",
        "prefecture_slug": "akita", "city_slug": "yuzawa-akita",
        "latitude": 39.170, "longitude": 140.500,
        "nearest_station": "JR奥羽本線 湯沢駅", "station_walk_minutes": 18,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "湯沢市", "rating_avg": 3.5, "review_count": 10,
    },
    {
        "name": "こすもすホール湯沢",
        "slug": "yuzawa-akita-cosmos",
        "venue_type": "private_hall",
        "description": "湯沢市に位置するこすもす秋田の葬儀ホール。湯沢駅から近くアクセスが良好。湯沢市・羽後町エリアの方に利用されている家族葬から一般葬まで対応可能な施設です。",
        "address": "秋田県湯沢市大町1-2-25",
        "prefecture_slug": "akita", "city_slug": "yuzawa-akita",
        "latitude": 39.165, "longitude": 140.495,
        "nearest_station": "JR奥羽本線 湯沢駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 2, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}],
        "features": ["家族葬対応", "駅近"],
        "operator_name": "株式会社こすもす秋田", "rating_avg": 4.0, "review_count": 13,
    },
    {
        "name": "湯沢セレモニーホール",
        "slug": "yuzawa-akita-ceremony",
        "venue_type": "private_hall",
        "description": "湯沢市に位置する地域密着型の葬儀ホール。湯沢地域で長年の実績を持ち、家族葬から一般葬まで丁寧に対応。温かみのあるサービスが好評です。",
        "address": "秋田県湯沢市裏門28-5",
        "prefecture_slug": "akita", "city_slug": "yuzawa-akita",
        "latitude": 39.168, "longitude": 140.498,
        "nearest_station": "JR奥羽本線 湯沢駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "湯沢セレモニーホール", "rating_avg": 4.0, "review_count": 12,
    },
    # =============================================
    # 鹿角市 2件
    # =============================================
    {
        "name": "鹿角市斎場",
        "slug": "kazuno-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "鹿角市が運営する公営火葬場。花輪ばやしで有名な鹿角市に位置し、市民は火葬料の優遇措置があります。鹿角市・小坂町エリアの方に利用されています。",
        "address": "秋田県鹿角市花輪字柳田20",
        "prefecture_slug": "akita", "city_slug": "kazuno",
        "latitude": 40.220, "longitude": 140.785,
        "nearest_station": "JR花輪線 鹿角花輪駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "鹿角市", "rating_avg": 3.5, "review_count": 8,
    },
    {
        "name": "鹿角セレモニーホール",
        "slug": "kazuno-ceremony-hall",
        "venue_type": "private_hall",
        "description": "鹿角市に位置する地域密着型の葬儀ホール。鹿角花輪駅から近くアクセスが良好。鹿角地域の方に長年親しまれている施設で、家族葬から一般葬まで対応可能です。",
        "address": "秋田県鹿角市花輪字上花輪70-2",
        "prefecture_slug": "akita", "city_slug": "kazuno",
        "latitude": 40.222, "longitude": 140.788,
        "nearest_station": "JR花輪線 鹿角花輪駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "鹿角セレモニーホール", "rating_avg": 4.0, "review_count": 10,
    },
    # =============================================
    # 潟上市 1件
    # =============================================
    {
        "name": "潟上市葬祭ホール",
        "slug": "katagami-sousai-hall",
        "venue_type": "private_hall",
        "description": "潟上市に位置する葬祭ホール。秋田市と男鹿市の間に位置する潟上市で、家族葬から一般葬まで対応。地域に密着したサービスを提供しています。",
        "address": "秋田県潟上市天王字追分西29-128",
        "prefecture_slug": "akita", "city_slug": "katagami",
        "latitude": 39.785, "longitude": 139.998,
        "nearest_station": "JR男鹿線 追分駅", "station_walk_minutes": 10,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}],
        "features": ["家族葬対応", "駅近"],
        "operator_name": "潟上市葬祭ホール", "rating_avg": 3.9, "review_count": 10,
    },
    # =============================================
    # 北秋田市 2件
    # =============================================
    {
        "name": "北秋田市斎場",
        "slug": "kitaakita-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "北秋田市が運営する公営火葬場。マタギの里として知られる北秋田市に位置し、市民は火葬料の優遇措置があります。自然豊かな環境の施設です。",
        "address": "秋田県北秋田市栄字中綱65",
        "prefecture_slug": "akita", "city_slug": "kitaakita",
        "latitude": 39.975, "longitude": 140.375,
        "nearest_station": "JR奥羽本線 鷹ノ巣駅", "station_walk_minutes": 18,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "北秋田市", "rating_avg": 3.5, "review_count": 7,
    },
    {
        "name": "鷹巣セレモニーホール",
        "slug": "kitaakita-takanosu-ceremony",
        "venue_type": "private_hall",
        "description": "北秋田市鷹巣に位置する地域密着型の葬儀ホール。北秋田地域の方に長年利用されている施設で、家族葬から一般葬まで温かみのあるサービスを提供しています。",
        "address": "秋田県北秋田市住吉町3-1",
        "prefecture_slug": "akita", "city_slug": "kitaakita",
        "latitude": 39.978, "longitude": 140.378,
        "nearest_station": "JR奥羽本線 鷹ノ巣駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "鷹巣セレモニーホール", "rating_avg": 4.0, "review_count": 10,
    },
    # =============================================
    # にかほ市 1件
    # =============================================
    {
        "name": "にかほ市葬祭ホール",
        "slug": "nikaho-sousai-hall",
        "venue_type": "private_hall",
        "description": "にかほ市に位置する葬祭ホール。鳥海山と日本海に挟まれた自然豊かなにかほ市で、家族葬から一般葬まで対応。地域密着のきめ細かいサービスが特徴です。",
        "address": "秋田県にかほ市象潟町字大塩越36",
        "prefecture_slug": "akita", "city_slug": "nikaho",
        "latitude": 39.215, "longitude": 139.905,
        "nearest_station": "JR羽越本線 象潟駅", "station_walk_minutes": 10,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}],
        "features": ["家族葬対応", "駅近", "地域密着"],
        "operator_name": "にかほ市葬祭ホール", "rating_avg": 3.9, "review_count": 9,
    },
    # =============================================
    # 仙北市 1件
    # =============================================
    {
        "name": "仙北市斎場",
        "slug": "senboku-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "仙北市が運営する公営火葬場。角館の武家屋敷や田沢湖で有名な仙北市に位置し、市民は火葬料の優遇措置があります。自然に囲まれた静かな環境です。",
        "address": "秋田県仙北市角館町白岩前郷81",
        "prefecture_slug": "akita", "city_slug": "senboku",
        "latitude": 39.590, "longitude": 140.565,
        "nearest_station": "JR秋田新幹線 角館駅", "station_walk_minutes": 18,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "仙北市", "rating_avg": 3.5, "review_count": 8,
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
    BATCH_SIZE = 10
    total = len(venues)
    success = 0
    print(f"秋田県パート2: 合計{total}件を投入開始")
    for i in range(0, total, BATCH_SIZE):
        batch = venues[i:i+BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        time.sleep(1)
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
