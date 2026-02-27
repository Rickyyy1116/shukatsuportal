-- =============================================
-- 斎場データ追加: yamanashi batch2 (19件)
-- =============================================

-- 1. 甲府市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '甲府市斎場',
  'kofu-shi-saijo',
  'public_crematorium',
  '甲府市が運営する公営斎場。甲府駅からタクシー約7分のアクセス。火葬施設と式場を備え、甲府市民は火葬料の優遇措置があります。富士山を望む環境で故人をお見送りできます。',
  '福井県甲府市桜井町16-1',
  'yamanashi', 'kofu',
  35.67, 138.575,
  'JR中央本線 甲府駅',
  18,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '甲府市',
  3.8, 30
);

-- 2. アピオセレモニーホール天昇殿
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'アピオセレモニーホール天昇殿',
  'apio-tensyoden-kofu',
  'private_hall',
  '甲府市の大型葬儀会館。JR南甲府駅から徒歩1分という抜群のアクセスが特長。山梨県内で多数の実績を持つアピオグループの旗艦施設で、大規模葬から家族葬まで幅広く対応しています。',
  '山梨県甲府市住吉5-21-18',
  'yamanashi', 'kofu',
  35.645, 138.57,
  'JR身延線 南甲府駅',
  1,
  150, 3, false, 80,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アピオ',
  4.3, 38
);

-- 3. 宝葬祭 宝ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '宝葬祭 宝ホール',
  'takara-hall-kofu',
  'private_hall',
  '甲府市にある宝葬祭の葬儀会館。JR甲府駅から徒歩10分の好立地。山梨県内で長年の実績を持つ地域密着型の葬儀社で、家族葬から一般葬まで丁寧に対応しています。',
  '山梨県甲府市北口3-6-22',
  'yamanashi', 'kofu',
  35.672, 138.568,
  'JR中央本線 甲府駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社宝葬祭',
  4.2, 28
);

-- 4. コーリングセレモニーホール北璃宮
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'コーリングセレモニーホール北璃宮',
  'calling-hokurikyu-kofu',
  'private_hall',
  '甲府市元紺屋町にあるコーリンググループのセレモニーホール。甲府市中心部に位置し、上品で落ち着いた雰囲気が特長。家族葬から一般葬まで、ご遺族の要望に合わせた式を提供しています。',
  '山梨県甲府市元紺屋町3-12',
  'yamanashi', 'kofu',
  35.666, 138.572,
  'JR中央本線 甲府駅',
  12,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  'コーリンググループ',
  4.1, 25
);

-- 5. 小さなお葬式 甲府ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 甲府ホール',
  'chiisana-ososhiki-kofu',
  'private_hall',
  '全国展開の「小さなお葬式」提携ホール。甲府市内に位置し、低価格ながら質の高いサービスを提供。火葬式から家族葬まで明朗会計のプランが揃い、追加料金なしの安心感が好評です。',
  '山梨県甲府市上石田3-5-18',
  'yamanashi', 'kofu',
  35.655, 138.548,
  'JR中央本線 甲府駅',
  20,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '低価格', '明朗会計', 'バリアフリー'],
  '株式会社ユニクエスト',
  4.0, 14
);

-- 6. 甲府ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '甲府ホール',
  'kofu-hall',
  'private_hall',
  '甲府市にある総合葬儀会館。甲斐住吉駅からのアクセスが良好。家族葬から大規模な一般葬まで対応し、広い駐車場と充実した設備を完備。バリアフリー設計で、ご高齢の方にも安心です。',
  '山梨県甲府市住吉3-20-15',
  'yamanashi', 'kofu',
  35.648, 138.565,
  'JR身延線 甲斐住吉駅',
  12,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 555000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '甲府ホール株式会社',
  4.0, 22
);

-- 7. シティホール富士吉田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'シティホール富士吉田',
  'city-hall-fujiyoshida',
  'private_hall',
  '富士吉田市にある民間葬儀会館。富士山の麓に位置し、家族葬から一般葬まで対応。安置施設を完備し、ご遺族が安心して過ごせる環境を提供しています。24時間365日対応可能です。',
  '山梨県富士吉田市松山1202-1',
  'yamanashi', 'fujiyoshida',
  35.49, 138.8,
  '富士急行 富士山駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備', '24時間対応'],
  'シティホール株式会社',
  4.1, 25
);

-- 8. シティホール下吉田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'シティホール下吉田',
  'city-hall-shimoyoshida',
  'private_hall',
  '富士吉田市富士見にある家族葬向けの葬儀ホール。富士山を望む立地で、安置施設を完備。少人数での温かいお別れに適した空間を提供しています。下吉田駅からのアクセスも良好です。',
  '山梨県富士吉田市富士見5-8-8',
  'yamanashi', 'fujiyoshida',
  35.478, 138.792,
  '富士急行 下吉田駅',
  8,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '家族葬対応', '駐車場完備', 'バリアフリー'],
  'シティホール株式会社',
  4.0, 18
);

-- 9. 富士五湖聖苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '富士五湖聖苑',
  'fujigoko-seien',
  'public_crematorium',
  '富士五湖広域圏の公営斎場。富士河口湖町に位置し、富士吉田市・富士河口湖町・西桂町・忍野村・山中湖村の住民が利用可能。富士山を望む雄大な景観の中で故人をお見送りできます。',
  '山梨県南都留郡富士河口湖町船津6663-1',
  'yamanashi', 'fujiyoshida',
  35.505, 138.758,
  '富士急行 河口湖駅',
  15,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '富士五湖広域行政事務組合',
  3.9, 25
);

-- 10. やすらぎ聖苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'やすらぎ聖苑',
  'yasuragi-seien-kai',
  'public_crematorium',
  '甲斐市にある公営斎場。甲斐市・中央市・昭和町の住民が利用可能。火葬施設と式場を備え、通夜から火葬まで一貫して対応できます。広い駐車場を完備しています。',
  '山梨県甲斐市竜王新町2020-6',
  'yamanashi', 'kai',
  35.66, 138.528,
  'JR中央本線 竜王駅',
  15,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '甲斐市',
  3.9, 25
);

-- 11. 東山聖苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '東山聖苑',
  'higashiyama-seien-yamanashi',
  'public_crematorium',
  '山梨市にある公営斎場。東八代広域行政事務組合が運営し、山梨市・甲州市の住民が利用可能。自然に囲まれた静かな環境で、穏やかに故人をお見送りできます。',
  '山梨県山梨市小原西562',
  'yamanashi', 'yamanashi-city',
  35.71, 138.695,
  'JR中央本線 山梨市駅',
  20,
  60, 1, true, 35,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '東八代広域行政事務組合',
  3.7, 18
);

-- 12. コーリングセレモニーホール東璃宮
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'コーリングセレモニーホール東璃宮',
  'calling-torikyu-yamanashi',
  'private_hall',
  '山梨市にあるコーリンググループのセレモニーホール。家族葬から一般葬まで対応し、落ち着いた雰囲気の中で心のこもったお見送りをサポート。ぶどうの丘で知られる山梨市で地域に密着したサービスを提供しています。',
  '山梨県山梨市落合264',
  'yamanashi', 'yamanashi-city',
  35.695, 138.678,
  'JR中央本線 山梨市駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  'コーリンググループ',
  4.0, 20
);

-- 13. シティホール都留
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'シティホール都留',
  'city-hall-tsuru',
  'private_hall',
  '都留市にある民間葬儀会館。都留文科大学のある学園都市・都留市で、家族葬から一般葬まで対応。24時間対応可能で、急なご依頼にも丁寧にサポートします。',
  '山梨県都留市田野倉1080-4',
  'yamanashi', 'tsuru',
  35.555, 138.908,
  '富士急行 田野倉駅',
  5,
  60, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '24時間対応', '駐車場完備'],
  'シティホール株式会社',
  4.0, 15
);

-- 14. セレモホールはなさき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモホールはなさき',
  'ceremo-hall-hanasaki-otsuki',
  'private_hall',
  '大月市にある葬儀会館。JR大月駅からのアクセスが良好で、中央自動車道大月ICにも近い便利な立地。家族葬から一般葬まで対応し、地域に密着した温かいサービスを提供しています。',
  '山梨県大月市大月町花咲382',
  'yamanashi', 'otsuki',
  35.608, 138.94,
  'JR中央本線 大月駅',
  10,
  60, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '駐車場完備'],
  'セレモホール株式会社',
  3.9, 15
);

-- 15. シティホール大月
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'シティホール大月',
  'city-hall-otsuki',
  'private_hall',
  '大月市にある民間葬儀会館。安置施設を完備し、家族葬から一般葬まで対応可能。大月市・上野原市エリアの方にご利用いただいています。',
  '山梨県大月市七保町下和田505',
  'yamanashi', 'otsuki',
  35.612, 138.948,
  'JR中央本線 大月駅',
  15,
  50, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー'],
  'シティホール株式会社',
  3.8, 12
);

-- 16. アピオセレモニーホール舟山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'アピオセレモニーホール舟山',
  'apio-funayama-nirasaki',
  'private_hall',
  '韮崎市にあるアピオグループのセレモニーホール。韮崎市・北杜市エリアの方を中心にご利用いただいています。家族葬から一般葬まで対応し、山々に囲まれた自然豊かな環境が特長です。',
  '山梨県韮崎市大草町若尾1303',
  'yamanashi', 'nirasaki',
  35.718, 138.452,
  'JR中央本線 韮崎駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アピオ',
  4.0, 18
);

-- 17. コーリングセレモニーホール璃宮庵
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'コーリングセレモニーホール璃宮庵',
  'calling-rikyuan-fuefuki',
  'private_hall',
  '笛吹市石和町にあるコーリンググループのセレモニーホール。石和温泉で知られるエリアに位置し、家族葬から一般葬まで対応。温泉街ならではの落ち着いた雰囲気が特長です。',
  '山梨県笛吹市石和町広瀬1374-150',
  'yamanashi', 'fuefuki',
  35.658, 138.638,
  'JR中央本線 石和温泉駅',
  12,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  'コーリンググループ',
  4.1, 22
);

-- 18. アピオセレモニーホール田富
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'アピオセレモニーホール田富',
  'apio-tatomi-chuo',
  'private_hall',
  '中央市にあるアピオグループのセレモニーホール。中央市・甲府市南部エリアの方にご利用いただいています。家族葬から一般葬まで幅広く対応し、充実した設備を備えた施設です。',
  '山梨県中央市山之神2956-5',
  'yamanashi', 'chuo-yamanashi',
  35.598, 138.538,
  'JR身延線 東花輪駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アピオ',
  4.1, 20
);

-- 19. 三郡ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '三郡ホール',
  'sangun-hall-minami-alps',
  'private_hall',
  '南アルプス市にある地域密着型の葬儀会館。南アルプスの麓に位置し、家族葬から一般葬まで対応。地域の皆様に長年親しまれている施設で、丁寧なサービスが好評です。',
  '山梨県南アルプス市和泉984-1',
  'yamanashi', 'minami-alps',
  35.61, 138.465,
  'JR身延線 東花輪駅',
  25,
  60, 1, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '地域密着', '駐車場完備', 'バリアフリー'],
  '三郡ホール株式会社',
  3.9, 15
);

