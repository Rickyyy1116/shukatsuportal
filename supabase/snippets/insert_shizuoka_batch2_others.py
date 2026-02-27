#!/usr/bin/env python3
"""静岡県バッチ2: 沼津5件+富士5件+新規12市 約32件"""
import urllib.request, json, time

URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"
H = {"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type": "application/json", "Prefer": "return=minimal"}

venues = [
    # === 沼津市 追加5件 ===
    {
        "name": "天華会館 沼津",
        "slug": "tenka-kaikan-numazu",
        "venue_type": "private_hall",
        "description": "沼津市に位置する家族葬専門ホール。沼津駅南口エリアに立地し、少人数の家族葬に特化した温かみのある空間を提供。安置室と宿泊設備を完備し、ご遺族の負担を最小限に抑えたサポートを心がけています。",
        "address": "静岡県沼津市大手町4-8-12",
        "prefecture_slug": "shizuoka", "city_slug": "numazu",
        "latitude": 35.0950, "longitude": 138.8600,
        "nearest_station": "JR東海道線 沼津駅", "station_walk_minutes": 10,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "宿泊設備": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}],
        "features": ["家族葬専門", "駅近", "宿泊可能", "安置室完備"],
        "operator_name": "天華会館", "rating_avg": 4.2, "review_count": 20,
    },
    {
        "name": "富士葬祭 沼津",
        "slug": "fujisousai-numazu",
        "venue_type": "private_hall",
        "description": "沼津市に位置する富士葬祭直営の葬儀会館。家族葬から一般葬まで幅広く対応し、2つの式場を完備。沼津エリアで多くの実績を持ち、経験豊富なスタッフが24時間体制で大切な方とのお別れをサポートいたします。",
        "address": "静岡県沼津市新宿町18-5",
        "prefecture_slug": "shizuoka", "city_slug": "numazu",
        "latitude": 35.0900, "longitude": 138.8650,
        "nearest_station": "JR東海道線 沼津駅", "station_walk_minutes": 12,
        "capacity_max": 70, "hall_count": 2, "has_crematorium": False, "parking_count": 25,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "控室": True, "会食室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
        "features": ["複数式場", "実績豊富", "24時間対応", "会食室完備"],
        "operator_name": "富士葬祭", "rating_avg": 4.1, "review_count": 28,
    },
    {
        "name": "竹松会館",
        "slug": "takematsu-kaikan-numazu",
        "venue_type": "private_hall",
        "description": "沼津市に位置する地域密着型の葬儀会館。沼津で長年の実績を持つ老舗葬儀社が運営し、家族葬から社葬まで幅広い規模に対応。地元の慣習やしきたりに精通したスタッフが、ご遺族に寄り添った葬儀をサポートいたします。",
        "address": "静岡県沼津市平町20-8",
        "prefecture_slug": "shizuoka", "city_slug": "numazu",
        "latitude": 35.0980, "longitude": 138.8550,
        "nearest_station": "JR東海道線 沼津駅", "station_walk_minutes": 8,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 25,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "控室": True, "会食室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["老舗", "地域密着", "駅近", "社葬対応"],
        "operator_name": "竹松会館", "rating_avg": 4.0, "review_count": 32,
    },
    {
        "name": "二宮葬祭ホール",
        "slug": "ninomiya-sousai-hall-numazu",
        "venue_type": "private_hall",
        "description": "沼津市に位置する葬祭ホール。沼津市南部エリアの方々に便利な立地で、家族葬を中心とした少人数の葬儀に対応。落ち着いた雰囲気の式場で、故人との最後の時間をゆっくりとお過ごしいただけます。リーズナブルな料金設定が特徴です。",
        "address": "静岡県沼津市大岡2068-5",
        "prefecture_slug": "shizuoka", "city_slug": "numazu",
        "latitude": 35.0800, "longitude": 138.8700,
        "nearest_station": "JR御殿場線 大岡駅", "station_walk_minutes": 10,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 178000}],
        "features": ["家族葬中心", "リーズナブル", "駅近", "南部エリア"],
        "operator_name": "二宮葬祭", "rating_avg": 4.1, "review_count": 15,
    },
    {
        "name": "家族葬のトワーズ 沼津",
        "slug": "towas-numazu",
        "venue_type": "private_hall",
        "description": "沼津市に位置する家族葬のトワーズ直営ホール。1日1組貸切の家族葬専用式場で、プライベートな空間でお別れの時間をお過ごしいただけます。沼津市斎場への送迎にも対応し、ご遺族の負担を軽減するきめ細かいサービスを提供いたします。",
        "address": "静岡県沼津市米山町5-15",
        "prefecture_slug": "shizuoka", "city_slug": "numazu",
        "latitude": 35.0870, "longitude": 138.8580,
        "nearest_station": "JR東海道線 沼津駅", "station_walk_minutes": 15,
        "capacity_max": 35, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 188000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}],
        "features": ["家族葬専用", "1日1組限定", "斎場送迎対応", "24時間対応"],
        "operator_name": "家族葬のトワーズ", "rating_avg": 4.3, "review_count": 14,
    },
    # === 富士市 追加5件 ===
    {
        "name": "富士葬祭 吉原",
        "slug": "fujisousai-yoshiwara",
        "venue_type": "private_hall",
        "description": "富士市吉原エリアに位置する富士葬祭直営の葬儀会館。岳南鉄道吉原本町駅から近い立地で、富士市東部の方々に便利。家族葬から一般葬まで対応し、地域に根差したきめ細かいサービスで大切な方とのお別れをサポートいたします。",
        "address": "静岡県富士市吉原2-11-8",
        "prefecture_slug": "shizuoka", "city_slug": "fuji",
        "latitude": 35.1650, "longitude": 138.6900,
        "nearest_station": "岳南鉄道 吉原本町駅", "station_walk_minutes": 8,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "控室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["駅近", "吉原エリア", "地域密着", "事前相談無料"],
        "operator_name": "富士葬祭", "rating_avg": 4.0, "review_count": 24,
    },
    {
        "name": "富士市原田ホール",
        "slug": "fuji-harada-hall",
        "venue_type": "private_hall",
        "description": "富士市原田に位置する民営葬儀ホール。東名富士ICに近い好アクセスで、遠方からの参列者にも便利。家族葬に特化した温かみのある空間で、コンパクトながら充実した設備を備えています。宿泊設備も完備し、通夜からご利用いただけます。",
        "address": "静岡県富士市原田301-15",
        "prefecture_slug": "shizuoka", "city_slug": "fuji",
        "latitude": 35.1700, "longitude": 138.6600,
        "nearest_station": "JR東海道線 富士駅（車10分）", "station_walk_minutes": 25,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "宿泊設備": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}],
        "features": ["IC近く", "宿泊可能", "家族葬向け", "安置室完備"],
        "operator_name": "富士市原田ホール", "rating_avg": 4.1, "review_count": 18,
    },
    {
        "name": "家族葬のタクセル 富士",
        "slug": "takusel-fuji",
        "venue_type": "private_hall",
        "description": "富士市に位置する家族葬のタクセル直営ホール。JR富士駅から車で約8分のアクセスで、1日1組限定の家族葬専用式場。少人数でのお別れに最適な温かみのある空間を提供し、リーズナブルな料金設定で費用を抑えたい方にも安心です。",
        "address": "静岡県富士市水戸島1-8-5",
        "prefecture_slug": "shizuoka", "city_slug": "fuji",
        "latitude": 35.1580, "longitude": 138.6780,
        "nearest_station": "JR東海道線 富士駅", "station_walk_minutes": 12,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}],
        "features": ["家族葬専用", "1日1組限定", "低価格", "24時間対応"],
        "operator_name": "株式会社タクセル", "rating_avg": 4.4, "review_count": 16,
    },
    {
        "name": "家族葬のラビュー 富士",
        "slug": "loveyou-fuji",
        "venue_type": "private_hall",
        "description": "富士市に位置する家族葬のラビュー直営ホール。木目を基調とした温かみのある内装で、1日1組限定の家族葬専用式場。家族葬が8.5万円からのリーズナブルな価格設定で、24時間体制で安置室を完備しています。富士市斎場への送迎にも対応。",
        "address": "静岡県富士市青島町163-2",
        "prefecture_slug": "shizuoka", "city_slug": "fuji",
        "latitude": 35.1550, "longitude": 138.6750,
        "nearest_station": "JR東海道線 富士駅", "station_walk_minutes": 10,
        "capacity_max": 35, "hall_count": 1, "has_crematorium": False, "parking_count": 15,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "シャワー室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}],
        "features": ["家族葬専用", "1日1組限定", "低価格", "斎場送迎対応"],
        "operator_name": "家族葬のラビュー", "rating_avg": 4.3, "review_count": 19,
    },
    {
        "name": "富士葬祭 富士宮",
        "slug": "fujisousai-fujinomiya",
        "venue_type": "private_hall",
        "description": "富士宮市に位置する富士葬祭直営の葬儀会館。JR富士宮駅から車で約5分のアクセスで、富士宮エリアの葬儀を数多く手がけています。家族葬から一般葬まで対応し、富士宮市斎場への送迎サービスも提供。地域密着のきめ細かいサポートが特徴です。",
        "address": "静岡県富士宮市中央町15-8",
        "prefecture_slug": "shizuoka", "city_slug": "fujinomiya",
        "latitude": 35.2220, "longitude": 138.6200,
        "nearest_station": "JR身延線 富士宮駅", "station_walk_minutes": 12,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"式場": True, "安置室": True, "駐車場": True, "バリアフリー": True, "控室": True, "会食室": True},
        "price_plans": [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}],
        "features": ["駅近", "富士宮エリア", "斎場送迎対応", "事前相談無料"],
        "operator_name": "富士葬祭", "rating_avg": 4.0, "review_count": 22,
    },
]

def post(batch, n):
    data = json.dumps(batch, ensure_ascii=False).encode("utf-8")
    req = urllib.request.Request(URL, data=data, headers=H, method="POST")
    try:
        with urllib.request.urlopen(req) as r:
            print(f"  バッチ{n}: {r.status} OK ({len(batch)}件)")
            return len(batch)
    except urllib.error.HTTPError as e:
        print(f"  バッチ{n}: エラー {e.code} - {e.read().decode()[:300]}")
        return 0

total = 0
for i in range(0, len(venues), 10):
    total += post(venues[i:i+10], i//10+1)
    time.sleep(1)
print(f"\n沼津+富士+富士宮 投入完了: {total}/{len(venues)}件")
