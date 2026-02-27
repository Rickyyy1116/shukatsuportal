#!/usr/bin/env python3
"""
石川県の斎場データ（追加分19件）をSupabase REST APIに投入するスクリプト
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
    # 金沢市 追加8件
    # =============================================
    {
        "name": "サンレー金沢紫雲閣",
        "slug": "sunray-kanazawa-shiunkan",
        "venue_type": "private_hall",
        "description": "サンレーが運営する金沢市の大型葬儀会館。JR金沢駅から徒歩5分と抜群のアクセス。大規模な一般葬から少人数の家族葬まで幅広く対応し、北陸地方で多数の実績を持つ施設です。",
        "address": "石川県金沢市広岡1-4-20",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.577, "longitude": 136.647,
        "nearest_station": "JR北陸新幹線 金沢駅", "station_walk_minutes": 5,
        "capacity_max": 150, "hall_count": 3, "has_crematorium": False, "parking_count": 80,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}],
        "features": ["駅近", "大規模葬対応", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社サンレー", "rating_avg": 4.3, "review_count": 42,
    },
    {
        "name": "家族葬のゆうか金沢藤江",
        "slug": "yuuka-kanazawa-fujie",
        "venue_type": "private_hall",
        "description": "「家族葬のゆうか」金沢藤江ホール。金沢駅からバス16分の立地。家族葬に特化した温かみのある空間で、少人数でのお別れに最適。1日1組完全貸切で、プライバシーが守られています。",
        "address": "石川県金沢市藤江北3-95-1",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.588, "longitude": 136.620,
        "nearest_station": "JR北陸本線 金沢駅", "station_walk_minutes": 25,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応", "バリアフリー"],
        "operator_name": "株式会社ゆうか", "rating_avg": 4.5, "review_count": 28,
    },
    {
        "name": "家族葬のゆうか金沢西念",
        "slug": "yuuka-kanazawa-sainen",
        "venue_type": "private_hall",
        "description": "金沢市西念にある「家族葬のゆうか」ホール。金沢駅から車で約6分のアクセス。家族葬に特化した設計で、リビングのような落ち着いた空間を提供しています。24時間対応可能です。",
        "address": "石川県金沢市西念4-11-14",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.575, "longitude": 136.640,
        "nearest_station": "JR北陸本線 金沢駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応"],
        "operator_name": "株式会社ゆうか", "rating_avg": 4.4, "review_count": 25,
    },
    {
        "name": "小さなお葬式 金沢寺地ホール",
        "slug": "chiisana-ososhiki-kanazawa-teraji",
        "venue_type": "private_hall",
        "description": "全国展開の「小さなお葬式」提携ホール。金沢市寺地に位置し、低価格ながら質の高いサービスを提供。火葬式から家族葬まで明朗会計のプランが揃い、追加料金なしの安心感が好評です。",
        "address": "石川県金沢市寺地1-178",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.555, "longitude": 136.625,
        "nearest_station": "北陸鉄道 押野駅", "station_walk_minutes": 18,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格", "明朗会計", "バリアフリー"],
        "operator_name": "株式会社ユニクエスト", "rating_avg": 4.0, "review_count": 15,
    },
    {
        "name": "小さなお葬式 金沢長土塀ホール",
        "slug": "chiisana-ososhiki-kanazawa-nagatsubei",
        "venue_type": "private_hall",
        "description": "金沢市長土塀にある「小さなお葬式」提携ホール。金沢駅から徒歩14分と中心部からアクセスが良い立地。少人数向けの温かみのある空間で、シンプルながら心のこもったお見送りができます。",
        "address": "石川県金沢市長土塀1-16-7",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.572, "longitude": 136.652,
        "nearest_station": "JR北陸本線 金沢駅", "station_walk_minutes": 14,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 10,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["駅近", "家族葬対応", "低価格", "明朗会計"],
        "operator_name": "株式会社ユニクエスト", "rating_avg": 3.9, "review_count": 12,
    },
    {
        "name": "金沢市営斎場",
        "slug": "kanazawa-shiei-saijo",
        "venue_type": "public_crematorium",
        "description": "金沢市が運営する公営の火葬場。金沢市民は火葬料の優遇措置があります。式場は併設されていませんが、火葬式の利用が可能です。静かな環境の中で故人をお見送りできる施設です。",
        "address": "石川県金沢市大桑町平10",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.540, "longitude": 136.650,
        "nearest_station": "北陸鉄道 野町駅", "station_walk_minutes": 25,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 30,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "金沢市", "rating_avg": 3.7, "review_count": 25,
    },
    {
        "name": "セレモニーホール金沢東",
        "slug": "ceremony-hall-kanazawa-higashi",
        "venue_type": "private_hall",
        "description": "金沢市東部にある総合葬儀会館。東金沢駅からのアクセスが良く、家族葬から大規模な一般葬まで幅広く対応。充実した設備と丁寧なスタッフの対応が評判の施設です。",
        "address": "石川県金沢市神宮寺1-16-23",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.585, "longitude": 136.678,
        "nearest_station": "JR北陸本線 東金沢駅", "station_walk_minutes": 15,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 555000}],
        "features": ["家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "金沢セレモニー株式会社", "rating_avg": 4.1, "review_count": 25,
    },
    {
        "name": "家族葬のゆうか新神田入江",
        "slug": "yuuka-kanazawa-shinkanda",
        "venue_type": "private_hall",
        "description": "金沢市入江にある「家族葬のゆうか」ホール。西金沢駅からバス22分の立地。家族葬専用の落ち着いた空間で、少人数でゆっくりとお別れの時間を過ごせます。安置室も完備。",
        "address": "石川県金沢市入江1-136",
        "prefecture_slug": "ishikawa", "city_slug": "kanazawa",
        "latitude": 36.560, "longitude": 136.630,
        "nearest_station": "JR北陸本線 西金沢駅", "station_walk_minutes": 25,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応"],
        "operator_name": "株式会社ゆうか", "rating_avg": 4.3, "review_count": 20,
    },

    # =============================================
    # 小松市 追加3件
    # =============================================
    {
        "name": "小松加賀斎場さざなみ",
        "slug": "komatsu-kaga-saijo-sazanami",
        "venue_type": "public_crematorium",
        "description": "小松市と加賀市が共同で運営する公営斎場。JR粟津駅からタクシー13分の立地。火葬施設と式場を備え、通夜から火葬まで一貫して対応可能。広い敷地と充実した設備が特長です。",
        "address": "石川県小松市波佐谷町カ54",
        "prefecture_slug": "ishikawa", "city_slug": "komatsu",
        "latitude": 36.370, "longitude": 136.435,
        "nearest_station": "JR北陸本線 粟津駅", "station_walk_minutes": 25,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "小松加賀広域事務組合", "rating_avg": 3.8, "review_count": 28,
    },
    {
        "name": "サンレー小松紫雲閣",
        "slug": "sunray-komatsu-shiunkan",
        "venue_type": "private_hall",
        "description": "サンレーが運営する小松市の葬儀会館。JR小松駅から車で約3分の好立地。北陸地方で多数の式場を展開するサンレーの施設で、家族葬から一般葬まで幅広く対応しています。",
        "address": "石川県小松市城南町134",
        "prefecture_slug": "ishikawa", "city_slug": "komatsu",
        "latitude": 36.399, "longitude": 136.448,
        "nearest_station": "JR北陸本線 小松駅", "station_walk_minutes": 8,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社サンレー", "rating_avg": 4.2, "review_count": 22,
    },
    {
        "name": "家族葬のゆうか小松",
        "slug": "yuuka-komatsu",
        "venue_type": "private_hall",
        "description": "小松市にある「家族葬のゆうか」ホール。家族葬に特化した空間で、少人数でのお別れに最適。24時間対応可能で、急なご依頼にも丁寧に対応します。",
        "address": "石川県小松市今江町7-520",
        "prefecture_slug": "ishikawa", "city_slug": "komatsu",
        "latitude": 36.388, "longitude": 136.460,
        "nearest_station": "JR北陸本線 小松駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応"],
        "operator_name": "株式会社ゆうか", "rating_avg": 4.3, "review_count": 18,
    },

    # =============================================
    # 白山市 追加2件
    # =============================================
    {
        "name": "サンレー松任紫雲閣",
        "slug": "sunray-matto-shiunkan",
        "venue_type": "private_hall",
        "description": "サンレーが運営する白山市（旧松任市）の葬儀会館。JR松任駅から車で約5分のアクセス。家族葬から一般葬まで対応し、地域に根ざしたサービスを提供。落ち着いた雰囲気の館内が好評です。",
        "address": "石川県白山市五歩市町404",
        "prefecture_slug": "ishikawa", "city_slug": "hakusan",
        "latitude": 36.528, "longitude": 136.570,
        "nearest_station": "JR北陸本線 松任駅", "station_walk_minutes": 12,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "株式会社サンレー", "rating_avg": 4.1, "review_count": 22,
    },
    {
        "name": "白山市斎場",
        "slug": "hakusan-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "白山市が運営する公営斎場。白山の麓に位置し、自然に囲まれた静かな環境で故人をお見送りできます。白山市民は火葬料の優遇があり、広い駐車場を完備しています。",
        "address": "石川県白山市鶴来大国町ロ97",
        "prefecture_slug": "ishikawa", "city_slug": "hakusan",
        "latitude": 36.480, "longitude": 136.598,
        "nearest_station": "北陸鉄道 鶴来駅", "station_walk_minutes": 15,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": True, "parking_count": 35,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "白山市", "rating_avg": 3.7, "review_count": 18,
    },

    # =============================================
    # その他石川県の市 追加6件
    # =============================================
    {
        "name": "ななか斎場",
        "slug": "nanaka-saijo-nanao",
        "venue_type": "public_crematorium",
        "description": "七尾鹿島広域圏事務組合が運営する公営斎場。JR七尾線徳田駅からタクシー4分のアクセス。七尾市・中能登町の住民が利用可能。火葬施設と式場を備え、通夜から火葬まで一貫して対応できます。",
        "address": "石川県七尾市田鶴浜町ち1-6",
        "prefecture_slug": "ishikawa", "city_slug": "nanao",
        "latitude": 36.975, "longitude": 136.910,
        "nearest_station": "JR七尾線 徳田駅", "station_walk_minutes": 10,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": True, "parking_count": 50,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True, "僧侶控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 495000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "家族葬対応", "バリアフリー"],
        "operator_name": "七尾鹿島広域圏事務組合", "rating_avg": 3.8, "review_count": 22,
    },
    {
        "name": "サンレー七尾紫雲閣",
        "slug": "sunray-nanao-shiunkan",
        "venue_type": "private_hall",
        "description": "サンレーが運営する七尾市の葬儀会館。七尾市中心部に位置し、家族葬から一般葬まで対応。能登半島の玄関口として、地域の皆様に親しまれている施設です。",
        "address": "石川県七尾市藤橋町丑58-1",
        "prefecture_slug": "ishikawa", "city_slug": "nanao",
        "latitude": 36.960, "longitude": 136.968,
        "nearest_station": "JR七尾線 七尾駅", "station_walk_minutes": 12,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社サンレー", "rating_avg": 4.0, "review_count": 20,
    },
    {
        "name": "輪島市斎場",
        "slug": "wajima-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "輪島市が運営する公営斎場。輪島塗の街として知られる輪島市に位置し、能登の伝統を感じる静かな環境です。輪島市民は火葬料の優遇があります。",
        "address": "石川県輪島市山岸町ヘ62",
        "prefecture_slug": "ishikawa", "city_slug": "wajima",
        "latitude": 37.390, "longitude": 136.900,
        "nearest_station": "のと鉄道 穴水駅（バス）", "station_walk_minutes": 40,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "輪島市", "rating_avg": 3.5, "review_count": 10,
    },
    {
        "name": "珠洲市斎場",
        "slug": "suzu-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "珠洲市が運営する公営斎場。能登半島の先端に位置する珠洲市にあり、自然に囲まれた穏やかな環境です。珠洲市民は火葬料の優遇措置があります。",
        "address": "石川県珠洲市上戸町北方ア4-1",
        "prefecture_slug": "ishikawa", "city_slug": "suzu",
        "latitude": 37.435, "longitude": 137.260,
        "nearest_station": "珠洲市内（バス利用）", "station_walk_minutes": 30,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "珠洲市", "rating_avg": 3.5, "review_count": 6,
    },
    {
        "name": "家族葬のゆうか野々市押野",
        "slug": "yuuka-nonoichi-oshino",
        "venue_type": "private_hall",
        "description": "野々市市にある「家族葬のゆうか」ホール。野々市駅から徒歩10分の好立地。金沢市に隣接する野々市市で、家族葬に特化したサービスを提供しています。24時間対応可能です。",
        "address": "石川県野々市市押野2-248",
        "prefecture_slug": "ishikawa", "city_slug": "nonoichi",
        "latitude": 36.535, "longitude": 136.615,
        "nearest_station": "北陸鉄道 野々市駅", "station_walk_minutes": 10,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}],
        "features": ["家族葬専用", "1日1組貸切", "駅近", "24時間対応"],
        "operator_name": "株式会社ゆうか", "rating_avg": 4.4, "review_count": 22,
    },
    {
        "name": "サンレー加賀紫雲閣",
        "slug": "sunray-kaga-shiunkan",
        "venue_type": "private_hall",
        "description": "サンレーが運営する加賀市の葬儀会館。温泉と伝統工芸の街・加賀市で、家族葬から一般葬まで対応。落ち着いた雰囲気の中で、心のこもったお見送りをサポートします。",
        "address": "石川県加賀市大聖寺敷地ル41-1",
        "prefecture_slug": "ishikawa", "city_slug": "kaga",
        "latitude": 36.302, "longitude": 136.315,
        "nearest_station": "JR北陸本線 大聖寺駅", "station_walk_minutes": 10,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 35,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "株式会社サンレー", "rating_avg": 4.0, "review_count": 18,
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
    print(f"石川県 追加分: 合計{total}件を投入開始")
    for i in range(0, total, BATCH_SIZE):
        batch = venues[i:i+BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        time.sleep(1)
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
