#!/usr/bin/env python3
"""
山梨県の斎場データ（追加分19件）をSupabase REST APIに投入するスクリプト
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
    # 甲府市 追加6件
    # =============================================
    {
        "name": "甲府市斎場",
        "slug": "kofu-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "甲府市が運営する公営斎場。甲府駅からタクシー約7分のアクセス。火葬施設と式場を備え、甲府市民は火葬料の優遇措置があります。富士山を望む環境で故人をお見送りできます。",
        "address": "福井県甲府市桜井町16-1",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.670, "longitude": 138.575,
        "nearest_station": "JR中央本線 甲府駅", "station_walk_minutes": 18,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "甲府市", "rating_avg": 3.8, "review_count": 30,
    },
    {
        "name": "アピオセレモニーホール天昇殿",
        "slug": "apio-tensyoden-kofu",
        "venue_type": "private_hall",
        "description": "甲府市の大型葬儀会館。JR南甲府駅から徒歩1分という抜群のアクセスが特長。山梨県内で多数の実績を持つアピオグループの旗艦施設で、大規模葬から家族葬まで幅広く対応しています。",
        "address": "山梨県甲府市住吉5-21-18",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.645, "longitude": 138.570,
        "nearest_station": "JR身延線 南甲府駅", "station_walk_minutes": 1,
        "capacity_max": 150, "hall_count": 3, "has_crematorium": False, "parking_count": 80,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}],
        "features": ["駅近", "大規模葬対応", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社アピオ", "rating_avg": 4.3, "review_count": 38,
    },
    {
        "name": "宝葬祭 宝ホール",
        "slug": "takara-hall-kofu",
        "venue_type": "private_hall",
        "description": "甲府市にある宝葬祭の葬儀会館。JR甲府駅から徒歩10分の好立地。山梨県内で長年の実績を持つ地域密着型の葬儀社で、家族葬から一般葬まで丁寧に対応しています。",
        "address": "山梨県甲府市北口3-6-22",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.672, "longitude": 138.568,
        "nearest_station": "JR中央本線 甲府駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社宝葬祭", "rating_avg": 4.2, "review_count": 28,
    },
    {
        "name": "コーリングセレモニーホール北璃宮",
        "slug": "calling-hokurikyu-kofu",
        "venue_type": "private_hall",
        "description": "甲府市元紺屋町にあるコーリンググループのセレモニーホール。甲府市中心部に位置し、上品で落ち着いた雰囲気が特長。家族葬から一般葬まで、ご遺族の要望に合わせた式を提供しています。",
        "address": "山梨県甲府市元紺屋町3-12",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.666, "longitude": 138.572,
        "nearest_station": "JR中央本線 甲府駅", "station_walk_minutes": 12,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "コーリンググループ", "rating_avg": 4.1, "review_count": 25,
    },
    {
        "name": "小さなお葬式 甲府ホール",
        "slug": "chiisana-ososhiki-kofu",
        "venue_type": "private_hall",
        "description": "全国展開の「小さなお葬式」提携ホール。甲府市内に位置し、低価格ながら質の高いサービスを提供。火葬式から家族葬まで明朗会計のプランが揃い、追加料金なしの安心感が好評です。",
        "address": "山梨県甲府市上石田3-5-18",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.655, "longitude": 138.548,
        "nearest_station": "JR中央本線 甲府駅", "station_walk_minutes": 20,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格", "明朗会計", "バリアフリー"],
        "operator_name": "株式会社ユニクエスト", "rating_avg": 4.0, "review_count": 14,
    },
    {
        "name": "甲府ホール",
        "slug": "kofu-hall",
        "venue_type": "private_hall",
        "description": "甲府市にある総合葬儀会館。甲斐住吉駅からのアクセスが良好。家族葬から大規模な一般葬まで対応し、広い駐車場と充実した設備を完備。バリアフリー設計で、ご高齢の方にも安心です。",
        "address": "山梨県甲府市住吉3-20-15",
        "prefecture_slug": "yamanashi", "city_slug": "kofu",
        "latitude": 35.648, "longitude": 138.565,
        "nearest_station": "JR身延線 甲斐住吉駅", "station_walk_minutes": 12,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 555000}],
        "features": ["家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "甲府ホール株式会社", "rating_avg": 4.0, "review_count": 22,
    },

    # =============================================
    # 富士吉田市 追加3件
    # =============================================
    {
        "name": "シティホール富士吉田",
        "slug": "city-hall-fujiyoshida",
        "venue_type": "private_hall",
        "description": "富士吉田市にある民間葬儀会館。富士山の麓に位置し、家族葬から一般葬まで対応。安置施設を完備し、ご遺族が安心して過ごせる環境を提供しています。24時間365日対応可能です。",
        "address": "山梨県富士吉田市松山1202-1",
        "prefecture_slug": "yamanashi", "city_slug": "fujiyoshida",
        "latitude": 35.490, "longitude": 138.800,
        "nearest_station": "富士急行 富士山駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備", "24時間対応"],
        "operator_name": "シティホール株式会社", "rating_avg": 4.1, "review_count": 25,
    },
    {
        "name": "シティホール下吉田",
        "slug": "city-hall-shimoyoshida",
        "venue_type": "private_hall",
        "description": "富士吉田市富士見にある家族葬向けの葬儀ホール。富士山を望む立地で、安置施設を完備。少人数での温かいお別れに適した空間を提供しています。下吉田駅からのアクセスも良好です。",
        "address": "山梨県富士吉田市富士見5-8-8",
        "prefecture_slug": "yamanashi", "city_slug": "fujiyoshida",
        "latitude": 35.478, "longitude": 138.792,
        "nearest_station": "富士急行 下吉田駅", "station_walk_minutes": 8,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}],
        "features": ["駅近", "家族葬対応", "駐車場完備", "バリアフリー"],
        "operator_name": "シティホール株式会社", "rating_avg": 4.0, "review_count": 18,
    },
    {
        "name": "富士五湖聖苑",
        "slug": "fujigoko-seien",
        "venue_type": "public_crematorium",
        "description": "富士五湖広域圏の公営斎場。富士河口湖町に位置し、富士吉田市・富士河口湖町・西桂町・忍野村・山中湖村の住民が利用可能。富士山を望む雄大な景観の中で故人をお見送りできます。",
        "address": "山梨県南都留郡富士河口湖町船津6663-1",
        "prefecture_slug": "yamanashi", "city_slug": "fujiyoshida",
        "latitude": 35.505, "longitude": 138.758,
        "nearest_station": "富士急行 河口湖駅", "station_walk_minutes": 15,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "富士五湖広域行政事務組合", "rating_avg": 3.9, "review_count": 25,
    },

    # =============================================
    # その他山梨県の市 追加10件
    # =============================================
    {
        "name": "やすらぎ聖苑",
        "slug": "yasuragi-seien-kai",
        "venue_type": "public_crematorium",
        "description": "甲斐市にある公営斎場。甲斐市・中央市・昭和町の住民が利用可能。火葬施設と式場を備え、通夜から火葬まで一貫して対応できます。広い駐車場を完備しています。",
        "address": "山梨県甲斐市竜王新町2020-6",
        "prefecture_slug": "yamanashi", "city_slug": "kai",
        "latitude": 35.660, "longitude": 138.528,
        "nearest_station": "JR中央本線 竜王駅", "station_walk_minutes": 15,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "甲斐市", "rating_avg": 3.9, "review_count": 25,
    },
    {
        "name": "東山聖苑",
        "slug": "higashiyama-seien-yamanashi",
        "venue_type": "public_crematorium",
        "description": "山梨市にある公営斎場。東八代広域行政事務組合が運営し、山梨市・甲州市の住民が利用可能。自然に囲まれた静かな環境で、穏やかに故人をお見送りできます。",
        "address": "山梨県山梨市小原西562",
        "prefecture_slug": "yamanashi", "city_slug": "yamanashi-city",
        "latitude": 35.710, "longitude": 138.695,
        "nearest_station": "JR中央本線 山梨市駅", "station_walk_minutes": 20,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": True, "parking_count": 35,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "東八代広域行政事務組合", "rating_avg": 3.7, "review_count": 18,
    },
    {
        "name": "コーリングセレモニーホール東璃宮",
        "slug": "calling-torikyu-yamanashi",
        "venue_type": "private_hall",
        "description": "山梨市にあるコーリンググループのセレモニーホール。家族葬から一般葬まで対応し、落ち着いた雰囲気の中で心のこもったお見送りをサポート。ぶどうの丘で知られる山梨市で地域に密着したサービスを提供しています。",
        "address": "山梨県山梨市落合264",
        "prefecture_slug": "yamanashi", "city_slug": "yamanashi-city",
        "latitude": 35.695, "longitude": 138.678,
        "nearest_station": "JR中央本線 山梨市駅", "station_walk_minutes": 12,
        "capacity_max": 60, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "コーリンググループ", "rating_avg": 4.0, "review_count": 20,
    },
    {
        "name": "シティホール都留",
        "slug": "city-hall-tsuru",
        "venue_type": "private_hall",
        "description": "都留市にある民間葬儀会館。都留文科大学のある学園都市・都留市で、家族葬から一般葬まで対応。24時間対応可能で、急なご依頼にも丁寧にサポートします。",
        "address": "山梨県都留市田野倉1080-4",
        "prefecture_slug": "yamanashi", "city_slug": "tsuru",
        "latitude": 35.555, "longitude": 138.908,
        "nearest_station": "富士急行 田野倉駅", "station_walk_minutes": 5,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["駅近", "家族葬対応", "24時間対応", "駐車場完備"],
        "operator_name": "シティホール株式会社", "rating_avg": 4.0, "review_count": 15,
    },
    {
        "name": "セレモホールはなさき",
        "slug": "ceremo-hall-hanasaki-otsuki",
        "venue_type": "private_hall",
        "description": "大月市にある葬儀会館。JR大月駅からのアクセスが良好で、中央自動車道大月ICにも近い便利な立地。家族葬から一般葬まで対応し、地域に密着した温かいサービスを提供しています。",
        "address": "山梨県大月市大月町花咲382",
        "prefecture_slug": "yamanashi", "city_slug": "otsuki",
        "latitude": 35.608, "longitude": 138.940,
        "nearest_station": "JR中央本線 大月駅", "station_walk_minutes": 10,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
        "features": ["駅近", "家族葬対応", "駐車場完備"],
        "operator_name": "セレモホール株式会社", "rating_avg": 3.9, "review_count": 15,
    },
    {
        "name": "シティホール大月",
        "slug": "city-hall-otsuki",
        "venue_type": "private_hall",
        "description": "大月市にある民間葬儀会館。安置施設を完備し、家族葬から一般葬まで対応可能。大月市・上野原市エリアの方にご利用いただいています。",
        "address": "山梨県大月市七保町下和田505",
        "prefecture_slug": "yamanashi", "city_slug": "otsuki",
        "latitude": 35.612, "longitude": 138.948,
        "nearest_station": "JR中央本線 大月駅", "station_walk_minutes": 15,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}],
        "features": ["家族葬対応", "駐車場完備", "バリアフリー"],
        "operator_name": "シティホール株式会社", "rating_avg": 3.8, "review_count": 12,
    },
    {
        "name": "アピオセレモニーホール舟山",
        "slug": "apio-funayama-nirasaki",
        "venue_type": "private_hall",
        "description": "韮崎市にあるアピオグループのセレモニーホール。韮崎市・北杜市エリアの方を中心にご利用いただいています。家族葬から一般葬まで対応し、山々に囲まれた自然豊かな環境が特長です。",
        "address": "山梨県韮崎市大草町若尾1303",
        "prefecture_slug": "yamanashi", "city_slug": "nirasaki",
        "latitude": 35.718, "longitude": 138.452,
        "nearest_station": "JR中央本線 韮崎駅", "station_walk_minutes": 15,
        "capacity_max": 60, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "株式会社アピオ", "rating_avg": 4.0, "review_count": 18,
    },
    {
        "name": "コーリングセレモニーホール璃宮庵",
        "slug": "calling-rikyuan-fuefuki",
        "venue_type": "private_hall",
        "description": "笛吹市石和町にあるコーリンググループのセレモニーホール。石和温泉で知られるエリアに位置し、家族葬から一般葬まで対応。温泉街ならではの落ち着いた雰囲気が特長です。",
        "address": "山梨県笛吹市石和町広瀬1374-150",
        "prefecture_slug": "yamanashi", "city_slug": "fuefuki",
        "latitude": 35.658, "longitude": 138.638,
        "nearest_station": "JR中央本線 石和温泉駅", "station_walk_minutes": 12,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "コーリンググループ", "rating_avg": 4.1, "review_count": 22,
    },
    {
        "name": "アピオセレモニーホール田富",
        "slug": "apio-tatomi-chuo",
        "venue_type": "private_hall",
        "description": "中央市にあるアピオグループのセレモニーホール。中央市・甲府市南部エリアの方にご利用いただいています。家族葬から一般葬まで幅広く対応し、充実した設備を備えた施設です。",
        "address": "山梨県中央市山之神2956-5",
        "prefecture_slug": "yamanashi", "city_slug": "chuo-yamanashi",
        "latitude": 35.598, "longitude": 138.538,
        "nearest_station": "JR身延線 東花輪駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社アピオ", "rating_avg": 4.1, "review_count": 20,
    },
    {
        "name": "三郡ホール",
        "slug": "sangun-hall-minami-alps",
        "venue_type": "private_hall",
        "description": "南アルプス市にある地域密着型の葬儀会館。南アルプスの麓に位置し、家族葬から一般葬まで対応。地域の皆様に長年親しまれている施設で、丁寧なサービスが好評です。",
        "address": "山梨県南アルプス市和泉984-1",
        "prefecture_slug": "yamanashi", "city_slug": "minami-alps",
        "latitude": 35.610, "longitude": 138.465,
        "nearest_station": "JR身延線 東花輪駅", "station_walk_minutes": 25,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
        "features": ["家族葬対応", "地域密着", "駐車場完備", "バリアフリー"],
        "operator_name": "三郡ホール株式会社", "rating_avg": 3.9, "review_count": 15,
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
    print(f"山梨県 追加分: 合計{total}件を投入開始")
    for i in range(0, total, BATCH_SIZE):
        batch = venues[i:i+BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        time.sleep(1)
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
