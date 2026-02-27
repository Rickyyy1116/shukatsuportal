#!/usr/bin/env python3
"""
富山県の斎場データ（追加分19件）をSupabase REST APIに投入するスクリプト
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
    # 富山市 追加8件
    # =============================================
    {
        "name": "富山市北部斎場",
        "slug": "toyama-hokubu-saijo",
        "venue_type": "public_crematorium",
        "description": "富山市が運営する公営斎場。競輪場前駅から徒歩6分と交通アクセスに優れています。火葬施設を備え、富山市民は火葬料の優遇があります。海沿いの静かな環境に位置しています。",
        "address": "富山県富山市岩瀬池田町71",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.728, "longitude": 137.225,
        "nearest_station": "富山地鉄 競輪場前駅", "station_walk_minutes": 6,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["火葬場併設", "公営斎場", "駅近", "駐車場完備", "バリアフリー"],
        "operator_name": "富山市", "rating_avg": 3.9, "review_count": 38,
    },
    {
        "name": "ティア富山天正寺",
        "slug": "tear-toyama-tenshoji",
        "venue_type": "private_hall",
        "description": "全国展開の葬儀社ティアが運営する富山市の葬儀会館。家族葬から一般葬まで明朗会計のプランを提供。温かみのある館内で、ご遺族に寄り添ったサービスが好評です。24時間365日対応しています。",
        "address": "富山県富山市天正寺501-1",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.680, "longitude": 137.195,
        "nearest_station": "富山地鉄 不二越駅", "station_walk_minutes": 12,
        "capacity_max": 60, "hall_count": 2, "has_crematorium": False, "parking_count": 30,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["家族葬対応", "24時間対応", "明朗会計", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社ティア", "rating_avg": 4.3, "review_count": 30,
    },
    {
        "name": "ティア富山大泉",
        "slug": "tear-toyama-oizumi",
        "venue_type": "private_hall",
        "description": "ティアが運営する富山市大泉の葬儀会館。富山駅から車で約10分のアクセス。少人数の家族葬に特化した設計で、1日1組完全貸切。プライバシーが守られた空間で、ゆっくりとお別れの時間を過ごせます。",
        "address": "富山県富山市大泉中町8-12",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.688, "longitude": 137.200,
        "nearest_station": "富山地鉄 大泉駅", "station_walk_minutes": 5,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}],
        "features": ["家族葬専用", "1日1組貸切", "駅近", "24時間対応", "バリアフリー"],
        "operator_name": "株式会社ティア", "rating_avg": 4.4, "review_count": 25,
    },
    {
        "name": "オークスセレモニーホール富山",
        "slug": "oarks-ceremony-hall-toyama",
        "venue_type": "private_hall",
        "description": "オークス株式会社が運営する富山市の大型セレモニーホール。富山県内で多数の式場を展開する地域最大手の一つ。大ホールと家族葬専用ホールを備え、あらゆる規模の葬儀に対応可能です。",
        "address": "富山県富山市新庄町3-5-28",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.705, "longitude": 137.223,
        "nearest_station": "富山地鉄 東新庄駅", "station_walk_minutes": 8,
        "capacity_max": 120, "hall_count": 3, "has_crematorium": False, "parking_count": 70,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}],
        "features": ["大規模葬対応", "家族葬対応", "駅近", "宿泊可能", "駐車場完備"],
        "operator_name": "オークス株式会社", "rating_avg": 4.2, "review_count": 35,
    },
    {
        "name": "セレモニーホール富山南",
        "slug": "ceremony-hall-toyama-minami",
        "venue_type": "private_hall",
        "description": "富山市南部に位置する葬儀会館。南富山駅からのアクセスが良好です。家族葬から一般葬まで対応し、落ち着いた雰囲気の中で心を込めたお見送りができます。バリアフリー設計で車椅子の方も安心です。",
        "address": "富山県富山市堀川町345-1",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.675, "longitude": 137.205,
        "nearest_station": "富山地鉄 南富山駅", "station_walk_minutes": 10,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "富山セレモニー株式会社", "rating_avg": 4.0, "review_count": 22,
    },
    {
        "name": "家族葬のファミーユ富山",
        "slug": "familyu-toyama",
        "venue_type": "private_hall",
        "description": "「家族葬のファミーユ」ブランドの富山市内ホール。家族葬に特化し、少人数でのお別れに最適な空間を提供。リビングルームのような温かい内装で、ご遺族がゆっくり過ごせます。24時間対応。",
        "address": "富山県富山市掛尾町500-8",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.680, "longitude": 137.185,
        "nearest_station": "JR高山本線 富山駅", "station_walk_minutes": 20,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応", "バリアフリー"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.3, "review_count": 20,
    },
    {
        "name": "小さなお葬式 富山ホール",
        "slug": "chiisana-ososhiki-toyama",
        "venue_type": "private_hall",
        "description": "全国展開の「小さなお葬式」提携ホール。富山市中心部に位置し、低価格ながら質の高いサービスを提供。追加料金なしの明朗会計プランが好評で、火葬式から家族葬まで対応しています。",
        "address": "富山県富山市中央通り1-8-25",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.695, "longitude": 137.210,
        "nearest_station": "JR北陸本線 富山駅", "station_walk_minutes": 10,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["駅近", "家族葬対応", "低価格", "明朗会計"],
        "operator_name": "株式会社ユニクエスト", "rating_avg": 4.0, "review_count": 15,
    },
    {
        "name": "ティア富山下奥井",
        "slug": "tear-toyama-shimookui",
        "venue_type": "private_hall",
        "description": "ティアが運営する富山市下奥井の葬儀会館。富山駅北部エリアに位置し、家族葬を中心にサービスを展開。明朗会計と丁寧な対応が特長で、ご遺族の負担を軽減するプランを提供しています。",
        "address": "富山県富山市下奥井1-16-8",
        "prefecture_slug": "toyama", "city_slug": "toyama-city",
        "latitude": 36.710, "longitude": 137.225,
        "nearest_station": "富山地鉄 下奥井駅", "station_walk_minutes": 5,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}],
        "features": ["家族葬対応", "駅近", "24時間対応", "明朗会計"],
        "operator_name": "株式会社ティア", "rating_avg": 4.2, "review_count": 18,
    },

    # =============================================
    # 高岡市 追加5件
    # =============================================
    {
        "name": "高岡斎場",
        "slug": "takaoka-saijo",
        "venue_type": "public_crematorium",
        "description": "高岡市が運営する公営斎場。式場と火葬施設を同一敷地内に備え、通夜から火葬まで一貫して対応可能。高岡市民は火葬料が優遇されます。広い駐車場を完備し、大規模な葬儀にも対応できます。",
        "address": "富山県高岡市戸出春日356",
        "prefecture_slug": "toyama", "city_slug": "takaoka",
        "latitude": 36.696, "longitude": 137.005,
        "nearest_station": "JR城端線 戸出駅", "station_walk_minutes": 15,
        "capacity_max": 100, "hall_count": 2, "has_crematorium": True, "parking_count": 60,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 495000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "高岡市", "rating_avg": 3.8, "review_count": 32,
    },
    {
        "name": "オークスセレモニーホール高岡",
        "slug": "oarks-ceremony-hall-takaoka",
        "venue_type": "private_hall",
        "description": "オークス株式会社が運営する高岡市の総合葬儀会館。高岡大仏にほど近い市街地に位置し、大規模な一般葬から家族葬まで幅広く対応。地域密着型のきめ細かいサービスが評判です。",
        "address": "富山県高岡市大手町11-30",
        "prefecture_slug": "toyama", "city_slug": "takaoka",
        "latitude": 36.746, "longitude": 137.022,
        "nearest_station": "あいの風とやま鉄道 高岡駅", "station_walk_minutes": 10,
        "capacity_max": 100, "hall_count": 3, "has_crematorium": False, "parking_count": 50,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}],
        "features": ["駅近", "大規模葬対応", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "オークス株式会社", "rating_avg": 4.1, "review_count": 28,
    },
    {
        "name": "ティア高岡",
        "slug": "tear-takaoka",
        "venue_type": "private_hall",
        "description": "ティアが運営する高岡市の葬儀会館。家族葬に特化した温かみのある空間で、少人数でゆっくりとお別れの時間を過ごせます。明朗会計の料金体系と丁寧なスタッフ対応が好評です。",
        "address": "富山県高岡市横田町3-1-15",
        "prefecture_slug": "toyama", "city_slug": "takaoka",
        "latitude": 36.740, "longitude": 137.018,
        "nearest_station": "あいの風とやま鉄道 高岡駅", "station_walk_minutes": 12,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": False, "parking_count": 25,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}],
        "features": ["家族葬対応", "24時間対応", "明朗会計", "バリアフリー"],
        "operator_name": "株式会社ティア", "rating_avg": 4.3, "review_count": 22,
    },
    {
        "name": "家族葬のファミーユ高岡",
        "slug": "familyu-takaoka",
        "venue_type": "private_hall",
        "description": "「家族葬のファミーユ」高岡ホール。少人数でのお別れに特化し、リビング感覚の温かい空間を提供。1日1組完全貸切で、プライバシーを重視した設計が特長です。",
        "address": "富山県高岡市中川上町9-50",
        "prefecture_slug": "toyama", "city_slug": "takaoka",
        "latitude": 36.748, "longitude": 137.030,
        "nearest_station": "JR氷見線 越中中川駅", "station_walk_minutes": 5,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["家族葬専用", "1日1組貸切", "駅近", "24時間対応"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.4, "review_count": 18,
    },
    {
        "name": "セレモニーホール高岡南",
        "slug": "ceremony-hall-takaoka-minami",
        "venue_type": "private_hall",
        "description": "高岡市南部に位置する葬儀会館。新高岡駅からのアクセスが良好で、北陸新幹線利用の遠方からの参列にも便利。家族葬から大規模葬まで対応し、広い駐車場を完備しています。",
        "address": "富山県高岡市京田537-1",
        "prefecture_slug": "toyama", "city_slug": "takaoka",
        "latitude": 36.720, "longitude": 137.010,
        "nearest_station": "JR北陸新幹線 新高岡駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "高岡セレモニー株式会社", "rating_avg": 4.0, "review_count": 20,
    },

    # =============================================
    # その他富山県の市 追加6件
    # =============================================
    {
        "name": "新川広域圏東部斎場",
        "slug": "shinkawa-tobu-saijo",
        "venue_type": "public_crematorium",
        "description": "新川広域圏事務組合が運営する公営斎場。魚津市・黒部市・入善町・朝日町の住民が利用可能。火葬施設を備え、広域圏内住民は火葬料が優遇されます。",
        "address": "富山県下新川郡朝日町三枚橋2354",
        "prefecture_slug": "toyama", "city_slug": "uozu",
        "latitude": 36.920, "longitude": 137.545,
        "nearest_station": "あいの風とやま鉄道 泊駅", "station_walk_minutes": 20,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": True, "parking_count": 30,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "新川広域圏事務組合", "rating_avg": 3.7, "review_count": 18,
    },
    {
        "name": "氷見斎場",
        "slug": "himi-saijo",
        "venue_type": "public_crematorium",
        "description": "氷見市が運営する公営斎場。能登半島を望む静かな環境に位置し、火葬施設を備えています。氷見市民は火葬料の優遇があります。漁港の街・氷見らしい穏やかな雰囲気の施設です。",
        "address": "富山県氷見市北八代東原118",
        "prefecture_slug": "toyama", "city_slug": "himi",
        "latitude": 36.863, "longitude": 136.979,
        "nearest_station": "JR氷見線 氷見駅", "station_walk_minutes": 20,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "氷見市", "rating_avg": 3.5, "review_count": 12,
    },
    {
        "name": "滑川市火葬場",
        "slug": "namerikawa-kasoba",
        "venue_type": "public_crematorium",
        "description": "滑川市が運営する公営火葬場。中滑川駅から徒歩9分と交通アクセスに優れています。コンパクトながら必要な設備を備え、滑川市民は火葬料の優遇措置があります。",
        "address": "富山県滑川市下島639",
        "prefecture_slug": "toyama", "city_slug": "namerikawa",
        "latitude": 36.763, "longitude": 137.340,
        "nearest_station": "富山地鉄 中滑川駅", "station_walk_minutes": 9,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場", "駅近"],
        "operator_name": "滑川市", "rating_avg": 3.5, "review_count": 10,
    },
    {
        "name": "砺波市斎場",
        "slug": "tonami-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "砺波市が運営する公営斎場。チューリップで有名な砺波平野の静かな環境に位置し、火葬施設を備えています。砺波市民は火葬料の優遇があります。",
        "address": "富山県砺波市徳万52-1",
        "prefecture_slug": "toyama", "city_slug": "tonami",
        "latitude": 36.628, "longitude": 136.955,
        "nearest_station": "JR城端線 砺波駅", "station_walk_minutes": 25,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True, "バリアフリー": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}],
        "features": ["火葬場併設", "公営斎場", "バリアフリー"],
        "operator_name": "砺波市", "rating_avg": 3.6, "review_count": 12,
    },
    {
        "name": "小矢部市斎場",
        "slug": "oyabe-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "小矢部市が運営する公営斎場。石動駅から車で約12分の立地。小矢部市民は火葬料の優遇があります。メルヘンの街として知られる小矢部市の静かな環境にある施設です。",
        "address": "富山県小矢部市田川字城ケ嶺15",
        "prefecture_slug": "toyama", "city_slug": "oyabe",
        "latitude": 36.670, "longitude": 136.870,
        "nearest_station": "あいの風とやま鉄道 石動駅", "station_walk_minutes": 25,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "小矢部市", "rating_avg": 3.5, "review_count": 8,
    },
    {
        "name": "黒部市斎場",
        "slug": "kurobe-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "黒部市が運営する公営火葬場。黒部峡谷の玄関口として知られる黒部市にあり、静かな環境で故人をお見送りできます。黒部市民は火葬料の優遇措置があります。",
        "address": "富山県黒部市宇奈月町内山3647",
        "prefecture_slug": "toyama", "city_slug": "kurobe",
        "latitude": 36.820, "longitude": 137.448,
        "nearest_station": "富山地鉄 宇奈月温泉駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "黒部市", "rating_avg": 3.5, "review_count": 8,
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
    print(f"富山県 追加分: 合計{total}件を投入開始")
    for i in range(0, total, BATCH_SIZE):
        batch = venues[i:i+BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        time.sleep(1)
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
