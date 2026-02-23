// 有効なカテゴリスラッグ一覧
export const VALID_CATEGORIES = [
  "sougi",
  "ohaka",
  "kaigo",
  "souzoku",
  "ihinseiri",
  "hoken",
] as const;

export type CategorySlug = (typeof VALID_CATEGORIES)[number];

// 地域グループ
export const REGION_GROUPS = [
  {
    name: "北海道・東北",
    prefectures: [
      "hokkaido",
      "aomori",
      "iwate",
      "miyagi",
      "akita",
      "yamagata",
      "fukushima",
    ],
  },
  {
    name: "関東",
    prefectures: [
      "ibaraki",
      "tochigi",
      "gunma",
      "saitama",
      "chiba",
      "tokyo",
      "kanagawa",
    ],
  },
  {
    name: "中部",
    prefectures: [
      "niigata",
      "toyama",
      "ishikawa",
      "fukui",
      "yamanashi",
      "nagano",
      "gifu",
      "shizuoka",
      "aichi",
    ],
  },
  {
    name: "近畿",
    prefectures: ["mie", "shiga", "kyoto", "osaka", "hyogo", "nara", "wakayama"],
  },
  {
    name: "中国・四国",
    prefectures: [
      "tottori",
      "shimane",
      "okayama",
      "hiroshima",
      "yamaguchi",
      "tokushima",
      "kagawa",
      "ehime",
      "kochi",
    ],
  },
  {
    name: "九州・沖縄",
    prefectures: [
      "fukuoka",
      "saga",
      "nagasaki",
      "kumamoto",
      "oita",
      "miyazaki",
      "kagoshima",
      "okinawa",
    ],
  },
] as const;

// 料金帯ラベル
export const PRICE_RANGE_LABELS: Record<string, string> = {
  low: "リーズナブル",
  mid: "標準",
  high: "ハイグレード",
};

// 特徴一覧
export const FEATURE_OPTIONS = [
  "24時間対応",
  "駐車場あり",
  "家族葬対応",
  "オンライン相談可",
  "バリアフリー",
  "送迎あり",
  "クレジットカード対応",
  "分割払い対応",
] as const;

// サイト情報
export const SITE_NAME = "安心終活ナビ";
export const SITE_URL = "https://portal.shukatsu-ansin.com";
export const WP_URL = "https://shukatsu-ansin.com";
