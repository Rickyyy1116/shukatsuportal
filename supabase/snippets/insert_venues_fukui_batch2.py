#!/usr/bin/env python3
"""
福井県の斎場データ（追加分14件）をSupabase REST APIに投入するスクリプト
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
    # 福井市 追加5件
    # =============================================
    {
        "name": "福井市斎場",
        "slug": "fukui-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "福井市が運営する公営の火葬場。福井市民は火葬料の優遇措置があります。市街地から車で約15分のアクセスで、静かな環境の中で故人をお見送りできます。待合室も完備しています。",
        "address": "福井県福井市西谷1-1020",
        "prefecture_slug": "fukui", "city_slug": "fukui-city",
        "latitude": 36.065, "longitude": 136.198,
        "nearest_station": "JR北陸本線 福井駅", "station_walk_minutes": 30,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": True, "parking_count": 40,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "福井市", "rating_avg": 3.7, "review_count": 25,
    },
    {
        "name": "セレモニー福井ホール",
        "slug": "ceremony-fukui-hall",
        "venue_type": "private_hall",
        "description": "福井市高木中央にある総合葬儀会館。福井市中心部からのアクセスが良好で、大規模な一般葬から少人数の家族葬まで幅広く対応。福井県内で長年の実績を持つ地域密着型の施設です。",
        "address": "福井県福井市高木中央3-501",
        "prefecture_slug": "fukui", "city_slug": "fukui-city",
        "latitude": 36.050, "longitude": 136.225,
        "nearest_station": "福井鉄道 花堂駅", "station_walk_minutes": 12,
        "capacity_max": 100, "hall_count": 3, "has_crematorium": False, "parking_count": 60,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True, "エレベーター": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}],
        "features": ["大規模葬対応", "家族葬対応", "宿泊可能", "駐車場完備", "バリアフリー"],
        "operator_name": "株式会社セレモニー福井", "rating_avg": 4.2, "review_count": 30,
    },
    {
        "name": "ホームセレモニー福井",
        "slug": "home-ceremony-fukui",
        "venue_type": "private_hall",
        "description": "福井市にある家族葬向けの葬儀ホール。「自宅のような温かさ」をコンセプトに、少人数でゆっくりとお別れの時間を過ごせる空間を提供。地域に根ざしたきめ細かいサービスが評判です。",
        "address": "福井県福井市問屋町3-815",
        "prefecture_slug": "fukui", "city_slug": "fukui-city",
        "latitude": 36.058, "longitude": 136.215,
        "nearest_station": "JR北陸本線 福井駅", "station_walk_minutes": 15,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": False, "parking_count": 20,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}],
        "features": ["家族葬対応", "24時間対応", "地域密着", "バリアフリー"],
        "operator_name": "有限会社ホームセレモニー", "rating_avg": 4.3, "review_count": 22,
    },
    {
        "name": "小さなお葬式 福井ホール",
        "slug": "chiisana-ososhiki-fukui",
        "venue_type": "private_hall",
        "description": "全国展開の「小さなお葬式」提携ホール。福井市内に位置し、低価格ながら質の高いサービスを提供。追加料金なしの明朗会計プランが好評で、火葬式から家族葬まで対応しています。",
        "address": "福井県福井市西開発1-2510",
        "prefecture_slug": "fukui", "city_slug": "fukui-city",
        "latitude": 36.048, "longitude": 136.230,
        "nearest_station": "福井鉄道 ベル前駅", "station_walk_minutes": 10,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}],
        "features": ["家族葬対応", "低価格", "明朗会計", "バリアフリー"],
        "operator_name": "株式会社ユニクエスト", "rating_avg": 4.0, "review_count": 14,
    },
    {
        "name": "家族葬のファミーユ福井",
        "slug": "familyu-fukui",
        "venue_type": "private_hall",
        "description": "「家族葬のファミーユ」福井ホール。家族葬に特化した温かみのある空間で、少人数でのお別れに最適。1日1組完全貸切で、リビング感覚の内装が好評です。24時間365日対応可能。",
        "address": "福井県福井市文京6-2-15",
        "prefecture_slug": "fukui", "city_slug": "fukui-city",
        "latitude": 36.068, "longitude": 136.222,
        "nearest_station": "JR北陸本線 福井駅", "station_walk_minutes": 18,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応", "バリアフリー"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.4, "review_count": 18,
    },

    # =============================================
    # 敦賀市 追加3件
    # =============================================
    {
        "name": "敦賀市斎苑",
        "slug": "tsuruga-shi-saien",
        "venue_type": "public_crematorium",
        "description": "敦賀市が運営する公営斎場。敦賀湾を望む静かな環境に位置し、火葬施設と式場を備えています。敦賀市民は火葬料の優遇があり、通夜から火葬まで一貫して対応可能です。",
        "address": "福井県敦賀市沓見143-25",
        "prefecture_slug": "fukui", "city_slug": "tsuruga",
        "latitude": 35.648, "longitude": 136.075,
        "nearest_station": "JR北陸本線 敦賀駅", "station_walk_minutes": 25,
        "capacity_max": 60, "hall_count": 1, "has_crematorium": True, "parking_count": 30,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "敦賀市", "rating_avg": 3.7, "review_count": 20,
    },
    {
        "name": "セレモニーホール敦賀",
        "slug": "ceremony-hall-tsuruga",
        "venue_type": "private_hall",
        "description": "敦賀市にある民間葬儀会館。北陸新幹線敦賀駅開業で交通の要衝となった敦賀市で、家族葬から一般葬まで幅広く対応。地域に密着した丁寧なサービスを提供しています。",
        "address": "福井県敦賀市中央町2-15-18",
        "prefecture_slug": "fukui", "city_slug": "tsuruga",
        "latitude": 35.645, "longitude": 136.062,
        "nearest_station": "JR北陸新幹線 敦賀駅", "station_walk_minutes": 12,
        "capacity_max": 80, "hall_count": 2, "has_crematorium": False, "parking_count": 40,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True, "宿泊施設": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}],
        "features": ["駅近", "家族葬対応", "宿泊可能", "駐車場完備"],
        "operator_name": "敦賀セレモニー株式会社", "rating_avg": 4.1, "review_count": 22,
    },
    {
        "name": "家族葬のファミーユ敦賀",
        "slug": "familyu-tsuruga",
        "venue_type": "private_hall",
        "description": "敦賀市にある家族葬専用ホール。「家族葬のファミーユ」として展開する施設で、少人数でのお別れに特化。リビングルームのような温かい空間が特長で、24時間対応可能です。",
        "address": "福井県敦賀市呉竹町1-32-8",
        "prefecture_slug": "fukui", "city_slug": "tsuruga",
        "latitude": 35.650, "longitude": 136.058,
        "nearest_station": "JR北陸本線 敦賀駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": False, "parking_count": 12,
        "facilities": {"安置室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}],
        "features": ["家族葬専用", "1日1組貸切", "24時間対応", "バリアフリー"],
        "operator_name": "株式会社家族葬のファミーユ", "rating_avg": 4.3, "review_count": 15,
    },

    # =============================================
    # その他福井県の市 追加6件
    # =============================================
    {
        "name": "鯖江市斎場",
        "slug": "sabae-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "鯖江市が運営する公営火葬場。めがねの街・鯖江に位置し、鯖江市民は火葬料の優遇措置があります。コンパクトながら必要な設備を備えた施設です。",
        "address": "福井県鯖江市上野田町41-20",
        "prefecture_slug": "fukui", "city_slug": "sabae",
        "latitude": 35.955, "longitude": 136.195,
        "nearest_station": "JR北陸本線 鯖江駅", "station_walk_minutes": 15,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}],
        "features": ["火葬場併設", "公営斎場", "バリアフリー"],
        "operator_name": "鯖江市", "rating_avg": 3.6, "review_count": 14,
    },
    {
        "name": "越前市斎場",
        "slug": "echizen-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "越前市が運営する公営斎場。越前和紙の産地として知られる越前市に位置し、静かな環境で故人をお見送りできます。越前市民は火葬料の優遇があります。",
        "address": "福井県越前市白崎町68-52",
        "prefecture_slug": "fukui", "city_slug": "echizen",
        "latitude": 35.898, "longitude": 136.175,
        "nearest_station": "JR北陸本線 武生駅", "station_walk_minutes": 20,
        "capacity_max": 50, "hall_count": 1, "has_crematorium": True, "parking_count": 25,
        "facilities": {"霊安室": True, "バリアフリー": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}],
        "features": ["火葬場併設", "公営斎場", "駐車場完備", "バリアフリー"],
        "operator_name": "越前市", "rating_avg": 3.7, "review_count": 16,
    },
    {
        "name": "小浜市斎場",
        "slug": "obama-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "小浜市が運営する公営斎場。若狭湾に面した小浜市にあり、海を望む静かな環境です。「御食国」として知られる歴史ある街で、小浜市民は火葬料の優遇があります。",
        "address": "福井県小浜市府中9-16",
        "prefecture_slug": "fukui", "city_slug": "obama",
        "latitude": 35.495, "longitude": 135.752,
        "nearest_station": "JR小浜線 小浜駅", "station_walk_minutes": 15,
        "capacity_max": 40, "hall_count": 1, "has_crematorium": True, "parking_count": 20,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "小浜市", "rating_avg": 3.5, "review_count": 10,
    },
    {
        "name": "大野市斎場",
        "slug": "ono-fukui-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "大野市が運営する公営斎場。「天空の城」越前大野城で知られる大野市に位置し、山々に囲まれた自然豊かな環境です。大野市民は火葬料の優遇があります。",
        "address": "福井県大野市南新在家16-30",
        "prefecture_slug": "fukui", "city_slug": "ono-fukui",
        "latitude": 35.975, "longitude": 136.488,
        "nearest_station": "JR越美北線 越前大野駅", "station_walk_minutes": 18,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "大野市", "rating_avg": 3.5, "review_count": 8,
    },
    {
        "name": "勝山市斎場",
        "slug": "katsuyama-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "勝山市が運営する公営火葬場。恐竜博物館で有名な勝山市にあり、九頭竜川沿いの静かな環境に位置します。勝山市民は火葬料の優遇措置があります。",
        "address": "福井県勝山市遅羽町比島38-2",
        "prefecture_slug": "fukui", "city_slug": "katsuyama",
        "latitude": 36.060, "longitude": 136.505,
        "nearest_station": "えちぜん鉄道 勝山駅", "station_walk_minutes": 20,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "勝山市", "rating_avg": 3.5, "review_count": 8,
    },
    {
        "name": "あわら市斎場",
        "slug": "awara-shi-saijo",
        "venue_type": "public_crematorium",
        "description": "あわら市が運営する公営斎場。あわら温泉で知られる街にあり、温泉街とは異なる静かな環境に位置しています。あわら市民は火葬料の優遇があります。",
        "address": "福井県あわら市柿原52-11",
        "prefecture_slug": "fukui", "city_slug": "awara",
        "latitude": 36.195, "longitude": 136.228,
        "nearest_station": "えちぜん鉄道 あわら湯のまち駅", "station_walk_minutes": 15,
        "capacity_max": 30, "hall_count": 1, "has_crematorium": True, "parking_count": 15,
        "facilities": {"霊安室": True, "駐車場": True, "控室": True},
        "price_plans": [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}],
        "features": ["火葬場併設", "公営斎場"],
        "operator_name": "あわら市", "rating_avg": 3.5, "review_count": 8,
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
    print(f"福井県 追加分: 合計{total}件を投入開始")
    for i in range(0, total, BATCH_SIZE):
        batch = venues[i:i+BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        time.sleep(1)
    print(f"\n完了: {success}/{total}件 投入成功")

if __name__ == "__main__":
    main()
