import { Area } from "../data/types";

// 47都道府県
export const mockPrefectures: Area[] = [
  { id: "pref-hokkaido", name: "北海道", slug: "hokkaido", code: "01000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-aomori", name: "青森県", slug: "aomori", code: "02000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-iwate", name: "岩手県", slug: "iwate", code: "03000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-miyagi", name: "宮城県", slug: "miyagi", code: "04000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-akita", name: "秋田県", slug: "akita", code: "05000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-yamagata", name: "山形県", slug: "yamagata", code: "06000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-fukushima", name: "福島県", slug: "fukushima", code: "07000", parentSlug: null, level: 1, region: "北海道・東北" },
  { id: "pref-ibaraki", name: "茨城県", slug: "ibaraki", code: "08000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-tochigi", name: "栃木県", slug: "tochigi", code: "09000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-gunma", name: "群馬県", slug: "gunma", code: "10000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-saitama", name: "埼玉県", slug: "saitama", code: "11000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-chiba", name: "千葉県", slug: "chiba", code: "12000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-tokyo", name: "東京都", slug: "tokyo", code: "13000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-kanagawa", name: "神奈川県", slug: "kanagawa", code: "14000", parentSlug: null, level: 1, region: "関東" },
  { id: "pref-niigata", name: "新潟県", slug: "niigata", code: "15000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-toyama", name: "富山県", slug: "toyama", code: "16000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-ishikawa", name: "石川県", slug: "ishikawa", code: "17000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-fukui", name: "福井県", slug: "fukui", code: "18000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-yamanashi", name: "山梨県", slug: "yamanashi", code: "19000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-nagano", name: "長野県", slug: "nagano", code: "20000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-gifu", name: "岐阜県", slug: "gifu", code: "21000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-shizuoka", name: "静岡県", slug: "shizuoka", code: "22000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-aichi", name: "愛知県", slug: "aichi", code: "23000", parentSlug: null, level: 1, region: "中部" },
  { id: "pref-mie", name: "三重県", slug: "mie", code: "24000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-shiga", name: "滋賀県", slug: "shiga", code: "25000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-kyoto", name: "京都府", slug: "kyoto", code: "26000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-osaka", name: "大阪府", slug: "osaka", code: "27000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-hyogo", name: "兵庫県", slug: "hyogo", code: "28000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-nara", name: "奈良県", slug: "nara", code: "29000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-wakayama", name: "和歌山県", slug: "wakayama", code: "30000", parentSlug: null, level: 1, region: "近畿" },
  { id: "pref-tottori", name: "鳥取県", slug: "tottori", code: "31000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-shimane", name: "島根県", slug: "shimane", code: "32000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-okayama", name: "岡山県", slug: "okayama", code: "33000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-hiroshima", name: "広島県", slug: "hiroshima", code: "34000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-yamaguchi", name: "山口県", slug: "yamaguchi", code: "35000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-tokushima", name: "徳島県", slug: "tokushima", code: "36000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-kagawa", name: "香川県", slug: "kagawa", code: "37000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-ehime", name: "愛媛県", slug: "ehime", code: "38000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-kochi", name: "高知県", slug: "kochi", code: "39000", parentSlug: null, level: 1, region: "中国・四国" },
  { id: "pref-fukuoka", name: "福岡県", slug: "fukuoka", code: "40000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-saga", name: "佐賀県", slug: "saga", code: "41000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-nagasaki", name: "長崎県", slug: "nagasaki", code: "42000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-kumamoto", name: "熊本県", slug: "kumamoto", code: "43000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-oita", name: "大分県", slug: "oita", code: "44000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-miyazaki", name: "宮崎県", slug: "miyazaki", code: "45000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-kagoshima", name: "鹿児島県", slug: "kagoshima", code: "46000", parentSlug: null, level: 1, region: "九州・沖縄" },
  { id: "pref-okinawa", name: "沖縄県", slug: "okinawa", code: "47000", parentSlug: null, level: 1, region: "九州・沖縄" },
];

// 東京23区
export const mockCities: Area[] = [
  { id: "city-chiyoda", name: "千代田区", slug: "chiyoda", code: "13101", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-chuo", name: "中央区", slug: "chuo", code: "13102", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-minato", name: "港区", slug: "minato", code: "13103", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-shinjuku", name: "新宿区", slug: "shinjuku", code: "13104", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-bunkyo", name: "文京区", slug: "bunkyo", code: "13105", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-taito", name: "台東区", slug: "taito", code: "13106", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-sumida", name: "墨田区", slug: "sumida", code: "13107", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-koto", name: "江東区", slug: "koto", code: "13108", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-shinagawa", name: "品川区", slug: "shinagawa", code: "13109", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-meguro", name: "目黒区", slug: "meguro", code: "13110", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-ota", name: "大田区", slug: "ota", code: "13111", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-setagaya", name: "世田谷区", slug: "setagaya", code: "13112", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-shibuya", name: "渋谷区", slug: "shibuya", code: "13113", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-nakano", name: "中野区", slug: "nakano", code: "13114", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-suginami", name: "杉並区", slug: "suginami", code: "13115", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-toshima", name: "豊島区", slug: "toshima", code: "13116", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-kita", name: "北区", slug: "kita", code: "13117", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-arakawa", name: "荒川区", slug: "arakawa", code: "13118", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-itabashi", name: "板橋区", slug: "itabashi", code: "13119", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-nerima", name: "練馬区", slug: "nerima", code: "13120", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-adachi", name: "足立区", slug: "adachi", code: "13121", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-katsushika", name: "葛飾区", slug: "katsushika", code: "13122", parentSlug: "tokyo", level: 2, region: "関東" },
  { id: "city-edogawa", name: "江戸川区", slug: "edogawa", code: "13123", parentSlug: "tokyo", level: 2, region: "関東" },

  // ========================================
  // 神奈川県（横浜市18区 + 主要市）
  // ========================================

  // 横浜市18区
  { id: "city-yokohama-tsurumi", name: "鶴見区", slug: "yokohama-tsurumi", code: "14101", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-kanagawa", name: "神奈川区", slug: "yokohama-kanagawa", code: "14102", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-nishi", name: "西区", slug: "yokohama-nishi", code: "14103", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-naka", name: "中区", slug: "yokohama-naka", code: "14104", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-minami", name: "南区", slug: "yokohama-minami", code: "14105", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-konan", name: "港南区", slug: "yokohama-konan", code: "14106", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-hodogaya", name: "保土ケ谷区", slug: "yokohama-hodogaya", code: "14107", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-asahi", name: "旭区", slug: "yokohama-asahi", code: "14108", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-isogo", name: "磯子区", slug: "yokohama-isogo", code: "14109", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-kanazawa", name: "金沢区", slug: "yokohama-kanazawa", code: "14110", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-kohoku", name: "港北区", slug: "yokohama-kohoku", code: "14111", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-midori", name: "緑区", slug: "yokohama-midori", code: "14112", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-aoba", name: "青葉区", slug: "yokohama-aoba", code: "14113", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-tsuzuki", name: "都筑区", slug: "yokohama-tsuzuki", code: "14114", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-totsuka", name: "戸塚区", slug: "yokohama-totsuka", code: "14115", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-sakae", name: "栄区", slug: "yokohama-sakae", code: "14116", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-izumi", name: "泉区", slug: "yokohama-izumi", code: "14117", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokohama-seya", name: "瀬谷区", slug: "yokohama-seya", code: "14118", parentSlug: "kanagawa", level: 2, region: "関東" },

  // 神奈川県 主要市
  { id: "city-kawasaki", name: "川崎市", slug: "kawasaki", code: "14130", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-sagamihara", name: "相模原市", slug: "sagamihara", code: "14150", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-yokosuka", name: "横須賀市", slug: "yokosuka", code: "14201", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-fujisawa", name: "藤沢市", slug: "fujisawa", code: "14205", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-kamakura", name: "鎌倉市", slug: "kamakura", code: "14204", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-atsugi", name: "厚木市", slug: "atsugi", code: "14212", parentSlug: "kanagawa", level: 2, region: "関東" },
  { id: "city-hiratsuka", name: "平塚市", slug: "hiratsuka", code: "14203", parentSlug: "kanagawa", level: 2, region: "関東" },

  // ========================================
  // 愛知県（名古屋市16区 + 主要市）
  // ========================================

  // 名古屋市16区
  { id: "city-nagoya-chikusa", name: "千種区", slug: "nagoya-chikusa", code: "23101", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-higashi", name: "東区", slug: "nagoya-higashi", code: "23102", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-kita", name: "北区", slug: "nagoya-kita", code: "23103", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-nishi", name: "西区", slug: "nagoya-nishi", code: "23104", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-nakamura", name: "中村区", slug: "nagoya-nakamura", code: "23105", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-naka", name: "中区", slug: "nagoya-naka", code: "23106", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-showa", name: "昭和区", slug: "nagoya-showa", code: "23107", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-mizuho", name: "瑞穂区", slug: "nagoya-mizuho", code: "23108", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-atsuta", name: "熱田区", slug: "nagoya-atsuta", code: "23109", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-nakagawa", name: "中川区", slug: "nagoya-nakagawa", code: "23110", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-minato", name: "港区", slug: "nagoya-minato", code: "23111", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-minami", name: "南区", slug: "nagoya-minami", code: "23112", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-moriyama", name: "守山区", slug: "nagoya-moriyama", code: "23113", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-midori", name: "緑区", slug: "nagoya-midori", code: "23114", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-meito", name: "名東区", slug: "nagoya-meito", code: "23115", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-nagoya-tenpaku", name: "天白区", slug: "nagoya-tenpaku", code: "23116", parentSlug: "aichi", level: 2, region: "中部" },

  // 愛知県 主要市
  { id: "city-toyota", name: "豊田市", slug: "toyota", code: "23211", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-ichinomiya", name: "一宮市", slug: "ichinomiya", code: "23203", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-okazaki", name: "岡崎市", slug: "okazaki", code: "23202", parentSlug: "aichi", level: 2, region: "中部" },
  { id: "city-toyohashi", name: "豊橋市", slug: "toyohashi", code: "23201", parentSlug: "aichi", level: 2, region: "中部" },

  // ========================================
  // 大阪府（大阪市24区 + 主要市）
  // ========================================

  // 大阪市24区
  { id: "city-osaka-kita", name: "北区", slug: "osaka-kita", code: "27127", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-miyakojima", name: "都島区", slug: "osaka-miyakojima", code: "27102", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-fukushima", name: "福島区", slug: "osaka-fukushima", code: "27103", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-konohana", name: "此花区", slug: "osaka-konohana", code: "27104", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-chuo", name: "中央区", slug: "osaka-chuo", code: "27128", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-nishi", name: "西区", slug: "osaka-nishi", code: "27106", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-minato", name: "港区", slug: "osaka-minato", code: "27107", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-taisho", name: "大正区", slug: "osaka-taisho", code: "27108", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-tennoji", name: "天王寺区", slug: "osaka-tennoji", code: "27109", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-naniwa", name: "浪速区", slug: "osaka-naniwa", code: "27111", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-nishiyodogawa", name: "西淀川区", slug: "osaka-nishiyodogawa", code: "27113", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-yodogawa", name: "淀川区", slug: "osaka-yodogawa", code: "27123", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-higashiyodogawa", name: "東淀川区", slug: "osaka-higashiyodogawa", code: "27114", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-higashinari", name: "東成区", slug: "osaka-higashinari", code: "27115", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-ikuno", name: "生野区", slug: "osaka-ikuno", code: "27116", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-asahi", name: "旭区", slug: "osaka-asahi", code: "27117", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-joto", name: "城東区", slug: "osaka-joto", code: "27118", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-tsurumi", name: "鶴見区", slug: "osaka-tsurumi", code: "27124", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-abeno", name: "阿倍野区", slug: "osaka-abeno", code: "27119", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-suminoe", name: "住之江区", slug: "osaka-suminoe", code: "27125", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-sumiyoshi", name: "住吉区", slug: "osaka-sumiyoshi", code: "27120", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-higashisumiyoshi", name: "東住吉区", slug: "osaka-higashisumiyoshi", code: "27121", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-hirano", name: "平野区", slug: "osaka-hirano", code: "27126", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-osaka-nishinari", name: "西成区", slug: "osaka-nishinari", code: "27122", parentSlug: "osaka", level: 2, region: "近畿" },

  // 大阪府 主要市
  { id: "city-sakai", name: "堺市", slug: "sakai", code: "27140", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-higashiosaka", name: "東大阪市", slug: "higashiosaka", code: "27227", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-toyonaka", name: "豊中市", slug: "toyonaka", code: "27203", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-suita", name: "吹田市", slug: "suita", code: "27205", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-hirakata", name: "枚方市", slug: "hirakata", code: "27210", parentSlug: "osaka", level: 2, region: "近畿" },
  { id: "city-takatsuki", name: "高槻市", slug: "takatsuki", code: "27207", parentSlug: "osaka", level: 2, region: "近畿" },

  // ========================================
  // 福岡県（福岡市7区 + 北九州市7区 + 主要市）
  // ========================================

  // 福岡市7区
  { id: "city-fukuoka-higashi", name: "東区", slug: "fukuoka-higashi", code: "40131", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-hakata", name: "博多区", slug: "fukuoka-hakata", code: "40132", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-chuo", name: "中央区", slug: "fukuoka-chuo", code: "40133", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-minami", name: "南区", slug: "fukuoka-minami", code: "40134", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-nishi", name: "西区", slug: "fukuoka-nishi", code: "40135", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-jonan", name: "城南区", slug: "fukuoka-jonan", code: "40136", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-fukuoka-sawara", name: "早良区", slug: "fukuoka-sawara", code: "40137", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },

  // 北九州市7区
  { id: "city-kitakyushu-moji", name: "門司区", slug: "kitakyushu-moji", code: "40101", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-wakamatsu", name: "若松区", slug: "kitakyushu-wakamatsu", code: "40102", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-tobata", name: "戸畑区", slug: "kitakyushu-tobata", code: "40103", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-kokurakita", name: "小倉北区", slug: "kitakyushu-kokurakita", code: "40104", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-kokuraminami", name: "小倉南区", slug: "kitakyushu-kokuraminami", code: "40105", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-yahatahigashi", name: "八幡東区", slug: "kitakyushu-yahatahigashi", code: "40106", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
  { id: "city-kitakyushu-yahatanishi", name: "八幡西区", slug: "kitakyushu-yahatanishi", code: "40107", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },

  // 福岡県 主要市
  { id: "city-kurume", name: "久留米市", slug: "kurume", code: "40203", parentSlug: "fukuoka", level: 2, region: "九州・沖縄" },
];

export const mockAreas: Area[] = [...mockPrefectures, ...mockCities];
