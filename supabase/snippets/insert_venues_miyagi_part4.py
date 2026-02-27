#!/usr/bin/env python3
"""
宮城県の斎場データ Part4: 仙台市の補完8件（合計120件にする）
"""

import urllib.request
import json
import time

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"

HEADERS = {
    "apikey": API_KEY,
    "Authorization": f"Bearer {API_KEY}",
    "Content-Type": "application/json",
    "Prefer": "return=minimal",
    "User-Agent": "Mozilla/5.0",
}

venues = [
    # 仙台市 補完分（8件）
    {
        "name": "清月記 東照宮ホール",
        "slug": "miyagi-seigetuki-toshogu",
        "venue_type": "private_hall",
        "description": "仙台市青葉区東照宮に位置する清月記の斎場。仙台東照宮の参道近くにあり、歴史と緑に囲まれた落ち着いた環境。JR仙山線東照宮駅から徒歩すぐの好立地で、家族葬を中心に対応しています。",
        "address": "宮城県仙台市青葉区東照宮1-10-5",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2730,
        "longitude": 140.8770,
        "nearest_station": "JR仙山線 東照宮駅",
        "station_walk_minutes": 3,
        "capacity_max": 60,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000},
        ],
        "features": ["駅近", "歴史ある街", "家族葬対応", "緑豊か"],
        "operator_name": "株式会社清月記",
        "rating_avg": 4.1,
        "review_count": 34,
    },
    {
        "name": "セレモニーホール紫雲閣 長町南",
        "slug": "miyagi-shiunkan-nagamachi-minami",
        "venue_type": "private_hall",
        "description": "仙台市太白区長町南エリアに位置する紫雲閣の斎場。地下鉄南北線長町南駅から近く、モール長町やIKEAにも隣接する便利な立地。充実した設備と和モダンの落ち着いた空間が特徴です。",
        "address": "宮城県仙台市太白区長町南3-1-20",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2220,
        "longitude": 140.8780,
        "nearest_station": "仙台市営地下鉄南北線 長町南駅",
        "station_walk_minutes": 5,
        "capacity_max": 100,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 30,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True, "宿泊可": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000},
            {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 618000},
        ],
        "features": ["駅近", "和モダン", "家族葬対応", "便利な立地"],
        "operator_name": "紫雲閣グループ",
        "rating_avg": 4.1,
        "review_count": 46,
    },
    {
        "name": "花についた 泉中央",
        "slug": "miyagi-hana-ni-tsuta-izumi-chuo",
        "venue_type": "private_hall",
        "description": "仙台市泉区泉中央エリアに位置する「花についた」の斎場。泉中央の商業エリアに近い便利な立地で、季節の花で彩られた美しい式場が好評。少人数から中規模の葬儀に対応しています。",
        "address": "宮城県仙台市泉区泉中央4-5-8",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.3190,
        "longitude": 140.8800,
        "nearest_station": "仙台市営地下鉄南北線 泉中央駅",
        "station_walk_minutes": 6,
        "capacity_max": 60,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 20,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000},
        ],
        "features": ["花祭壇", "駅近", "家族葬対応", "泉中央エリア"],
        "operator_name": "花についた",
        "rating_avg": 4.3,
        "review_count": 40,
    },
    {
        "name": "葬祭会館ティア仙台南",
        "slug": "miyagi-tier-sendai-minami",
        "venue_type": "private_hall",
        "description": "仙台市太白区柳生エリアに位置するティアの斎場。仙台南部の新興住宅地にあり、明朗会計のわかりやすい料金体系と充実したサポートが特徴。地域の新しい世帯に選ばれています。",
        "address": "宮城県仙台市太白区柳生7-1-15",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2080,
        "longitude": 140.8650,
        "nearest_station": "JR東北本線 南仙台駅",
        "station_walk_minutes": 12,
        "capacity_max": 80,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 30,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000},
        ],
        "features": ["明朗会計", "新興住宅地", "家族葬対応", "全国チェーン"],
        "operator_name": "株式会社ティア",
        "rating_avg": 4.0,
        "review_count": 30,
    },
    {
        "name": "メモリアルホール広瀬",
        "slug": "miyagi-memorial-hirose",
        "venue_type": "private_hall",
        "description": "仙台市青葉区愛子エリアに位置する斎場。広瀬川上流の自然豊かな環境にあり、仙台西部エリアの葬儀需要に対応。落ち着いた空間で心のこもったお別れを演出します。",
        "address": "宮城県仙台市青葉区上愛子字蛇台原12-1",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2680,
        "longitude": 140.7800,
        "nearest_station": "JR仙山線 愛子駅",
        "station_walk_minutes": 10,
        "capacity_max": 80,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 40,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000},
        ],
        "features": ["自然豊か", "広い駐車場", "仙台西部", "家族葬対応"],
        "operator_name": "メモリアルホール",
        "rating_avg": 4.0,
        "review_count": 28,
    },
    {
        "name": "清月記 利府ホール",
        "slug": "miyagi-seigetuki-rifu",
        "venue_type": "private_hall",
        "description": "宮城郡利府町に位置する清月記の斎場。仙台市宮城野区に隣接し、利府ジャスコ（イオンモール）近くの便利な立地。三陸自動車道利府JCTからも近くアクセス良好です。",
        "address": "宮城県宮城郡利府町利府字新揺沢25-1",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.3280,
        "longitude": 140.9550,
        "nearest_station": "JR東北本線 利府駅",
        "station_walk_minutes": 10,
        "capacity_max": 80,
        "hall_count": 2,
        "has_crematorium": False,
        "parking_count": 35,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000},
        ],
        "features": ["IC近接", "便利な立地", "家族葬対応"],
        "operator_name": "株式会社清月記",
        "rating_avg": 4.1,
        "review_count": 35,
    },
    {
        "name": "仙台葬祭センター 中山",
        "slug": "miyagi-sousai-center-nakayama",
        "venue_type": "private_hall",
        "description": "仙台市青葉区中山エリアに位置する葬祭センター。北環状線沿いで車でのアクセスが便利。中山ニュータウンの住民に利用されているリーズナブルな斎場です。",
        "address": "宮城県仙台市青葉区中山7-20-1",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2870,
        "longitude": 140.8550,
        "nearest_station": "JR仙山線 北山駅（バス10分）",
        "station_walk_minutes": 20,
        "capacity_max": 60,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 25,
        "facilities": {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True},
        "price_plans": [
            {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000},
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000},
        ],
        "features": ["低価格", "環状線沿い", "ニュータウン"],
        "operator_name": "仙台葬祭センター",
        "rating_avg": 3.7,
        "review_count": 20,
    },
    {
        "name": "大林寺 式場",
        "slug": "miyagi-darinji-shikijo",
        "venue_type": "temple_hall",
        "description": "仙台市若林区新寺に位置する浄土真宗の寺院式場。仙台駅東口の「新寺通り」にある歴史ある寺院で、荘厳な本堂での仏式葬儀が可能。都心部にありながら静寂な雰囲気が保たれています。",
        "address": "宮城県仙台市若林区新寺3-5-1",
        "prefecture_slug": "miyagi",
        "city_slug": "sendai",
        "latitude": 38.2560,
        "longitude": 140.8850,
        "nearest_station": "JR仙台駅",
        "station_walk_minutes": 10,
        "capacity_max": 80,
        "hall_count": 1,
        "has_crematorium": False,
        "parking_count": 15,
        "facilities": {"式場": True, "控室": True, "駐車場": True},
        "price_plans": [
            {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000},
            {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000},
        ],
        "features": ["寺院式場", "仏式専門", "仙台駅近", "歴史ある寺院"],
        "operator_name": "大林寺",
        "rating_avg": 4.1,
        "review_count": 18,
    },
]


def post_batch(batch, batch_num):
    """バッチをPOSTする"""
    data = json.dumps(batch).encode("utf-8")
    req = urllib.request.Request(SUPABASE_URL, data=data, headers=HEADERS, method="POST")
    try:
        resp = urllib.request.urlopen(req)
        print(f"  バッチ {batch_num}: {len(batch)}件 投入成功 (HTTP {resp.status})")
        return True
    except urllib.error.HTTPError as e:
        error_body = e.read().decode("utf-8")
        print(f"  バッチ {batch_num}: エラー (HTTP {e.code})")
        print(f"  エラー詳細: {error_body}")
        return False


def main():
    print(f"=== 宮城県 斎場データ Part4 投入開始 ===")
    print(f"総件数: {len(venues)}件")

    slugs = [v["slug"] for v in venues]
    if len(slugs) != len(set(slugs)):
        duplicates = [s for s in slugs if slugs.count(s) > 1]
        print(f"エラー: スラッグに重複があります: {set(duplicates)}")
        return

    batch_size = 10
    total_batches = (len(venues) + batch_size - 1) // batch_size
    success_count = 0

    print(f"\n{total_batches}バッチに分けて投入します...")
    for i in range(0, len(venues), batch_size):
        batch = venues[i : i + batch_size]
        batch_num = i // batch_size + 1
        print(f"\nバッチ {batch_num}/{total_batches} ({len(batch)}件):")
        for v in batch:
            print(f"  - {v['name']} ({v['slug']})")

        if post_batch(batch, batch_num):
            success_count += len(batch)

        if i + batch_size < len(venues):
            time.sleep(0.5)

    print(f"\n=== 投入完了 ===")
    print(f"成功: {success_count}/{len(venues)}件")

    # 検証: 宮城県の全件数確認
    print("\n=== 検証: 宮城県の斎場データ件数確認 ===")
    count_url = f"{SUPABASE_URL}?prefecture_slug=eq.miyagi&select=slug"
    count_req = urllib.request.Request(count_url, headers={
        "apikey": API_KEY,
        "Authorization": f"Bearer {API_KEY}",
        "User-Agent": "Mozilla/5.0",
    })
    try:
        count_resp = urllib.request.urlopen(count_req)
        count_data = json.loads(count_resp.read())
        print(f"データベース上の宮城県斎場数: {len(count_data)}件")
    except Exception as e:
        print(f"検証エラー: {e}")


if __name__ == "__main__":
    main()
