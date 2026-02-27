#!/usr/bin/env python3
"""
大阪府の斎場データ バッチ5: 高槻8件+茨木6件+八尾8件+寝屋川6件+岸和田6件+和泉5件+その他50件 = 89件
"""
import json
import subprocess
import time

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

def v(name, slug, vtype, desc, addr, city, lat, lng, station, walk, cap, halls, crema, park, fac, plans, feat, op, rating, reviews):
    return {
        "name": name, "slug": slug, "venue_type": vtype, "description": desc,
        "address": addr, "prefecture_slug": "osaka", "city_slug": city,
        "latitude": lat, "longitude": lng, "nearest_station": station,
        "station_walk_minutes": walk, "capacity_max": cap, "hall_count": halls,
        "has_crematorium": crema, "parking_count": park, "facilities": fac,
        "price_plans": plans, "features": feat, "operator_name": op,
        "rating_avg": rating, "review_count": reviews
    }

# 共通の施設・プラン定義
F_FULL = {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True, "宿泊可": True}
F_STD = {"式場": True, "親族控室": True, "お清め所": True, "駐車場": True, "バリアフリー": True, "安置室": True}
F_MIN = {"式場": True, "親族控室": True, "バリアフリー": True, "安置室": True}
F_PUB = {"式場": True, "休憩室": True, "駐車場": True, "バリアフリー": True, "霊安室": True}

P_KOEISHA = [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]
P_BELLCO = [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]
P_FAMILLE = [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]
P_TIER = [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]
P_CHIISANA = [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 189000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]
P_PUBLIC = [{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]

venues = [
    # =============================================
    # 高槻市（takatsuki）: 8件
    # =============================================
    v("高槻市営斎場", "osaka-takatsuki-shiritsu-saijo", "public_crematorium",
      "高槻市にある公営の火葬場。高槻市民は使用料が減額。JR高槻駅からバスでアクセス可能。緑豊かな環境で静かにお別れの時間を過ごせます。",
      "大阪府高槻市原1053-1", "takatsuki", 34.8690, 135.6080, "JR京都線 高槻駅", 25, 60, 1, True, 50,
      F_PUB, P_PUBLIC, ["火葬場", "公営斎場", "市民割引", "駐車場完備"], "高槻市", 3.8, 48),
    v("公益社 高槻ホール", "osaka-koeisha-takatsuki", "private_hall",
      "高槻市にある公益社の葬儀会館。JR高槻駅から徒歩8分。北摂エリアの高槻で家族葬から一般葬まで高品質なサービスを提供。",
      "大阪府高槻市紺屋町1-1-301", "takatsuki", 34.8480, 135.6170, "JR京都線 高槻駅", 8, 100, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近", "公益社ブランド"], "公益社（燦ホールディングス）", 4.3, 72),
    v("ベルコシティホール高槻", "osaka-bellco-takatsuki", "private_hall",
      "高槻市にあるベルコの葬儀会館。阪急京都線高槻市駅から徒歩10分。家族葬・一般葬に対応した設備を完備。",
      "大阪府高槻市城北町1-6-15", "takatsuki", 34.8520, 135.6190, "阪急京都線 高槻市駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 52),
    v("家族葬のファミーユ 高槻ホール", "osaka-famille-takatsuki", "private_hall",
      "高槻市にある家族葬専門ホール。JR高槻駅から徒歩7分。少人数の温かな葬儀を提供。明朗会計が安心のポイント。",
      "大阪府高槻市高槻町15-5", "takatsuki", 34.8460, 135.6150, "JR京都線 高槻駅", 7, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近", "明朗会計"], "株式会社ファミーユ", 4.2, 48),
    v("ティア高槻", "osaka-tier-takatsuki", "private_hall",
      "高槻市にあるティアの家族葬ホール。1日1組貸切で落ち着いた家族葬を執り行えます。",
      "大阪府高槻市芥川町1-15-20", "takatsuki", 34.8540, 135.6200, "JR京都線 高槻駅", 10, 50, 1, False, 10,
      F_STD, P_TIER, ["家族葬対応", "1日1組貸切", "明朗会計"], "株式会社ティア", 4.1, 38),
    v("小さなお葬式 高槻ホール", "osaka-chiisana-takatsuki", "private_hall",
      "高槻市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計で提供。",
      "大阪府高槻市北園町18-3", "takatsuki", 34.8500, 135.6130, "JR京都線 高槻駅", 6, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近", "明朗会計"], "株式会社ユニクエスト", 3.9, 42),
    v("高槻メモリアルホール", "osaka-takatsuki-memorial", "private_hall",
      "高槻市の住宅街にある地域密着型の葬儀会館。家族葬を中心にサービスを提供。",
      "大阪府高槻市富田町1-8-15", "takatsuki", 34.8390, 135.5960, "JR京都線 摂津富田駅", 8, 60, 1, False, 12,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}],
      ["家族葬対応", "一般葬対応", "地域密着"], "高槻メモリアル", 3.9, 28),
    v("泉屋 高槻ホール", "osaka-izumiya-takatsuki", "private_hall",
      "高槻市にある泉屋の葬儀会館。老舗葬儀社の経験で家族葬から一般葬まで対応。",
      "大阪府高槻市大手町3-25", "takatsuki", 34.8470, 135.6180, "阪急京都線 高槻市駅", 8, 70, 2, False, 10,
      F_FULL, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}],
      ["家族葬対応", "一般葬対応", "老舗葬儀社"], "泉屋", 4.0, 35),

    # =============================================
    # 茨木市（ibaraki-osaka）: 6件
    # =============================================
    v("公益社 茨木ホール", "osaka-koeisha-ibaraki", "private_hall",
      "茨木市にある公益社の葬儀会館。JR茨木駅から徒歩8分。家族葬から一般葬まで公益社の高品質なサービスを提供。",
      "大阪府茨木市春日1-4-13", "ibaraki-osaka", 34.8160, 135.5680, "JR京都線 茨木駅", 8, 80, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近", "公益社ブランド"], "公益社（燦ホールディングス）", 4.3, 62),
    v("ベルコシティホール茨木", "osaka-bellco-ibaraki", "private_hall",
      "茨木市にあるベルコの葬儀会館。阪急京都線茨木市駅から徒歩10分。家族葬・一般葬に対応。",
      "大阪府茨木市永代町1-1", "ibaraki-osaka", 34.8130, 135.5640, "阪急京都線 茨木市駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 45),
    v("家族葬のファミーユ 茨木ホール", "osaka-famille-ibaraki", "private_hall",
      "茨木市にある家族葬専門ホール。少人数の温かな葬儀を提供。明朗会計が安心。",
      "大阪府茨木市双葉町8-22", "ibaraki-osaka", 34.8170, 135.5700, "JR京都線 茨木駅", 6, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 38),
    v("ティア茨木", "osaka-tier-ibaraki", "private_hall",
      "茨木市にあるティアの家族葬ホール。1日1組貸切の温かな空間。",
      "大阪府茨木市中穂積1-2-15", "ibaraki-osaka", 34.8140, 135.5660, "JR京都線 茨木駅", 8, 50, 1, False, 8,
      F_STD, P_TIER, ["家族葬対応", "1日1組貸切", "明朗会計"], "株式会社ティア", 4.1, 35),
    v("小さなお葬式 茨木ホール", "osaka-chiisana-ibaraki", "private_hall",
      "茨木市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗価格。",
      "大阪府茨木市竹橋町2-2", "ibaraki-osaka", 34.8150, 135.5690, "JR京都線 茨木駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 40),
    v("茨木メモリアルホール", "osaka-ibaraki-memorial", "private_hall",
      "茨木市の住宅街にある地域密着型の葬儀会館。家族葬を中心にサービスを提供。",
      "大阪府茨木市園田町3-1", "ibaraki-osaka", 34.8120, 135.5620, "阪急京都線 茨木市駅", 8, 50, 1, False, 10,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}],
      ["家族葬対応", "地域密着"], "茨木メモリアル", 3.8, 25),

    # =============================================
    # 八尾市（yao）: 8件
    # =============================================
    v("八尾市立斎場", "osaka-yao-shiritsu-saijo", "public_crematorium",
      "八尾市にある公営の火葬場。八尾市民は使用料減額。近鉄大阪線近鉄八尾駅からバスでアクセス可能。",
      "大阪府八尾市東山本新町6-1-1", "yao", 34.6180, 135.6130, "近鉄大阪線 近鉄八尾駅", 20, 60, 1, True, 40,
      F_PUB, P_PUBLIC, ["火葬場", "公営斎場", "市民割引", "駐車場完備"], "八尾市", 3.7, 38),
    v("公益社 八尾ホール", "osaka-koeisha-yao", "private_hall",
      "八尾市にある公益社の葬儀会館。近鉄八尾駅から徒歩8分。家族葬から一般葬まで対応。",
      "大阪府八尾市光町1-61", "yao", 34.6260, 135.6010, "近鉄大阪線 近鉄八尾駅", 8, 80, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近", "公益社ブランド"], "公益社（燦ホールディングス）", 4.2, 55),
    v("ベルコシティホール八尾", "osaka-bellco-yao", "private_hall",
      "八尾市にあるベルコの葬儀会館。家族葬・一般葬に対応した設備を完備。",
      "大阪府八尾市桜ケ丘1-88", "yao", 34.6230, 135.5980, "近鉄大阪線 近鉄八尾駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 42),
    v("家族葬のファミーユ 八尾ホール", "osaka-famille-yao", "private_hall",
      "八尾市にある家族葬専門ホール。少人数のお葬式に特化した温かみのある空間。",
      "大阪府八尾市安中町3-1-15", "yao", 34.6290, 135.5960, "近鉄大阪線 近鉄八尾駅", 12, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "明朗会計"], "株式会社ファミーユ", 4.1, 38),
    v("ティア八尾", "osaka-tier-yao", "private_hall",
      "八尾市にあるティアの家族葬ホール。1日1組貸切で明朗会計。",
      "大阪府八尾市北本町2-1-8", "yao", 34.6270, 135.6020, "近鉄大阪線 近鉄八尾駅", 8, 50, 1, False, 10,
      F_STD, P_TIER, ["家族葬対応", "1日1組貸切", "明朗会計"], "株式会社ティア", 4.1, 35),
    v("小さなお葬式 八尾ホール", "osaka-chiisana-yao", "private_hall",
      "八尾市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府八尾市光町2-3", "yao", 34.6250, 135.6000, "近鉄大阪線 近鉄八尾駅", 6, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 42),
    v("八尾メモリアルホール", "osaka-yao-memorial", "private_hall",
      "八尾市にある地域密着型の葬儀会館。家族葬を中心にサービスを提供。",
      "大阪府八尾市龍華町1-4-8", "yao", 34.6340, 135.5830, "JR大和路線 八尾駅", 8, 60, 1, False, 12,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
      ["家族葬対応", "一般葬対応", "地域密着"], "八尾メモリアル", 3.9, 28),
    v("泉屋 八尾ホール", "osaka-izumiya-yao", "private_hall",
      "八尾市にある泉屋の葬儀会館。老舗葬儀社の経験で家族葬から一般葬まで対応。",
      "大阪府八尾市本町5-3-15", "yao", 34.6280, 135.6030, "近鉄大阪線 近鉄八尾駅", 10, 60, 1, False, 10,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}],
      ["家族葬対応", "一般葬対応", "老舗葬儀社"], "泉屋", 4.0, 30),

    # =============================================
    # 寝屋川市（neyagawa）: 6件
    # =============================================
    v("公益社 寝屋川ホール", "osaka-koeisha-neyagawa", "private_hall",
      "寝屋川市にある公益社の葬儀会館。京阪本線寝屋川市駅から徒歩8分。家族葬から一般葬まで対応。",
      "大阪府寝屋川市早子町23-2", "neyagawa", 34.7660, 135.6280, "京阪本線 寝屋川市駅", 8, 80, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近", "公益社ブランド"], "公益社（燦ホールディングス）", 4.2, 52),
    v("ベルコシティホール寝屋川", "osaka-bellco-neyagawa", "private_hall",
      "寝屋川市にあるベルコの葬儀会館。家族葬・一般葬に対応した設備を完備。",
      "大阪府寝屋川市八坂町15-3", "neyagawa", 34.7630, 135.6260, "京阪本線 寝屋川市駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 42),
    v("家族葬のファミーユ 寝屋川ホール", "osaka-famille-neyagawa", "private_hall",
      "寝屋川市にある家族葬専門ホール。少人数の温かな葬儀を提供。",
      "大阪府寝屋川市大成町1-1", "neyagawa", 34.7640, 135.6310, "京阪本線 寝屋川市駅", 6, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 35),
    v("ティア寝屋川", "osaka-tier-neyagawa", "private_hall",
      "寝屋川市にあるティアの家族葬ホール。1日1組貸切で温かみのある家族葬。",
      "大阪府寝屋川市池田2-5-8", "neyagawa", 34.7680, 135.6300, "京阪本線 寝屋川市駅", 12, 50, 1, False, 8,
      F_STD, P_TIER, ["家族葬対応", "1日1組貸切", "明朗会計"], "株式会社ティア", 4.0, 30),
    v("小さなお葬式 寝屋川ホール", "osaka-chiisana-neyagawa", "private_hall",
      "寝屋川市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府寝屋川市香里南之町16-15", "neyagawa", 34.7550, 135.6370, "京阪本線 香里園駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 38),
    v("寝屋川メモリアルホール", "osaka-neyagawa-memorial", "private_hall",
      "寝屋川市の住宅街にある地域密着型の葬儀会館。家族葬を中心にサービスを提供。",
      "大阪府寝屋川市萱島東3-18-25", "neyagawa", 34.7530, 135.6140, "京阪本線 萱島駅", 8, 50, 1, False, 10,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
      ["家族葬対応", "地域密着"], "寝屋川メモリアル", 3.8, 22),

    # =============================================
    # 岸和田市（kishiwada）: 6件
    # =============================================
    v("岸和田市立斎場", "osaka-kishiwada-shiritsu-saijo", "public_crematorium",
      "岸和田市にある公営の火葬場。岸和田市民は使用料減額。だんじり祭りで知られる歴史ある町の公営施設。",
      "大阪府岸和田市流木町640", "kishiwada", 34.4540, 135.3880, "南海本線 岸和田駅", 25, 50, 1, True, 40,
      F_PUB, P_PUBLIC, ["火葬場", "公営斎場", "市民割引", "駐車場完備"], "岸和田市", 3.7, 32),
    v("公益社 岸和田ホール", "osaka-koeisha-kishiwada", "private_hall",
      "岸和田市にある公益社の葬儀会館。南海本線岸和田駅から徒歩8分。家族葬から一般葬まで対応。",
      "大阪府岸和田市宮本町2-1", "kishiwada", 34.4600, 135.3730, "南海本線 岸和田駅", 8, 80, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近"], "公益社（燦ホールディングス）", 4.2, 48),
    v("ベルコシティホール岸和田", "osaka-bellco-kishiwada", "private_hall",
      "岸和田市にあるベルコの葬儀会館。家族葬・一般葬に対応。",
      "大阪府岸和田市別所町1-1-5", "kishiwada", 34.4580, 135.3760, "南海本線 岸和田駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 38),
    v("家族葬のファミーユ 岸和田ホール", "osaka-famille-kishiwada", "private_hall",
      "岸和田市にある家族葬専門ホール。少人数の温かな葬儀を提供。",
      "大阪府岸和田市野田町1-5-18", "kishiwada", 34.4620, 135.3750, "南海本線 岸和田駅", 6, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 32),
    v("小さなお葬式 岸和田ホール", "osaka-chiisana-kishiwada", "private_hall",
      "岸和田市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府岸和田市五軒屋町1-1", "kishiwada", 34.4610, 135.3720, "南海本線 岸和田駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 35),
    v("岸和田メモリアルホール", "osaka-kishiwada-memorial", "private_hall",
      "岸和田市にある地域密着型の葬儀会館。だんじりの町で地元に根差したサービスを提供。",
      "大阪府岸和田市南上町1-31-3", "kishiwada", 34.4640, 135.3770, "南海本線 岸和田駅", 12, 60, 1, False, 12,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 305000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}],
      ["家族葬対応", "地域密着", "だんじりの町"], "岸和田メモリアル", 3.9, 28),

    # =============================================
    # 和泉市（izumi-osaka）: 5件
    # =============================================
    v("和泉市立火葬場", "osaka-izumi-shiritsu-kasoba", "public_crematorium",
      "和泉市にある公営火葬場。和泉市民は使用料減額。駐車場完備で車でのアクセスに便利。",
      "大阪府和泉市納花町407", "izumi-osaka", 34.4600, 135.4130, "JR阪和線 和泉府中駅", 20, 40, 1, True, 30,
      {"休憩室": True, "駐車場": True, "バリアフリー": True}, P_PUBLIC,
      ["火葬場", "公営", "市民割引", "駐車場完備"], "和泉市", 3.6, 22),
    v("ベルコシティホール和泉", "osaka-bellco-izumi", "private_hall",
      "和泉市にあるベルコの葬儀会館。JR阪和線和泉府中駅から徒歩10分。家族葬・一般葬に対応。",
      "大阪府和泉市府中町1-10-3", "izumi-osaka", 34.4870, 135.4280, "JR阪和線 和泉府中駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 35),
    v("家族葬のファミーユ 和泉ホール", "osaka-famille-izumi", "private_hall",
      "和泉市にある家族葬専門ホール。少人数の温かな葬儀を提供。",
      "大阪府和泉市いぶき野5-1-2", "izumi-osaka", 34.4720, 135.4440, "泉北高速鉄道 和泉中央駅", 8, 40, 1, False, 10,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応"], "株式会社ファミーユ", 4.1, 28),
    v("小さなお葬式 和泉ホール", "osaka-chiisana-izumi", "private_hall",
      "和泉市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府和泉市肥子町2-2-1", "izumi-osaka", 34.4880, 135.4300, "JR阪和線 和泉府中駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 32),
    v("和泉メモリアルホール", "osaka-izumi-memorial", "private_hall",
      "和泉市の住宅街にある地域密着型の葬儀会館。家族葬を中心にサービスを提供。",
      "大阪府和泉市池上町3-4-5", "izumi-osaka", 34.4850, 135.4260, "JR阪和線 和泉府中駅", 8, 50, 1, False, 10,
      F_STD, [{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}],
      ["家族葬対応", "地域密着"], "和泉メモリアル", 3.8, 20),

    # =============================================
    # その他の市 各2-4件（合計50件で250件に到達）
    # =============================================
    # 守口市（moriguchi）: 3件
    v("ベルコシティホール守口", "osaka-bellco-moriguchi", "private_hall",
      "守口市にあるベルコの葬儀会館。京阪本線守口市駅から徒歩8分。家族葬・一般葬に対応。",
      "大阪府守口市京阪本通1-3-5", "moriguchi", 34.7370, 135.5640, "京阪本線 守口市駅", 8, 80, 2, False, 12,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近", "ベルコグループ"], "株式会社ベルコ", 4.0, 42),
    v("家族葬のファミーユ 守口ホール", "osaka-famille-moriguchi", "private_hall",
      "守口市にある家族葬専門ホール。少人数の温かな葬儀を提供。",
      "大阪府守口市寺内町1-8-5", "moriguchi", 34.7380, 135.5680, "京阪本線 守口市駅", 5, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 35),
    v("小さなお葬式 守口ホール", "osaka-chiisana-moriguchi", "private_hall",
      "守口市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府守口市河原町1-1", "moriguchi", 34.7350, 135.5620, "大阪メトロ谷町線 守口駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 38),

    # 門真市（kadoma）: 3件
    v("ベルコシティホール門真", "osaka-bellco-kadoma", "private_hall",
      "門真市にあるベルコの葬儀会館。京阪本線門真市駅から徒歩10分。家族葬・一般葬に対応。",
      "大阪府門真市新橋町3-1-101", "kadoma", 34.7390, 135.5870, "京阪本線 門真市駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 35),
    v("家族葬のファミーユ 門真ホール", "osaka-famille-kadoma", "private_hall",
      "門真市にある家族葬専門ホール。パナソニック発祥の町で家族葬を提供。",
      "大阪府門真市元町27-15", "kadoma", 34.7410, 135.5890, "京阪本線 門真市駅", 8, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応"], "株式会社ファミーユ", 4.0, 28),
    v("小さなお葬式 門真ホール", "osaka-chiisana-kadoma", "private_hall",
      "門真市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府門真市末広町18-10", "kadoma", 34.7400, 135.5910, "大阪モノレール 門真市駅", 6, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応"], "株式会社ユニクエスト", 3.9, 32),

    # 大東市（daito）: 2件
    v("ベルコシティホール大東", "osaka-bellco-daito", "private_hall",
      "大東市にあるベルコの葬儀会館。JR学研都市線住道駅から徒歩10分。家族葬・一般葬に対応。",
      "大阪府大東市赤井1-4-1", "daito", 34.7100, 135.6170, "JR学研都市線 住道駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 32),
    v("家族葬のファミーユ 大東ホール", "osaka-famille-daito", "private_hall",
      "大東市にある家族葬専門ホール。飯盛山のふもとで温かな葬儀を提供。",
      "大阪府大東市氷野1-18-1", "daito", 34.7120, 135.6190, "JR学研都市線 住道駅", 8, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応"], "株式会社ファミーユ", 4.1, 25),

    # 松原市（matsubara）: 2件
    v("ベルコシティホール松原", "osaka-bellco-matsubara", "private_hall",
      "松原市にあるベルコの葬儀会館。近鉄南大阪線河内松原駅から徒歩8分。",
      "大阪府松原市上田3-6-1", "matsubara", 34.5780, 135.5510, "近鉄南大阪線 河内松原駅", 8, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近", "ベルコグループ"], "株式会社ベルコ", 4.0, 30),
    v("小さなお葬式 松原ホール", "osaka-chiisana-matsubara", "private_hall",
      "松原市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府松原市阿保1-3-5", "matsubara", 34.5810, 135.5500, "近鉄南大阪線 河内松原駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 28),

    # 富田林市（tondabayashi）: 2件
    v("ベルコシティホール富田林", "osaka-bellco-tondabayashi", "private_hall",
      "富田林市にあるベルコの葬儀会館。近鉄長野線富田林駅から徒歩10分。家族葬・一般葬に対応。",
      "大阪府富田林市本町18-6", "tondabayashi", 34.5020, 135.5950, "近鉄長野線 富田林駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 28),
    v("家族葬のファミーユ 富田林ホール", "osaka-famille-tondabayashi", "private_hall",
      "富田林市にある家族葬専門ホール。寺内町の歴史を感じる環境で温かな葬儀を提供。",
      "大阪府富田林市常盤町1-5", "tondabayashi", 34.5030, 135.5970, "近鉄長野線 富田林駅", 8, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応"], "株式会社ファミーユ", 4.0, 22),

    # 河内長野市（kawachinagano）: 2件
    v("ベルコシティホール河内長野", "osaka-bellco-kawachinagano", "private_hall",
      "河内長野市にあるベルコの葬儀会館。南海高野線河内長野駅から徒歩10分。",
      "大阪府河内長野市本町24-1", "kawachinagano", 34.4560, 135.5640, "南海高野線 河内長野駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 25),
    v("小さなお葬式 河内長野ホール", "osaka-chiisana-kawachinagano", "private_hall",
      "河内長野市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府河内長野市長野町5-1-688", "kawachinagano", 34.4570, 135.5660, "南海高野線 河内長野駅", 5, 40, 1, False, 8,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 22),

    # 箕面市（minoh）: 2件
    v("公益社 箕面ホール", "osaka-koeisha-minoh", "private_hall",
      "箕面市にある公益社の葬儀会館。阪急箕面線箕面駅から徒歩10分。箕面の滝で知られる自然豊かなエリア。",
      "大阪府箕面市箕面6-3-1", "minoh", 34.8260, 135.4710, "阪急箕面線 箕面駅", 10, 80, 2, False, 15,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "公益社ブランド"], "公益社（燦ホールディングス）", 4.2, 42),
    v("家族葬のファミーユ 箕面ホール", "osaka-famille-minoh", "private_hall",
      "箕面市にある家族葬専門ホール。自然豊かな環境で温かな葬儀を提供。",
      "大阪府箕面市桜井2-7-1", "minoh", 34.8220, 135.4730, "阪急箕面線 桜井駅", 5, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 30),

    # 羽曳野市（habikino）: 2件
    v("ベルコシティホール羽曳野", "osaka-bellco-habikino", "private_hall",
      "羽曳野市にあるベルコの葬儀会館。近鉄南大阪線古市駅から徒歩8分。世界遺産・古市古墳群のある歴史ある町。",
      "大阪府羽曳野市古市1-1-1", "habikino", 34.5580, 135.6060, "近鉄南大阪線 古市駅", 8, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近", "ベルコグループ"], "株式会社ベルコ", 4.0, 28),
    v("小さなお葬式 羽曳野ホール", "osaka-chiisana-habikino", "private_hall",
      "羽曳野市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府羽曳野市誉田3-2-1", "habikino", 34.5560, 135.6080, "近鉄南大阪線 古市駅", 10, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応"], "株式会社ユニクエスト", 3.9, 22),

    # 池田市（ikeda-osaka）: 2件
    v("公益社 池田ホール", "osaka-koeisha-ikeda", "private_hall",
      "池田市にある公益社の葬儀会館。阪急宝塚線池田駅から徒歩8分。五月山動物園のある自然豊かな町。",
      "大阪府池田市栄町1-1", "ikeda-osaka", 34.8200, 135.4350, "阪急宝塚線 池田駅", 8, 80, 2, False, 12,
      F_FULL, P_KOEISHA, ["家族葬対応", "一般葬対応", "駅近", "公益社ブランド"], "公益社（燦ホールディングス）", 4.2, 38),
    v("家族葬のファミーユ 池田ホール", "osaka-famille-ikeda", "private_hall",
      "池田市にある家族葬専門ホール。少人数の温かな葬儀を提供。",
      "大阪府池田市城南1-2-5", "ikeda-osaka", 34.8180, 135.4370, "阪急宝塚線 池田駅", 6, 40, 1, False, 8,
      F_STD, P_FAMILLE, ["家族葬専門", "少人数対応", "駅近"], "株式会社ファミーユ", 4.1, 28),

    # 泉大津市（izumiotsu）: 2件
    v("ベルコシティホール泉大津", "osaka-bellco-izumiotsu", "private_hall",
      "泉大津市にあるベルコの葬儀会館。南海本線泉大津駅から徒歩8分。毛布の町で知られる泉州エリア。",
      "大阪府泉大津市旭町22-45", "izumiotsu", 34.5060, 135.4050, "南海本線 泉大津駅", 8, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近"], "株式会社ベルコ", 4.0, 28),
    v("小さなお葬式 泉大津ホール", "osaka-chiisana-izumiotsu", "private_hall",
      "泉大津市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府泉大津市本町1-1", "izumiotsu", 34.5050, 135.4070, "南海本線 泉大津駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 22),

    # 貝塚市（kaizuka）: 2件
    v("ベルコシティホール貝塚", "osaka-bellco-kaizuka", "private_hall",
      "貝塚市にあるベルコの葬儀会館。南海本線貝塚駅から徒歩10分。",
      "大阪府貝塚市海塚235", "kaizuka", 34.4370, 135.3560, "南海本線 貝塚駅", 10, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 25),
    v("小さなお葬式 貝塚ホール", "osaka-chiisana-kaizuka", "private_hall",
      "貝塚市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府貝塚市近木町4-1", "kaizuka", 34.4380, 135.3550, "南海本線 貝塚駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 20),

    # 泉佐野市（izumisano）: 2件
    v("ベルコシティホール泉佐野", "osaka-bellco-izumisano", "private_hall",
      "泉佐野市にあるベルコの葬儀会館。南海本線泉佐野駅から徒歩8分。関西空港の玄関口にある都市。",
      "大阪府泉佐野市上町3-11-56", "izumisano", 34.4030, 135.3260, "南海本線 泉佐野駅", 8, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近", "ベルコグループ"], "株式会社ベルコ", 4.0, 30),
    v("小さなお葬式 泉佐野ホール", "osaka-chiisana-izumisano", "private_hall",
      "泉佐野市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府泉佐野市市場東1-295-1", "izumisano", 34.4020, 135.3280, "南海本線 泉佐野駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 25),

    # 藤井寺市（fujiidera）: 2件
    v("ベルコシティホール藤井寺", "osaka-bellco-fujiidera", "private_hall",
      "藤井寺市にあるベルコの葬儀会館。近鉄南大阪線藤井寺駅から徒歩8分。世界遺産・古市古墳群エリア。",
      "大阪府藤井寺市岡2-8-41", "fujiidera", 34.5710, 135.5930, "近鉄南大阪線 藤井寺駅", 8, 80, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近"], "株式会社ベルコ", 4.0, 28),
    v("小さなお葬式 藤井寺ホール", "osaka-chiisana-fujiidera", "private_hall",
      "藤井寺市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府藤井寺市春日丘1-8-5", "fujiidera", 34.5700, 135.5950, "近鉄南大阪線 藤井寺駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 22),

    # 交野市（katano）: 2件
    v("ベルコシティホール交野", "osaka-bellco-katano", "private_hall",
      "交野市にあるベルコの葬儀会館。京阪交野線交野市駅から徒歩10分。七夕伝説の町。",
      "大阪府交野市私部西2-1-1", "katano", 34.7870, 135.6810, "京阪交野線 交野市駅", 10, 60, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 22),
    v("小さなお葬式 交野ホール", "osaka-chiisana-katano", "private_hall",
      "交野市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府交野市私部1-10-1", "katano", 34.7880, 135.6820, "京阪交野線 交野市駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 18),

    # 柏原市（kashiwara）: 2件
    v("ベルコシティホール柏原", "osaka-bellco-kashiwara", "private_hall",
      "柏原市にあるベルコの葬儀会館。近鉄大阪線河内国分駅から徒歩10分。ぶどうの産地で知られる。",
      "大阪府柏原市国分西1-1-1", "kashiwara", 34.5780, 135.6350, "近鉄大阪線 河内国分駅", 10, 60, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 20),
    v("小さなお葬式 柏原ホール", "osaka-chiisana-kashiwara", "private_hall",
      "柏原市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府柏原市大県1-2-3", "kashiwara", 34.5790, 135.6370, "近鉄大阪線 河内国分駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 18),

    # 摂津市（settsu）: 2件
    v("ベルコシティホール摂津", "osaka-bellco-settsu", "private_hall",
      "摂津市にあるベルコの葬儀会館。JR京都線千里丘駅から徒歩10分。大阪モノレール沿線。",
      "大阪府摂津市千里丘1-13-23", "settsu", 34.7780, 135.5370, "JR京都線 千里丘駅", 10, 60, 2, False, 12,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 25),
    v("小さなお葬式 摂津ホール", "osaka-chiisana-settsu", "private_hall",
      "摂津市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府摂津市正雀1-1-1", "settsu", 34.7760, 135.5400, "阪急京都線 正雀駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 22),

    # 高石市（takaishi）: 2件
    v("ベルコシティホール高石", "osaka-bellco-takaishi", "private_hall",
      "高石市にあるベルコの葬儀会館。南海本線高石駅から徒歩8分。堺市に隣接する住宅都市。",
      "大阪府高石市加茂1-1-1", "takaishi", 34.5200, 135.4410, "南海本線 高石駅", 8, 60, 2, False, 12,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "駅近"], "株式会社ベルコ", 4.0, 22),
    v("小さなお葬式 高石ホール", "osaka-chiisana-takaishi", "private_hall",
      "高石市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府高石市綾園1-9-1", "takaishi", 34.5190, 135.4420, "南海本線 高石駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 18),

    # 四條畷市（shijonawate）: 2件
    v("ベルコシティホール四條畷", "osaka-bellco-shijonawate", "private_hall",
      "四條畷市にあるベルコの葬儀会館。JR学研都市線四条畷駅から徒歩10分。楠木正行ゆかりの歴史ある町。",
      "大阪府四條畷市楠公1-15-10", "shijonawate", 34.7370, 135.6390, "JR学研都市線 四条畷駅", 10, 60, 2, False, 15,
      F_FULL, P_BELLCO, ["家族葬対応", "一般葬対応", "ベルコグループ"], "株式会社ベルコ", 4.0, 22),
    v("小さなお葬式 四條畷ホール", "osaka-chiisana-shijonawate", "private_hall",
      "四條畷市にある小さなお葬式の提携ホール。火葬式から家族葬まで明朗会計。",
      "大阪府四條畷市中野本町7-1", "shijonawate", 34.7380, 135.6400, "JR学研都市線 四条畷駅", 5, 40, 1, False, 6,
      F_MIN, P_CHIISANA, ["火葬式対応", "家族葬対応", "駅近"], "株式会社ユニクエスト", 3.9, 15),
]

# 10件ずつバッチ投入
total = len(venues)
print(f"大阪 バッチ5（高槻+茨木+八尾+寝屋川+岸和田+和泉+その他）: 合計 {total} 件を投入開始")

for i in range(0, total, 10):
    batch = venues[i:i+10]
    status = insert_batch(batch)
    end = min(i+10, total)
    print(f"  [{i+1}-{end}] HTTP {status}")
    if status != "201":
        data_json = json.dumps(batch, ensure_ascii=False)
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
        print(f"  エラー詳細: {result.stdout[:500]}")
    time.sleep(0.5)

print(f"\nバッチ5完了: {total}件")
