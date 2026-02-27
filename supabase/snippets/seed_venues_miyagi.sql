-- =============================================
-- 斎場データ: 宮城県 120件
-- 仙台市80件, 石巻市8件, 大崎市5件, 名取市4件,
-- 多賀城市3件, 塩竈市3件, 登米市3件, 栗原市3件,
-- 気仙沼市2件, 岩沼市2件, 白石市2件, 東松島市2件,
-- 富谷市2件, 角田市1件
-- =============================================

-- 1. メモリアルホール菩提樹 矢本館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール菩提樹 矢本館',
  'miyagi-bodaiju-yamoto',
  'private_hall',
  '東松島市矢本に位置するメモリアルホール菩提樹。矢本駅から車で約5分の立地で、東松島市の方に広く利用されています。家族葬から一般葬まで対応可能。',
  '宮城県東松島市矢本字上河戸36-1',
  'miyagi', 'higashimatsushima',
  38.428, 141.213,
  'JR仙石線 矢本駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'メモリアルホール菩提樹',
  4.0, 14
);

-- 2. 河南地区葬祭場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '河南地区葬祭場',
  'miyagi-kanan-sousaijo',
  'public_facility',
  '東松島市河南地区に位置する公共の葬祭場。地域の方に利用されている施設で、リーズナブルな価格で葬儀が行えます。家族葬に適した施設です。',
  '宮城県東松島市小野字新宮前5-1',
  'miyagi', 'higashimatsushima',
  38.441, 141.189,
  'JR仙石線 鹿妻駅',
  15,
  40, 1, false, 20,
  '{"式場": true, "控室": true, "駐車場": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 200000}]',
  ARRAY['家族葬対応', '公共施設', '低価格'],
  '東松島市',
  3.6, 8
);

-- 3. セレモニーホールやもと
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールやもと',
  'miyagi-ceremony-yamoto',
  'private_hall',
  '石巻市旧矢本エリアに位置するセレモニーホール。JR矢本駅から近い立地で、石巻市東部の方に利用されています。家族葬を中心に、地域に密着したサービスを提供。',
  '宮城県石巻市門脇字浦屋敷40-1',
  'miyagi', 'ishinomaki',
  38.413, 141.318,
  'JR仙石線 石巻駅',
  20,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['家族葬対応'],
  'セレモニーホールやもと',
  3.9, 12
);

-- 4. メモリアルホール菩提樹 石巻
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール菩提樹 石巻',
  'miyagi-bodaiju-ishinomaki',
  'private_hall',
  '石巻市に位置するメモリアルホール菩提樹。石巻駅から車で約8分の立地で、家族葬から一般葬まで対応。落ち着いた雰囲気の中で、心のこもった葬儀を提供しています。',
  '宮城県石巻市蛇田字新上沼70-1',
  'miyagi', 'ishinomaki',
  38.437, 141.281,
  'JR仙石線 蛇田駅',
  10,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'メモリアルホール菩提樹',
  4.0, 16
);

-- 5. 家族葬の仙和 石巻ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 石巻ホール',
  'miyagi-senwa-ishinomaki',
  'private_hall',
  '石巻市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、石巻市の方に利用されています。安置室完備で、家族だけの静かなお別れが可能です。',
  '宮城県石巻市中里3-8-15',
  'miyagi', 'ishinomaki',
  38.422, 141.299,
  'JR仙石線 石巻駅',
  12,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.1, 13
);

-- 6. 密葬館大街道斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '密葬館大街道斎場 清月記',
  'miyagi-seigetsuki-missou-ookaidou',
  'private_hall',
  '清月記が運営する石巻市の家族葬専用ホール。大街道斎場に隣接し、完全貸切型の密葬館。少人数の家族葬に特化した温かみのある空間で、プライバシーに配慮した設計です。',
  '宮城県石巻市大街道北3-3-10',
  'miyagi', 'ishinomaki',
  38.43, 141.303,
  'JR仙石線 石巻駅',
  15,
  20, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '株式会社清月記',
  4.2, 11
);

-- 7. 石巻みなと斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '石巻みなと斎場 清月記',
  'miyagi-seigetsuki-ishinomaki-minato',
  'private_hall',
  '石巻市湊東に位置する清月記の斎場。石巻港エリアに近く、湊・渡波方面の方に利用されています。家族葬から一般葬まで対応し、地域に密着したサービスを提供。',
  '宮城県石巻市湊東2-6-1',
  'miyagi', 'ishinomaki',
  38.415, 141.326,
  'JR仙石線 石巻駅',
  25,
  60, 1, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 16
);

-- 8. 石巻大街道斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '石巻大街道斎場 清月記',
  'miyagi-seigetsuki-ishinomaki-ookaidou',
  'private_hall',
  '石巻市大街道北に位置する清月記の斎場。石巻駅から車で約5分の好アクセス。国道沿いの分かりやすい立地で、石巻市中心部の方に広く利用されています。',
  '宮城県石巻市大街道北3-3-8',
  'miyagi', 'ishinomaki',
  38.43, 141.302,
  'JR仙石線 石巻駅',
  15,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 18
);

-- 9. 石巻市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '石巻市斎場',
  'miyagi-ishinomaki-shisaijo',
  'public_crematorium',
  '石巻市が運営する公営火葬場。石巻市民を中心に火葬場として利用されています。告別室も備えており、火葬式にも対応。市民は割引料金で利用可能です。',
  '宮城県石巻市大瓜字棚橋山1',
  'miyagi', 'ishinomaki',
  38.449, 141.277,
  'JR石巻線 前谷地駅',
  30,
  50, 1, true, 40,
  '{"控室": true, "待合室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '石巻市',
  3.6, 15
);

-- 10. 石巻斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '石巻斎場 清月記',
  'miyagi-seigetsuki-ishinomaki',
  'private_hall',
  '石巻市南中里に位置する清月記の斎場。石巻エリア最大級の葬儀場で、家族葬から大規模な一般葬まで対応可能。石巻駅から車で約10分のアクセスです。',
  '宮城県石巻市南中里4-7-23',
  'miyagi', 'ishinomaki',
  38.419, 141.3,
  'JR仙石線 石巻駅',
  20,
  100, 2, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー', '大規模'],
  '株式会社清月記',
  4.1, 20
);

-- 11. 岩沼セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '岩沼セレモニーホール',
  'miyagi-iwanuma-ceremony',
  'private_hall',
  '岩沼市に位置するセレモニーホール。岩沼駅から車で約5分の立地で、岩沼市・亘理町エリアの方に利用されています。家族葬から一般葬まで対応。',
  '宮城県岩沼市桜3-5-12',
  'miyagi', 'iwanuma',
  38.107, 140.873,
  'JR東北本線 岩沼駅',
  10,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]',
  ARRAY['家族葬対応'],
  '岩沼セレモニー',
  3.9, 11
);

-- 12. 岩沼市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '岩沼市斎場',
  'miyagi-iwanuma-shisaijo',
  'public_crematorium',
  '岩沼市が運営する公営火葬場。岩沼市・亘理町の住民に利用されており、仙南地域の主要な火葬場の一つ。告別室も備えた施設です。',
  '宮城県岩沼市三色吉字雷神山7-1',
  'miyagi', 'iwanuma',
  38.113, 140.868,
  'JR東北本線 岩沼駅',
  20,
  40, 1, true, 25,
  '{"控室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '岩沼市',
  3.5, 9
);

-- 13. 角田セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '角田セレモニーホール',
  'miyagi-kakuda-ceremony',
  'private_hall',
  '角田市に位置するセレモニーホール。角田駅から車で約5分の立地で、角田市・丸森町エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '宮城県角田市角田字牛舘10-5',
  'miyagi', 'kakuda',
  37.975, 140.781,
  '阿武隈急行 角田駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 480000}]',
  ARRAY['家族葬対応'],
  '角田セレモニー',
  3.8, 10
);

-- 14. 気仙沼セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '気仙沼セレモニーホール',
  'miyagi-kesennuma-ceremony',
  'private_hall',
  '気仙沼市に位置するセレモニーホール。気仙沼駅から車で約10分の立地で、気仙沼市の方に広く利用されています。家族葬から一般葬まで対応し、地域に密着したサービスを提供。',
  '宮城県気仙沼市古町3-4-25',
  'miyagi', 'kesennuma',
  38.908, 141.572,
  'JR大船渡BRT 気仙沼駅',
  15,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['家族葬対応'],
  '気仙沼セレモニー',
  3.9, 12
);

-- 15. 気仙沼市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '気仙沼市斎場',
  'miyagi-kesennuma-shisaijo',
  'public_crematorium',
  '気仙沼市が運営する公営火葬場。気仙沼市全域の住民に利用されており、三陸海岸エリアの主要な火葬場。告別室も備えた施設です。',
  '宮城県気仙沼市赤岩杉ノ沢47-6',
  'miyagi', 'kesennuma',
  38.907, 141.569,
  'JR大船渡BRT 気仙沼駅',
  20,
  40, 1, true, 30,
  '{"控室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '気仙沼市',
  3.5, 9
);

-- 16. 家族葬の仙和 栗原ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 栗原ホール',
  'miyagi-senwa-kurihara',
  'private_hall',
  '栗原市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、栗原市の方に利用されています。築館エリアに位置し、安置室完備の温かみあるホールです。',
  '宮城県栗原市築館字留場薬師5-10',
  'miyagi', 'kurihara',
  38.732, 141.022,
  'JR東北新幹線 くりこま高原駅',
  25,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  3.9, 8
);

-- 17. 栗原メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '栗原メモリアルホール',
  'miyagi-kurihara-memorial',
  'private_hall',
  '栗原市築館に位置するメモリアルホール。くりこま高原駅から車で約10分の立地。家族葬から一般葬まで対応し、栗原市の方に広く利用されています。',
  '宮城県栗原市築館字伊豆2-6-15',
  'miyagi', 'kurihara',
  38.733, 141.017,
  'JR東北新幹線 くりこま高原駅',
  20,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 480000}]',
  ARRAY['家族葬対応'],
  '栗原メモリアル',
  3.8, 11
);

-- 18. 栗原市三の迫斎苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '栗原市三の迫斎苑',
  'miyagi-kurihara-sanoen',
  'public_crematorium',
  '栗原市が運営する公営火葬場。栗原市全域の住民に利用されています。自然豊かな環境の中に位置し、静かな雰囲気で故人をお見送りできます。',
  '宮城県栗原市築館字萩沢二ノ丁3-1',
  'miyagi', 'kurihara',
  38.73, 141.02,
  'JR東北新幹線 くりこま高原駅',
  30,
  40, 1, true, 30,
  '{"控室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '栗原市',
  3.5, 8
);

-- 19. みおくり邸宅 名取
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'みおくり邸宅 名取',
  'miyagi-miokuri-natori',
  'private_hall',
  '名取市に位置する家族葬専用のみおくり邸宅。一軒家風の温かみある空間で、家族だけの静かなお見送りに最適。名取駅から車で約5分のアクセスです。',
  '宮城県名取市増田4-2-20',
  'miyagi', 'natori',
  38.173, 140.887,
  'JR東北本線 名取駅',
  10,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  'みおくり邸宅',
  4.3, 14
);

-- 20. 名取セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '名取セレモニーホール',
  'miyagi-natori-ceremony',
  'private_hall',
  '名取市に位置するセレモニーホール。名取駅から車で約7分の立地で、名取市・岩沼市エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '宮城県名取市大手町5-8-10',
  'miyagi', 'natori',
  38.17, 140.891,
  'JR東北本線 名取駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '名取セレモニー',
  4.0, 16
);

-- 21. 名取市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '名取市斎場',
  'miyagi-natori-shisaijo',
  'public_crematorium',
  '名取市が運営する公営火葬場。名取市民を中心に利用されており、告別室も備えています。館腰駅から車で約10分の立地で、静かな環境の中にあります。',
  '宮城県名取市愛島笠島字東谷地100',
  'miyagi', 'natori',
  38.161, 140.862,
  'JR東北本線 館腰駅',
  20,
  50, 1, true, 30,
  '{"控室": true, "待合室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '名取市',
  3.6, 13
);

-- 22. 家族葬の仙和 名取ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 名取ホール',
  'miyagi-senwa-natori',
  'private_hall',
  '名取市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、名取駅から近い立地。安置室完備で、少人数のお見送りに最適です。',
  '宮城県名取市飯野坂3-5-12',
  'miyagi', 'natori',
  38.176, 140.882,
  'JR東北本線 名取駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 12
);

-- 23. JAいしのまき古川斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JAいしのまき古川斎場',
  'miyagi-ja-furukawa-saijo',
  'private_hall',
  '大崎市古川に位置するJA系列の葬儀場。JAいしのまきが運営し、組合員向けの割引プランも用意。古川駅から車で約10分の立地で、大崎市の方に広く利用されています。',
  '宮城県大崎市古川穂波2-8-15',
  'miyagi', 'osaki',
  38.578, 140.96,
  'JR陸羽東線 古川駅',
  15,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]',
  ARRAY['家族葬対応', 'バリアフリー', 'JA組合員割引'],
  'JAいしのまき',
  3.9, 15
);

-- 24. 大崎セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '大崎セレモニーホール',
  'miyagi-osaki-ceremony-hall',
  'private_hall',
  '大崎市古川に位置するセレモニーホール。古川駅から車で約8分の立地。家族葬から一般葬まで対応し、大崎平野エリアの方に広く利用されている地域の代表的な葬儀場です。',
  '宮城県大崎市古川李埣3-5-20',
  'miyagi', 'osaki',
  38.575, 140.952,
  'JR陸羽東線 古川駅',
  12,
  100, 2, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '大崎セレモニー',
  4.0, 17
);

-- 25. 大崎市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '大崎市斎場',
  'miyagi-osaki-shisaijo',
  'public_crematorium',
  '大崎市が運営する公営火葬場。古川駅から車で約15分の立地で、大崎市民を中心に利用されています。告別室も備えており、火葬式にも対応可能です。',
  '宮城県大崎市古川小林字新南沢1',
  'miyagi', 'osaki',
  38.572, 140.958,
  'JR陸羽東線 古川駅',
  30,
  50, 1, true, 40,
  '{"控室": true, "待合室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '大崎市',
  3.6, 12
);

-- 26. 家族葬のファミーユ大崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のファミーユ大崎',
  'miyagi-famille-osaki',
  'private_hall',
  '大崎市に位置する家族葬のファミーユ。1日1組貸切の家族葬専用ホールで、少人数の温かい葬儀に特化。古川エリアの方に利用されています。',
  '宮城県大崎市古川沢田字新大崎5-2',
  'miyagi', 'osaki',
  38.58, 140.966,
  'JR陸羽東線 古川駅',
  15,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '家族葬のファミーユ',
  4.1, 11
);

-- 27. 鳴子温泉メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '鳴子温泉メモリアルホール',
  'miyagi-naruko-memorial',
  'private_hall',
  '大崎市鳴子温泉エリアに位置するメモリアルホール。鳴子温泉駅から近い立地で、鳴子・岩出山エリアの方に利用されています。家族葬を中心にサービスを提供。',
  '宮城県大崎市鳴子温泉字町58-1',
  'miyagi', 'osaki',
  38.731, 140.728,
  'JR陸羽東線 鳴子温泉駅',
  8,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '駅近'],
  '鳴子メモリアル',
  3.8, 9
);

-- 28. ごんきや仙台荒井ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ごんきや仙台荒井ホール',
  'miyagi-gonkiya-arai',
  'private_hall',
  '仙台市宮城野区荒井エリアに位置するごんきやの葬儀ホール。地下鉄東西線荒井駅から徒歩圏内で、新興住宅地である荒井・六丁の目エリアの方に利用されています。家族葬に対応。',
  '宮城県仙台市若林区荒井東1-3-5',
  'miyagi', 'sendai',
  38.248, 140.929,
  '地下鉄東西線 荒井駅',
  8,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '株式会社ごんきや',
  4.1, 14
);

-- 29. ごんきや太白ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ごんきや太白ホール',
  'miyagi-gonkiya-taihaku',
  'private_hall',
  '仙台市太白区に位置するごんきやの葬儀ホール。太白区の住宅街に位置し、家族葬を中心に地域の方に利用されています。温かみのある空間でアットホームな葬儀を提供。',
  '宮城県仙台市太白区郡山4-5-15',
  'miyagi', 'sendai',
  38.221, 140.867,
  'JR東北本線 太子堂駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社ごんきや',
  4.0, 13
);

-- 30. ごんきや泉ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ごんきや泉ホール',
  'miyagi-gonkiya-izumi',
  'private_hall',
  '仙台市泉区に位置するごんきやの葬儀ホール。泉区の住宅街に位置し、家族葬を中心に地域の方に利用されています。温かみのあるサービスと適正価格が好評です。',
  '宮城県仙台市泉区将監8-10-3',
  'miyagi', 'sendai',
  38.325, 140.875,
  '地下鉄南北線 泉中央駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社ごんきや',
  4.0, 13
);

-- 31. ごんきや若林ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ごんきや若林ホール',
  'miyagi-gonkiya-wakabayashi',
  'private_hall',
  '仙台市若林区に位置するごんきやの葬儀ホール。若林区の住宅街に位置し、地域の方に広く利用されています。家族葬を中心に、温かみのあるサービスを提供しています。',
  '宮城県仙台市若林区若林3-10-15',
  'miyagi', 'sendai',
  38.241, 140.903,
  '地下鉄東西線 連坊駅',
  15,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社ごんきや',
  4.0, 14
);

-- 32. セレモール仙台
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール仙台',
  'miyagi-ceremor-sendai',
  'private_hall',
  '仙台市青葉区郷六に位置するあいあーる葬祭会館セレモールの本館。大規模な葬儀にも対応可能な広い式場を備え、一般葬から社葬まで幅広く対応。昭和36年創業の老舗葬儀社が運営しています。',
  '宮城県仙台市青葉区郷六字舘22-1',
  'miyagi', 'sendai',
  38.272, 140.823,
  'JR仙山線 葛岡駅',
  15,
  200, 3, false, 100,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}, {"type": "shaso", "label": "社葬プラン", "priceFrom": 1200000}]',
  ARRAY['家族葬対応', '大規模', '宿泊可能', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.1, 22
);

-- 33. セレモール仙台別館 こもれび
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール仙台別館 こもれび',
  'miyagi-ceremor-komorebi',
  'private_hall',
  'セレモール仙台の別館として運営される家族葬専用ホール。少人数の家族葬に特化した温かみのある空間で、1日1組貸切で利用できます。プライベートな空間で故人とゆっくりお別れの時間を過ごせます。',
  '宮城県仙台市青葉区郷六字舘23-5',
  'miyagi', 'sendai',
  38.272, 140.824,
  'JR仙山線 葛岡駅',
  15,
  30, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  'あいあーる葬祭会館',
  4.2, 18
);

-- 34. セレモール八木山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール八木山',
  'miyagi-ceremor-yagiyama',
  'private_hall',
  '仙台市太白区八木山に位置するセレモールの式場。八木山動物公園駅から車で5分の立地。八木山エリアの方に利用されており、家族葬を中心に温かみのあるサービスを提供。',
  '宮城県仙台市太白区八木山南2-1-12',
  'miyagi', 'sendai',
  38.238, 140.85,
  '地下鉄東西線 八木山動物公園駅',
  12,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'あいあーる葬祭会館',
  3.9, 14
);

-- 35. セレモール南光台
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール南光台',
  'miyagi-ceremor-nankodai',
  'private_hall',
  '仙台市泉区南光台に位置するセレモールの式場。南光台・旭ヶ丘エリアの方に利用されており、住宅街の中に位置する落ち着いた葬儀場。家族葬から一般葬まで対応しています。',
  '宮城県仙台市泉区南光台4-10-3',
  'miyagi', 'sendai',
  38.301, 140.898,
  '地下鉄南北線 旭ヶ丘駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'あいあーる葬祭会館',
  3.9, 14
);

-- 36. セレモール太白
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール太白',
  'miyagi-ceremor-taihaku',
  'private_hall',
  '仙台市太白区に位置するセレモールの式場。太白区・長町エリアの方に広く利用されており、家族葬から一般葬まで対応可能。充実した設備と丁寧なサービスが好評です。',
  '宮城県仙台市太白区長町5-3-20',
  'miyagi', 'sendai',
  38.228, 140.879,
  'JR東北本線 長町駅',
  5,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 17
);

-- 37. セレモール宮城野
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール宮城野',
  'miyagi-ceremor-miyagino',
  'private_hall',
  '仙台市宮城野区に位置するセレモールの式場。宮城野区・若林区エリアの方に広く利用されています。一般葬から家族葬まで対応可能で、地域に密着したサービスを提供しています。',
  '宮城県仙台市宮城野区原町3-5-25',
  'miyagi', 'sendai',
  38.271, 140.907,
  'JR仙石線 陸前原ノ町駅',
  7,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 18
);

-- 38. セレモール小田原
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール小田原',
  'miyagi-ceremor-odawara',
  'private_hall',
  '仙台市宮城野区小田原に位置するセレモールの式場。仙台駅東口エリアからのアクセスが良好。家族葬を中心に、少人数の葬儀に適した温かみのある空間を提供しています。',
  '宮城県仙台市宮城野区小田原1-5-15',
  'miyagi', 'sendai',
  38.264, 140.889,
  'JR東北本線 仙台駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 15
);

-- 39. セレモール泉中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール泉中央',
  'miyagi-ceremor-izumi-chuo',
  'private_hall',
  '仙台市泉区泉中央に位置するセレモールの式場。泉中央駅から近い好立地で、泉区の方に広く利用されています。家族葬から一般葬まで対応可能な設備を備えています。',
  '宮城県仙台市泉区泉中央3-20-5',
  'miyagi', 'sendai',
  38.322, 140.879,
  '地下鉄南北線 泉中央駅',
  7,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 17
);

-- 40. セレモール泉市名坂
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール泉市名坂',
  'miyagi-ceremor-izumi-ichinazaka',
  'private_hall',
  '仙台市泉区市名坂に位置するセレモールの式場。泉区南部の市名坂・八乙女エリアの方に利用されています。家族葬を中心に、温かみのあるサービスを提供しています。',
  '宮城県仙台市泉区市名坂字町84-3',
  'miyagi', 'sendai',
  38.315, 140.89,
  '地下鉄南北線 八乙女駅',
  8,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 15
);

-- 41. セレモール霞目
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール霞目',
  'miyagi-ceremor-kasumi',
  'private_hall',
  '仙台市若林区霞目に位置するセレモールの式場。若林区南部エリアの方に利用されており、家族葬から一般葬まで対応可能。広い駐車場を完備し、車でのアクセスが便利です。',
  '宮城県仙台市若林区上飯田4-14-15',
  'miyagi', 'sendai',
  38.236, 140.908,
  '地下鉄東西線 六丁の目駅',
  15,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'あいあーる葬祭会館',
  4.0, 16
);

-- 42. てんれい仙台中央館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'てんれい仙台中央館',
  'miyagi-tenrei-sendai-chuo',
  'private_hall',
  '仙台市青葉区に位置する仙台典礼の式場。仙台駅から車で約10分の立地で、家族葬から一般葬まで対応。地域密着型のきめ細かいサービスが特長で、仙台市民から信頼を得ています。',
  '宮城県仙台市青葉区二日町12-20',
  'miyagi', 'sendai',
  38.272, 140.869,
  '地下鉄南北線 北四番丁駅',
  5,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '仙台典礼',
  4.0, 17
);

-- 43. てんれい東仙台館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'てんれい東仙台館',
  'miyagi-tenrei-higashisendai',
  'private_hall',
  '仙台市宮城野区に位置する仙台典礼の式場。東仙台駅から車で約5分の立地。一般葬から家族葬まで対応可能なホールを併設し、地域密着型のきめ細かいサービスを提供しています。',
  '宮城県仙台市宮城野区東仙台4-7-1',
  'miyagi', 'sendai',
  38.281, 140.909,
  'JR東北本線 東仙台駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '仙台典礼',
  3.9, 16
);

-- 44. ファミーユたいはく
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミーユたいはく',
  'miyagi-famille-taihaku',
  'private_hall',
  '仙台市太白区大野田に位置する家族葬のファミーユ。清月記グループが運営する1日1組貸切の家族葬専用ホール。地下鉄南北線富沢駅から徒歩7分のアクセスの良さが魅力です。',
  '宮城県仙台市太白区大野田5-17-3',
  'miyagi', 'sendai',
  38.218, 140.872,
  '地下鉄南北線 富沢駅',
  7,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '株式会社清月記',
  4.3, 15
);

-- 45. ファミーユながまち
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミーユながまち',
  'miyagi-famille-nagamachi',
  'private_hall',
  '仙台市太白区八本松に位置する家族葬のファミーユ。清月記グループが運営する家族葬専用ホール。JR長町駅から車5分のアクセスで、1日1組貸切のプライベートな空間を提供。',
  '宮城県仙台市太白区八本松1-13-6',
  'miyagi', 'sendai',
  38.225, 140.883,
  'JR東北本線 長町駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '株式会社清月記',
  4.2, 13
);

-- 46. ファミーユ仙台青葉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミーユ仙台青葉',
  'miyagi-famille-aoba',
  'private_hall',
  '仙台市青葉区に位置する家族葬のファミーユの式場。清月記グループが運営し、1日1組貸切の家族葬に特化。木のぬくもりを感じる内装で、温かみのあるお見送りを実現します。',
  '宮城県仙台市青葉区上杉3-8-30',
  'miyagi', 'sendai',
  38.274, 140.873,
  '地下鉄南北線 北四番丁駅',
  7,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '株式会社清月記',
  4.2, 13
);

-- 47. ほこだて仏光堂 宮城野ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ほこだて仏光堂 宮城野ホール',
  'miyagi-hokodate-miyagino',
  'private_hall',
  '仙台市宮城野区に位置するほこだて仏光堂の葬儀ホール。仏壇・仏具の老舗が運営する葬儀場で、伝統を大切にした心のこもった葬儀を提供。家族葬から一般葬まで対応しています。',
  '宮城県仙台市宮城野区萩野町3-8-1',
  'miyagi', 'sendai',
  38.273, 140.9,
  'JR仙石線 宮城野原駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'ほこだて仏光堂',
  4.0, 13
);

-- 48. メモリアルサトー若林
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルサトー若林',
  'miyagi-memorial-sato-wakabayashi',
  'private_hall',
  '仙台市若林区に位置するメモリアルサトーの葬儀場。地域に密着した葬儀社で、若林区を中心にきめ細かいサービスを提供。家族葬から一般葬まで幅広く対応しています。',
  '宮城県仙台市若林区河原町1-5-40',
  'miyagi', 'sendai',
  38.245, 140.881,
  '地下鉄南北線 河原町駅',
  5,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['家族葬対応', '駅近'],
  'メモリアルサトー',
  3.9, 11
);

-- 49. 仙台つばめさわ斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台つばめさわ斎場 清月記',
  'miyagi-seigetsuki-tsubamesawa',
  'private_hall',
  '仙台市泉区つばめさわエリアに位置する清月記の斎場。泉パークタウンに近い住宅街にあり、泉区西部の方に利用されています。家族葬から一般葬まで対応しています。',
  '宮城県仙台市泉区桂3-18-5',
  'miyagi', 'sendai',
  38.33, 140.853,
  '地下鉄南北線 泉中央駅',
  20,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 12
);

-- 50. 仙台七北田斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台七北田斎場 清月記',
  'miyagi-seigetsuki-nanakita',
  'private_hall',
  '仙台市泉区七北田に位置する清月記の斎場。泉区北部の七北田・根白石エリアの方に利用されています。自然豊かな環境の中で、心安らぐ葬儀を執り行えます。',
  '宮城県仙台市泉区七北田字大沢烏谷10-1',
  'miyagi', 'sendai',
  38.34, 140.882,
  '地下鉄南北線 泉中央駅',
  20,
  60, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  3.9, 14
);

-- 51. 仙台中央斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台中央斎場 清月記',
  'miyagi-seigetsuki-chuo',
  'private_hall',
  '仙台市青葉区本町に位置する清月記の中心的斎場。仙台駅から徒歩圏内の好立地で、家族葬から一般葬まで幅広く対応。洗練された内装と充実した設備が特長で、年間を通じて多くの方に利用されています。',
  '宮城県仙台市青葉区本町2-7-4',
  'miyagi', 'sendai',
  38.268, 140.871,
  'JR東北本線 仙台駅',
  12,
  120, 3, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', '宿泊可能', 'バリアフリー'],
  '株式会社清月記',
  4.3, 25
);

-- 52. 仙台中田斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台中田斎場 清月記',
  'miyagi-seigetsuki-nakata',
  'private_hall',
  '仙台市太白区中田に位置する清月記の斎場。太白区南部の中田・名取エリアの方に広く利用されています。家族葬から一般葬まで対応。広い駐車場を完備し、車でのアクセスに便利です。',
  '宮城県仙台市太白区中田5-13-21',
  'miyagi', 'sendai',
  38.208, 140.885,
  'JR東北本線 南仙台駅',
  10,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.1, 19
);

-- 53. 仙台八木山斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台八木山斎場 清月記',
  'miyagi-seigetsuki-yagiyama',
  'private_hall',
  '仙台市太白区八木山エリアに位置する清月記の斎場。地下鉄東西線八木山動物公園駅からのアクセスが良好。八木山・青山・向山エリアの方に利用されています。',
  '宮城県仙台市太白区八木山本町1-33-10',
  'miyagi', 'sendai',
  38.244, 140.858,
  '地下鉄東西線 八木山動物公園駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '株式会社清月記',
  4.0, 16
);

-- 54. 仙台北山イズミティホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台北山イズミティホール',
  'miyagi-kitayama-izumity',
  'private_hall',
  '仙台市青葉区北山エリアに位置する葬儀ホール。閑静な住宅街の中にあり、落ち着いた雰囲気で葬儀を執り行えます。北山駅から徒歩圏内で、家族葬を中心に利用されています。',
  '宮城県仙台市青葉区北山2-5-10',
  'miyagi', 'sendai',
  38.283, 140.86,
  'JR仙山線 北山駅',
  7,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'イズミティ',
  3.9, 14
);

-- 55. 仙台北斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台北斎場 清月記',
  'miyagi-seigetsuki-kita',
  'private_hall',
  '仙台市青葉区北部に位置する清月記の斎場。北仙台エリアの方に広く利用されており、家族葬から一般葬まで対応。落ち着いた雰囲気の式場で、経験豊富なスタッフが心のこもった葬儀をサポートします。',
  '宮城県仙台市青葉区中山8-20-10',
  'miyagi', 'sendai',
  38.296, 140.853,
  'JR仙山線 北山駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.1, 19
);

-- 56. 仙台南光台メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台南光台メモリアルホール',
  'miyagi-sendai-nankodai-memorial',
  'private_hall',
  '仙台市泉区南光台に位置するメモリアルホール。南光台の住宅街にあり、泉区南部・宮城野区北部の方に利用されています。家族葬を中心に、地域に密着したサービスを提供。',
  '宮城県仙台市泉区南光台5-2-20',
  'miyagi', 'sendai',
  38.3, 140.897,
  '地下鉄南北線 旭ヶ丘駅',
  12,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '南光台メモリアル',
  3.9, 11
);

-- 57. 仙台吉成メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台吉成メモリアルホール',
  'miyagi-sendai-yoshinari-memorial',
  'private_hall',
  '仙台市青葉区吉成に位置するメモリアルホール。吉成・中山エリアの住宅街にあり、地域の方に利用されています。家族葬に適した落ち着いた空間を提供しています。',
  '宮城県仙台市青葉区吉成1-15-20',
  'miyagi', 'sendai',
  38.298, 140.843,
  'JR仙山線 国見駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]',
  ARRAY['家族葬対応', '少人数向け'],
  '吉成メモリアル',
  3.9, 10
);

-- 58. 仙台太白斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台太白斎場 清月記',
  'miyagi-seigetsuki-taihaku',
  'private_hall',
  '仙台市太白区鹿野に位置する清月記の斎場。太白区の中心エリアに位置し、地域の方に広く利用されています。家族葬から一般葬まで対応可能で、JR長町駅からのアクセスも良好です。',
  '宮城県仙台市太白区鹿野3-4-13',
  'miyagi', 'sendai',
  38.231, 140.876,
  'JR東北本線 長町駅',
  10,
  100, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー', '大規模'],
  '株式会社清月記',
  4.2, 23
);

-- 59. 仙台宮城野斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台宮城野斎場 清月記',
  'miyagi-seigetsuki-miyagino',
  'private_hall',
  '仙台市宮城野区高砂に位置する清月記の斎場。JR仙石線中野栄駅からのアクセスが良好。家族葬から大規模な一般葬まで対応可能で、広い駐車場を完備しています。',
  '宮城県仙台市宮城野区高砂1-4-5',
  'miyagi', 'sendai',
  38.268, 140.937,
  'JR仙石線 中野栄駅',
  10,
  100, 2, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー', '大規模'],
  '株式会社清月記',
  4.1, 20
);

-- 60. 仙台新寺斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台新寺斎場 清月記',
  'miyagi-seigetsuki-shintera',
  'private_hall',
  '仙台市若林区新寺に位置する清月記の斎場。仙台駅東口から徒歩圏内の好アクセス。新寺通り沿いの寺町エリアに位置し、伝統的な雰囲気の中で格式ある葬儀を執り行えます。',
  '宮城県仙台市若林区新寺4-4-1',
  'miyagi', 'sendai',
  38.259, 140.892,
  'JR東北本線 仙台駅',
  15,
  100, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社清月記',
  4.2, 22
);

-- 61. 仙台東斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台東斎場 清月記',
  'miyagi-seigetsuki-higashi',
  'private_hall',
  '仙台市泉区南光台南に位置する清月記の斎場。泉区南東部・宮城野区北部の方に利用されています。落ち着いた住宅街の中にあり、家族葬から一般葬まで幅広く対応。',
  '宮城県仙台市泉区南光台南3-7-7',
  'miyagi', 'sendai',
  38.302, 140.904,
  '地下鉄南北線 旭ヶ丘駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 18
);

-- 62. 仙台泉斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台泉斎場 清月記',
  'miyagi-seigetsuki-izumi',
  'private_hall',
  '仙台市泉区泉中央に位置する清月記の斎場。地下鉄南北線泉中央駅から近い好立地で、泉区全域の方に広く利用されています。家族葬から大規模な一般葬まで対応可能な複数の式場を備えています。',
  '宮城県仙台市泉区泉中央1-30-1',
  'miyagi', 'sendai',
  38.32, 140.882,
  '地下鉄南北線 泉中央駅',
  5,
  120, 3, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', '大規模', '宿泊可能'],
  '株式会社清月記',
  4.3, 26
);

-- 63. 仙台若林斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台若林斎場 清月記',
  'miyagi-seigetsuki-wakabayashi',
  'private_hall',
  '仙台市若林区に位置する清月記の斎場。若林区の中心エリアに位置し、地域の方に広く利用されています。家族葬から一般葬まで対応可能な複数の式場を備えています。',
  '宮城県仙台市若林区大和町4-15-25',
  'miyagi', 'sendai',
  38.255, 140.898,
  '地下鉄東西線 薬師堂駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 18
);

-- 64. 仙台葬祭式場モンシエル
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台葬祭式場モンシエル',
  'miyagi-monciel-sendai',
  'private_hall',
  '仙台市青葉区に位置する高級感のある葬祭式場。ホテルのような上質な空間で、格式ある葬儀を執り行えます。一般葬から社葬まで幅広く対応し、充実した設備とサービスが好評です。',
  '宮城県仙台市青葉区本町1-11-1',
  'miyagi', 'sendai',
  38.268, 140.873,
  'JR東北本線 仙台駅',
  10,
  200, 3, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 440000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 770000}]',
  ARRAY['家族葬対応', '駅近', '大規模', '宿泊可能'],
  '仙台葬祭',
  4.4, 24
);

-- 65. 仙台駅東口メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙台駅東口メモリアルホール',
  'miyagi-sendai-ekihigashi-memorial',
  'private_hall',
  '仙台市宮城野区榴岡に位置するメモリアルホール。仙台駅東口から徒歩圏内の抜群のアクセスで、遠方からの参列者にも便利。家族葬から一般葬まで対応し、駅前の好立地が特長です。',
  '宮城県仙台市宮城野区榴岡4-6-15',
  'miyagi', 'sendai',
  38.261, 140.888,
  'JR東北本線 仙台駅',
  5,
  80, 2, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '仙台駅東口メモリアル',
  4.1, 18
);

-- 66. 南仙台メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '南仙台メモリアルホール',
  'miyagi-minamisendai-memorial',
  'private_hall',
  '仙台市太白区中田エリアに位置するメモリアルホール。南仙台駅から近く、太白区南部・名取市北部の方に便利な立地。家族葬を中心にリーズナブルな価格で葬儀を提供しています。',
  '宮城県仙台市太白区中田町前沖143-1',
  'miyagi', 'sendai',
  38.204, 140.889,
  'JR東北本線 南仙台駅',
  5,
  50, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 480000}]',
  ARRAY['家族葬対応', '駅近', '低価格'],
  '南仙台メモリアル',
  3.9, 11
);

-- 67. 太白さくらホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '太白さくらホール',
  'miyagi-taihaku-sakura-hall',
  'private_hall',
  '仙台市太白区に位置する家族葬向けの小規模な葬儀場。桜をモチーフにした優しい内装で、温かみのあるお見送りが可能。少人数の家族葬に特化した施設です。',
  '宮城県仙台市太白区富沢南2-8-5',
  'miyagi', 'sendai',
  38.217, 140.867,
  '地下鉄南北線 富沢駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 265000}]',
  ARRAY['家族葬対応', '少人数向け', '低価格'],
  '太白さくらホール',
  3.9, 9
);

-- 68. 太白典礼会館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '太白典礼会館',
  'miyagi-taihaku-tenrei',
  'private_hall',
  '仙台市太白区鹿野に位置する典礼会館。太白区の主要道路沿いにあり、110台分の大駐車場を完備。大規模な一般葬から家族葬まで幅広く対応し、地域に根ざしたサービスを提供しています。',
  '宮城県仙台市太白区鹿野2-19-20',
  'miyagi', 'sendai',
  38.232, 140.874,
  'JR東北本線 長町駅',
  12,
  150, 3, false, 110,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]',
  ARRAY['家族葬対応', '大規模', 'バリアフリー', '宿泊可能'],
  '株式会社博善社',
  4.1, 22
);

-- 69. 家族葬の仙和 仙台あすと長町ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台あすと長町ホール',
  'miyagi-senwa-asuto-nagamachi',
  'private_hall',
  '仙台市太白区あすと長町に位置する家族葬の仙和の式場。JR長町駅前の再開発エリアにあり、アクセス抜群。1日1組貸切の家族葬ホールで、新しく清潔な空間が特長です。',
  '宮城県仙台市太白区あすと長町1-5-15',
  'miyagi', 'sendai',
  38.227, 140.882,
  'JR東北本線 長町駅',
  3,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.3, 14
);

-- 70. 家族葬の仙和 仙台中田ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台中田ホール',
  'miyagi-senwa-nakata',
  'private_hall',
  '仙台市太白区中田に位置する家族葬の仙和の式場。南仙台駅からのアクセスが良好で、太白区南部エリアの方に利用されています。1日1組貸切の家族葬ホールです。',
  '宮城県仙台市太白区中田4-8-12',
  'miyagi', 'sendai',
  38.209, 140.886,
  'JR東北本線 南仙台駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 12
);

-- 71. 家族葬の仙和 仙台北中山ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台北中山ホール',
  'miyagi-senwa-kitanakayama',
  'private_hall',
  '仙台市泉区北中山に位置する家族葬の仙和の式場。泉区西部の北中山エリアの方に利用されています。1日1組貸切の家族葬ホールで、落ち着いた住宅街の中に位置しています。',
  '宮城県仙台市泉区北中山3-10-5',
  'miyagi', 'sendai',
  38.313, 140.857,
  '地下鉄南北線 泉中央駅',
  20,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 10
);

-- 72. 家族葬の仙和 仙台南光台ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台南光台ホール',
  'miyagi-senwa-nankodai',
  'private_hall',
  '仙台市泉区南光台に位置する家族葬の仙和の式場。南光台の閑静な住宅街にあり、1日1組貸切の家族葬ホール。旭ヶ丘駅からバスでもアクセス可能です。',
  '宮城県仙台市泉区南光台7-3-28',
  'miyagi', 'sendai',
  38.303, 140.901,
  '地下鉄南北線 旭ヶ丘駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 11
);

-- 73. 家族葬の仙和 仙台南小泉ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台南小泉ホール',
  'miyagi-senwa-minamikoizumi',
  'private_hall',
  '仙台市若林区南小泉に位置する家族葬の仙和の式場。若林区中央部の住宅街にあり、地域の方に利用されています。1日1組貸切で、静かな環境の中でのお別れが可能です。',
  '宮城県仙台市若林区南小泉3-1-20',
  'miyagi', 'sendai',
  38.247, 140.899,
  '地下鉄東西線 薬師堂駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 10
);

-- 74. 家族葬の仙和 仙台原ノ町ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台原ノ町ホール',
  'miyagi-senwa-haranomachi',
  'private_hall',
  '仙台市宮城野区原町に位置する家族葬の仙和の式場。陸前原ノ町駅から徒歩5分の好アクセス。1日1組貸切の家族葬ホールで、駅近のため公共交通機関での参列にも便利です。',
  '宮城県仙台市宮城野区原町2-3-47',
  'miyagi', 'sendai',
  38.271, 140.905,
  'JR仙石線 陸前原ノ町駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.2, 15
);

-- 75. 家族葬の仙和 仙台名坂ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台名坂ホール',
  'miyagi-senwa-nazaka',
  'private_hall',
  '仙台市泉区市名坂に2026年1月オープンの家族葬の仙和の最新式場。1日1組貸切で安置室完備。新しく清潔な施設で、最新の設備を備えた家族葬ホールです。',
  '宮城県仙台市泉区市名坂字石止4-1',
  'miyagi', 'sendai',
  38.316, 140.893,
  '地下鉄南北線 八乙女駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '新規オープン'],
  '家族葬の仙和',
  4.4, 8
);

-- 76. 家族葬の仙和 仙台土樋ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台土樋ホール',
  'miyagi-senwa-tsuchitoi',
  'private_hall',
  '仙台市若林区土樋に位置する家族葬の仙和の式場。地下鉄南北線愛宕橋駅から近く、公共交通機関でのアクセスが良好。1日1組貸切の家族葬ホールで、仙台市中心部からも近い立地です。',
  '宮城県仙台市若林区土樋250-5',
  'miyagi', 'sendai',
  38.25, 140.878,
  '地下鉄南北線 愛宕橋駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 12
);

-- 77. 家族葬の仙和 仙台大野田ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台大野田ホール',
  'miyagi-senwa-onoda',
  'private_hall',
  '仙台市太白区大野田に位置する家族葬の仙和の式場。富沢駅からアクセスしやすい立地で、太白区南西部の方に利用されています。1日1組貸切の家族葬ホールです。',
  '宮城県仙台市太白区大野田4-20-8',
  'miyagi', 'sendai',
  38.219, 140.874,
  '地下鉄南北線 富沢駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 11
);

-- 78. 家族葬の仙和 仙台宮町ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台宮町ホール',
  'miyagi-senwa-miyamachi',
  'private_hall',
  '仙台市青葉区宮町に位置する家族葬の仙和の式場。東照宮駅から徒歩圏内の好立地。1日1組貸切の家族葬専用ホールで、温かみのある空間の中でお別れの時間を過ごせます。',
  '宮城県仙台市青葉区宮町5-1-16',
  'miyagi', 'sendai',
  38.278, 140.878,
  'JR仙山線 東照宮駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 14
);

-- 79. 家族葬の仙和 仙台幸町ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台幸町ホール',
  'miyagi-senwa-saiwaicho',
  'private_hall',
  '仙台市宮城野区幸町に位置する家族葬の仙和の式場。仙石線陸前原ノ町駅から徒歩圏内。1日1組貸切の家族葬専用ホールで、プライベートな空間でのお別れが可能です。',
  '宮城県仙台市宮城野区幸町3-14-15',
  'miyagi', 'sendai',
  38.27, 140.903,
  'JR仙石線 陸前原ノ町駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 12
);

-- 80. 家族葬の仙和 仙台旭ヶ丘ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台旭ヶ丘ホール',
  'miyagi-senwa-asahigaoka',
  'private_hall',
  '仙台市青葉区旭ヶ丘に位置する家族葬の仙和の式場。地下鉄南北線旭ヶ丘駅から徒歩11分。1日1組貸切で、少人数の家族葬に特化。安置室完備で、故人との最後の時間をゆっくり過ごせます。',
  '宮城県仙台市青葉区旭ヶ丘3-27-3',
  'miyagi', 'sendai',
  38.287, 140.869,
  '地下鉄南北線 旭ヶ丘駅',
  11,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '家族葬の仙和',
  4.2, 16
);

-- 81. 家族葬の仙和 仙台柳生ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台柳生ホール',
  'miyagi-senwa-yanagiu',
  'private_hall',
  '仙台市太白区柳生に位置する家族葬の仙和の式場。太白区南東部の柳生・大野田エリアの方に利用されています。1日1組貸切で、静かな住宅街の中でゆっくりお別れの時間を過ごせます。',
  '宮城県仙台市太白区柳生2-2-3',
  'miyagi', 'sendai',
  38.215, 140.897,
  '地下鉄南北線 富沢駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 11
);

-- 82. 家族葬の仙和 仙台泉中央ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台泉中央ホール',
  'miyagi-senwa-izumi-chuo',
  'private_hall',
  '仙台市泉区泉中央に位置する家族葬の仙和の式場。泉中央駅から徒歩7分の好アクセスで、泉区の方に広く利用されています。1日1組貸切の家族葬ホールで、安置室完備。',
  '宮城県仙台市泉区泉中央1-38-14',
  'miyagi', 'sendai',
  38.321, 140.884,
  '地下鉄南北線 泉中央駅',
  7,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.2, 16
);

-- 83. 家族葬の仙和 仙台福室ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台福室ホール',
  'miyagi-senwa-fukumuro',
  'private_hall',
  '仙台市宮城野区福室に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、安置室も完備。仙石線中野栄駅から徒歩圏内で、宮城野区東部の方に利用されています。',
  '宮城県仙台市宮城野区福室6-1-22',
  'miyagi', 'sendai',
  38.267, 140.944,
  'JR仙石線 中野栄駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '家族葬の仙和',
  4.1, 13
);

-- 84. 家族葬の仙和 仙台荒井ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台荒井ホール',
  'miyagi-senwa-arai',
  'private_hall',
  '仙台市若林区荒井に位置する家族葬の仙和の式場。地下鉄東西線荒井駅から近く、新興住宅地エリアの方に便利な立地。1日1組貸切の家族葬ホールで、安置室も完備しています。',
  '宮城県仙台市若林区荒井3-26-2',
  'miyagi', 'sendai',
  38.247, 140.933,
  '地下鉄東西線 荒井駅',
  7,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 187000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 11
);

-- 85. 家族葬の仙和 仙台西多賀ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台西多賀ホール',
  'miyagi-senwa-nishitaga',
  'private_hall',
  '仙台市太白区西多賀に位置する家族葬の仙和の式場。太白区西部の閑静な住宅街にあり、西多賀・長町南エリアの方に利用されています。1日1組貸切の家族葬専用ホール。',
  '宮城県仙台市太白区西多賀3-1-15',
  'miyagi', 'sendai',
  38.224, 140.859,
  '地下鉄南北線 長町南駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 10
);

-- 86. 家族葬の仙和 仙台郷六ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台郷六ホール',
  'miyagi-senwa-gorokku',
  'private_hall',
  '仙台市青葉区郷六に位置する家族葬の仙和の式場。葛岡斎場に近い立地で、火葬場へのアクセスが良好です。1日1組貸切で、家族だけの静かなお別れの時間を大切にできます。',
  '宮城県仙台市青葉区郷六字新々道4-12',
  'miyagi', 'sendai',
  38.27, 140.828,
  'JR仙山線 葛岡駅',
  12,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切', '火葬場近く'],
  '家族葬の仙和',
  4.0, 12
);

-- 87. 家族葬の仙和 仙台長命ヶ丘ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 仙台長命ヶ丘ホール',
  'miyagi-senwa-chomeigaoka',
  'private_hall',
  '仙台市泉区長命ヶ丘に位置する家族葬の仙和の式場。泉区東部の長命ヶ丘・鶴ヶ丘エリアの方に利用されています。1日1組貸切の家族葬ホールで、安置室を完備。',
  '宮城県仙台市泉区長命ヶ丘3-27-15',
  'miyagi', 'sendai',
  38.31, 140.905,
  '地下鉄南北線 八乙女駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.1, 12
);

-- 88. 密葬館北斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '密葬館北斎場 清月記',
  'miyagi-seigetsuki-missou-kita',
  'private_hall',
  '清月記が運営する家族葬専用の密葬館。完全貸切型で、少人数の家族葬に特化した温かみのあるホールです。プライバシーに配慮した設計で、故人と家族だけの静かなお別れが叶います。',
  '宮城県仙台市青葉区中山8-20-12',
  'miyagi', 'sendai',
  38.296, 140.854,
  'JR仙山線 北山駅',
  15,
  20, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '株式会社清月記',
  4.3, 11
);

-- 89. 密葬館若林斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '密葬館若林斎場 清月記',
  'miyagi-seigetsuki-missou-wakabayashi',
  'private_hall',
  '清月記が運営する若林区の家族葬専用ホール。完全貸切型の密葬館で、少人数の家族葬に特化。プライバシーに配慮された設計で、故人との最後の時間を大切に過ごせます。',
  '宮城県仙台市若林区大和町4-15-27',
  'miyagi', 'sendai',
  38.255, 140.899,
  '地下鉄東西線 薬師堂駅',
  10,
  20, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '1日1組貸切', '少人数向け'],
  '株式会社清月記',
  4.3, 10
);

-- 90. 泉ヶ丘セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '泉ヶ丘セレモニーホール',
  'miyagi-izumigaoka-ceremony',
  'private_hall',
  '仙台市泉区泉ヶ丘に位置するセレモニーホール。泉区東部の住宅街にあり、地域の方に利用されています。家族葬に適した小規模な式場で、リーズナブルな価格が魅力です。',
  '宮城県仙台市泉区泉ヶ丘3-10-5',
  'miyagi', 'sendai',
  38.308, 140.908,
  '地下鉄南北線 八乙女駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 270000}]',
  ARRAY['家族葬対応', '少人数向け', '低価格'],
  '泉ヶ丘セレモニー',
  3.8, 9
);

-- 91. 泉パークタウンメモリアル
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '泉パークタウンメモリアル',
  'miyagi-izumi-parktown-memorial',
  'private_hall',
  '仙台市泉区の泉パークタウンエリアに位置する葬儀場。高級住宅街にふさわしい上質な空間で、家族葬を中心にきめ細かいサービスを提供。緑豊かな環境が特長です。',
  '宮城県仙台市泉区高森4-2-15',
  'miyagi', 'sendai',
  38.332, 140.859,
  '地下鉄南北線 泉中央駅',
  25,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}]',
  ARRAY['家族葬対応', '少人数向け'],
  '泉パークタウンメモリアル',
  4.2, 9
);

-- 92. 泉中央メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '泉中央メモリアルホール',
  'miyagi-izumi-chuo-memorial',
  'private_hall',
  '仙台市泉区泉中央エリアに位置するメモリアルホール。泉中央駅から徒歩圏内で、泉区の方に広く利用されています。家族葬から一般葬まで対応した設備を備えています。',
  '宮城県仙台市泉区泉中央2-15-8',
  'miyagi', 'sendai',
  38.322, 140.877,
  '地下鉄南北線 泉中央駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '泉中央メモリアル',
  4.0, 14
);

-- 93. 泉典礼会館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '泉典礼会館',
  'miyagi-izumi-tenrei',
  'private_hall',
  '仙台市泉区松森に位置する典礼会館。70台分の広い駐車場を完備し、大規模な葬儀にも対応。泉区北部・利府町方面からのアクセスも良好で、家族葬から一般葬まで幅広く対応しています。',
  '宮城県仙台市泉区松森字中道16',
  'miyagi', 'sendai',
  38.318, 140.91,
  '地下鉄南北線 八乙女駅',
  15,
  150, 3, false, 70,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]',
  ARRAY['家族葬対応', '大規模', 'バリアフリー', '宿泊可能'],
  '株式会社博善社',
  4.1, 21
);

-- 94. 泉崎メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '泉崎メモリアルホール',
  'miyagi-izumizaki-memorial',
  'private_hall',
  '仙台市太白区泉崎に位置するメモリアルホール。長町南駅から車で5分の立地で、太白区西部エリアの方に利用されています。家族葬に対応した落ち着いた空間です。',
  '宮城県仙台市太白区泉崎1-30-5',
  'miyagi', 'sendai',
  38.226, 140.863,
  '地下鉄南北線 長町南駅',
  12,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]',
  ARRAY['家族葬対応'],
  '泉崎メモリアル',
  3.8, 10
);

-- 95. 秋保メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '秋保メモリアルホール',
  'miyagi-akiu-memorial',
  'private_hall',
  '仙台市太白区秋保町に位置する葬儀ホール。秋保温泉エリアの方を中心に利用されています。山間部の静かな環境で、自然に囲まれた穏やかなお見送りが可能です。',
  '宮城県仙台市太白区秋保町長袋字大原30-2',
  'miyagi', 'sendai',
  38.244, 140.736,
  'JR仙山線 愛子駅',
  30,
  40, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]',
  ARRAY['家族葬対応', '少人数向け'],
  '秋保メモリアル',
  3.7, 8
);

-- 96. 花いちもんめ青葉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '花いちもんめ青葉',
  'miyagi-hanaichimonme-aoba',
  'private_hall',
  '仙台市青葉区に位置する家族葬向けの小規模な葬儀場。花をテーマにした温かみのある空間で、アットホームな雰囲気の中でのお見送りが可能。少人数の家族葬に最適な施設です。',
  '宮城県仙台市青葉区落合2-15-8',
  'miyagi', 'sendai',
  38.288, 140.83,
  'JR仙山線 愛子駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]',
  ARRAY['家族葬対応', '少人数向け'],
  '花いちもんめ',
  4.0, 10
);

-- 97. 花さいだん六丁の目
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '花さいだん六丁の目',
  'miyagi-hanasaidan-rokuchonome',
  'private_hall',
  '仙台市若林区六丁の目エリアに位置する花さいだんの葬儀ホール。地下鉄東西線六丁の目駅から徒歩圏内。花祭壇を得意とし、美しい花に囲まれたお見送りが特長です。',
  '宮城県仙台市若林区六丁の目中町8-25',
  'miyagi', 'sendai',
  38.247, 140.92,
  '地下鉄東西線 六丁の目駅',
  5,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '花祭壇', '駅近'],
  '花さいだん',
  4.1, 13
);

-- 98. 花さいだん宮城野
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '花さいだん宮城野',
  'miyagi-hanasaidan-miyagino',
  'private_hall',
  '仙台市宮城野区に位置する花さいだんの葬儀ホール。花祭壇を得意とし、美しい花に囲まれた温かみのあるお見送りが特長。家族葬から一般葬まで対応し、オリジナルの花祭壇プランが人気です。',
  '宮城県仙台市宮城野区鶴ヶ谷5-22-1',
  'miyagi', 'sendai',
  38.284, 140.914,
  'JR仙石線 東仙台駅',
  15,
  70, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '花祭壇', 'バリアフリー'],
  '花さいだん',
  4.2, 17
);

-- 99. 花さいだん泉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '花さいだん泉',
  'miyagi-hanasaidan-izumi',
  'private_hall',
  '仙台市泉区に位置する花さいだんの葬儀ホール。花祭壇を得意とし、美しい花に囲まれたお見送りが特長。泉中央駅からアクセスしやすい立地で、泉区の方に利用されています。',
  '宮城県仙台市泉区松陵2-15-10',
  'miyagi', 'sendai',
  38.328, 140.895,
  '地下鉄南北線 泉中央駅',
  15,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '花祭壇', 'バリアフリー'],
  '花さいだん',
  4.1, 14
);

-- 100. 花さいだん長町
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '花さいだん長町',
  'miyagi-hanasaidan-nagamachi',
  'private_hall',
  '仙台市太白区長町に位置する花さいだんの葬儀ホール。花祭壇を得意とし、美しい花に囲まれた温かいお見送りが特長。長町駅から近く、アクセスも良好です。',
  '宮城県仙台市太白区長町3-7-25',
  'miyagi', 'sendai',
  38.229, 140.878,
  'JR東北本線 長町駅',
  7,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '花祭壇', '駅近'],
  '花さいだん',
  4.1, 15
);

-- 101. 若林セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '若林セレモニーホール',
  'miyagi-wakabayashi-ceremony',
  'private_hall',
  '仙台市若林区に位置する地域密着型のセレモニーホール。家族葬から一般葬まで対応可能で、落ち着いた雰囲気の中でのお見送りが可能。リーズナブルな価格設定も魅力です。',
  '宮城県仙台市若林区遠見塚2-10-5',
  'miyagi', 'sendai',
  38.24, 140.91,
  '地下鉄東西線 卸町駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 480000}]',
  ARRAY['家族葬対応', '低価格'],
  '若林セレモニー',
  3.8, 9
);

-- 102. 若林荒浜メモリアル
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '若林荒浜メモリアル',
  'miyagi-wakabayashi-arahama-memorial',
  'private_hall',
  '仙台市若林区荒浜エリアに位置する小規模なメモリアルホール。東日本大震災後に再建された施設で、地域の復興と共に歩む葬儀場。家族葬に対応した温かい空間です。',
  '宮城県仙台市若林区荒浜字新堀端8-2',
  'miyagi', 'sendai',
  38.228, 140.945,
  '地下鉄東西線 荒井駅',
  20,
  30, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 265000}]',
  ARRAY['家族葬対応', '少人数向け', '低価格'],
  '荒浜メモリアル',
  3.8, 8
);

-- 103. 葛岡斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '葛岡斎場',
  'miyagi-kuzuoka-saijo',
  'public_crematorium',
  '仙台市が運営する公営火葬場。仙台市民の火葬を中心に利用されており、年間約1万件の火葬を行っています。JR仙山線葛岡駅から徒歩圏内で、駐車場も完備。落ち着いた環境の中で故人をお見送りできます。',
  '宮城県仙台市青葉区郷六字葛岡10',
  'miyagi', 'sendai',
  38.271, 140.821,
  'JR仙山線 葛岡駅',
  10,
  100, 2, true, 80,
  '{"控室": true, "待合室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー', '大規模'],
  '仙台市',
  3.8, 28
);

-- 104. 迎賓館菜園
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '迎賓館菜園',
  'miyagi-geihinkan-saien',
  'private_hall',
  '仙台市青葉区に位置する迎賓館サイエンの葬祭式場。ホテルのような上品な空間で、格式ある葬儀に対応。仙台駅から近く、公共交通機関でのアクセスも良好。一般葬から社葬まで幅広く利用されています。',
  '宮城県仙台市青葉区花京院2-1-18',
  'miyagi', 'sendai',
  38.266, 140.878,
  'JR東北本線 仙台駅',
  8,
  150, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "宿泊施設": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 400000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]',
  ARRAY['家族葬対応', '駅近', '大規模', '宿泊可能'],
  '迎賓館菜園',
  4.3, 21
);

-- 105. 連坊メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '連坊メモリアルホール',
  'miyagi-renbo-memorial',
  'private_hall',
  '仙台市若林区連坊に位置するメモリアルホール。地下鉄東西線連坊駅から徒歩すぐの好立地。仙台駅からも近く、公共交通機関での参列に便利。家族葬を中心に利用されています。',
  '宮城県仙台市若林区連坊1-4-25',
  'miyagi', 'sendai',
  38.253, 140.89,
  '地下鉄東西線 連坊駅',
  3,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]',
  ARRAY['家族葬対応', '駅近', '少人数向け'],
  '連坊メモリアル',
  4.0, 10
);

-- 106. 長町南メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '長町南メモリアルホール',
  'miyagi-nagamachi-minami-memorial',
  'private_hall',
  '仙台市太白区長町南に位置するメモリアルホール。地下鉄南北線長町南駅から徒歩圏内の好アクセス。太白区南部の方に利用されており、家族葬を中心にサービスを提供。',
  '宮城県仙台市太白区長町南3-10-15',
  'miyagi', 'sendai',
  38.223, 140.876,
  '地下鉄南北線 長町南駅',
  7,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '長町南メモリアル',
  4.0, 12
);

-- 107. 青葉典礼会館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '青葉典礼会館',
  'miyagi-aoba-tenrei',
  'private_hall',
  '仙台市青葉区堤町に位置する典礼会館。北仙台駅から徒歩圏内で、堤通沿いのアクセスしやすい立地です。家族葬から一般葬まで幅広く対応し、50台分の駐車場を完備しています。',
  '宮城県仙台市青葉区堤町3-12-25',
  'miyagi', 'sendai',
  38.277, 140.87,
  'JR仙山線 北仙台駅',
  8,
  100, 2, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '株式会社博善社',
  4.0, 20
);

-- 108. 塩竈セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '塩竈セレモニーホール',
  'miyagi-shiogama-ceremony',
  'private_hall',
  '塩竈市に位置するセレモニーホール。本塩釜駅から近い立地で、塩竈市・松島町エリアの方に利用されています。家族葬から一般葬まで対応可能な設備を備えています。',
  '宮城県塩竈市海岸通4-15',
  'miyagi', 'shiogama',
  38.315, 141.022,
  'JR仙石線 本塩釜駅',
  7,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '塩竈セレモニー',
  4.0, 15
);

-- 109. 塩竈市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '塩竈市斎場',
  'miyagi-shiogama-shisaijo',
  'public_crematorium',
  '塩竈市が運営する公営火葬場。塩竈市・多賀城市・松島町・七ヶ浜町・利府町の住民が利用可能。告別室や待合室も備えた充実した施設です。',
  '宮城県塩竈市袖野田町25-1',
  'miyagi', 'shiogama',
  38.318, 141.019,
  'JR仙石線 本塩釜駅',
  15,
  60, 1, true, 40,
  '{"控室": true, "待合室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '塩竈市',
  3.7, 14
);

-- 110. 家族葬の仙和 塩竈ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 塩竈ホール',
  'miyagi-senwa-shiogama',
  'private_hall',
  '塩竈市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホール。塩竈市・多賀城市の方に利用されており、安置室完備の温かみある空間です。',
  '宮城県塩竈市新浜町2-25-10',
  'miyagi', 'shiogama',
  38.314, 141.016,
  'JR仙石線 本塩釜駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 10
);

-- 111. 白石メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '白石メモリアルホール',
  'miyagi-shiroishi-memorial',
  'private_hall',
  '白石市に位置するメモリアルホール。白石駅から車で約10分の立地で、白石市・蔵王町エリアの方に利用されています。家族葬から一般葬まで対応。',
  '宮城県白石市沢端町3-25',
  'miyagi', 'shiroishi',
  38.002, 140.62,
  'JR東北本線 白石駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 480000}]',
  ARRAY['家族葬対応'],
  '白石メモリアル',
  3.8, 10
);

-- 112. 白石斎苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '白石斎苑',
  'miyagi-shiroishi-saien',
  'public_crematorium',
  '白石市が運営する公営火葬場。白石市・蔵王町・七ヶ宿町の住民に利用されています。白石蔵王駅から車で約15分の立地。告別室も備えています。',
  '宮城県白石市鷹巣字石倉9-3',
  'miyagi', 'shiroishi',
  38.004, 140.624,
  'JR東北本線 白石駅',
  25,
  40, 1, true, 25,
  '{"控室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '白石市',
  3.5, 8
);

-- 113. ほこだて仏光堂 多賀城ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ほこだて仏光堂 多賀城ホール',
  'miyagi-hokodate-tagajo',
  'private_hall',
  '多賀城市に位置するほこだて仏光堂の葬儀ホール。仏壇・仏具の老舗が運営する葬儀場で、伝統を大切にした葬儀を提供。多賀城市の方に利用されています。',
  '宮城県多賀城市八幡2-5-20',
  'miyagi', 'tagajo',
  38.301, 140.974,
  'JR仙石線 多賀城駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  'ほこだて仏光堂',
  3.9, 12
);

-- 114. 多賀城セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '多賀城セレモニーホール',
  'miyagi-tagajo-ceremony',
  'private_hall',
  '多賀城市に位置するセレモニーホール。多賀城駅から車で約5分の立地で、多賀城市・塩竈市エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '宮城県多賀城市中央2-8-1',
  'miyagi', 'tagajo',
  38.295, 140.981,
  'JR仙石線 多賀城駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  '多賀城セレモニー',
  4.0, 15
);

-- 115. 家族葬の仙和 多賀城ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 多賀城ホール',
  'miyagi-senwa-tagajo',
  'private_hall',
  '多賀城市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、多賀城駅から近い立地。安置室完備で、少人数の家族葬に対応しています。',
  '宮城県多賀城市町前3-1-15',
  'miyagi', 'tagajo',
  38.296, 140.979,
  'JR仙石線 多賀城駅',
  5,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '家族葬の仙和',
  4.1, 11
);

-- 116. 家族葬の仙和 登米ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 登米ホール',
  'miyagi-senwa-tome',
  'private_hall',
  '登米市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、登米市の方に利用されています。安置室完備の温かみあるホールです。',
  '宮城県登米市迫町佐沼字内町40-5',
  'miyagi', 'tome',
  38.687, 141.194,
  'JR東北本線 新田駅',
  25,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.0, 9
);

-- 117. 登米セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '登米セレモニーホール',
  'miyagi-tome-ceremony',
  'private_hall',
  '登米市迫町に位置するセレモニーホール。登米市の中心部にあり、家族葬から一般葬まで対応。地域に密着したきめ細かいサービスを提供しています。',
  '宮城県登米市迫町佐沼字中江4-8-15',
  'miyagi', 'tome',
  38.685, 141.198,
  'JR東北本線 新田駅',
  25,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['家族葬対応'],
  '登米セレモニー',
  3.8, 12
);

-- 118. 登米市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '登米市斎場',
  'miyagi-tome-shisaijo',
  'public_crematorium',
  '登米市が運営する公営火葬場。登米市全域の住民に利用されています。告別室も備えており、火葬式にも対応。静かな環境の中にある落ち着いた施設です。',
  '宮城県登米市迫町佐沼字江合1-6-1',
  'miyagi', 'tome',
  38.683, 141.195,
  'JR東北本線 新田駅',
  30,
  40, 1, true, 30,
  '{"控室": true, "霊安室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '登米市',
  3.5, 10
);

-- 119. 家族葬の仙和 富谷ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬の仙和 富谷ホール',
  'miyagi-senwa-tomiya',
  'private_hall',
  '富谷市に位置する家族葬の仙和の式場。1日1組貸切の家族葬専用ホールで、富谷市の方に利用されています。安置室完備で、少人数のお見送りに最適です。',
  '宮城県富谷市成田3-32-15',
  'miyagi', 'tomiya',
  38.347, 140.893,
  '地下鉄南北線 泉中央駅',
  25,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 297000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '家族葬の仙和',
  4.1, 10
);

-- 120. 富谷斎場 清月記
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '富谷斎場 清月記',
  'miyagi-seigetsuki-tomiya',
  'private_hall',
  '富谷市鷹乃杜に位置する清月記の斎場。仙台市泉区に隣接し、富谷市・大和町エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '宮城県富谷市鷹乃杜2-1-10',
  'miyagi', 'tomiya',
  38.352, 140.896,
  '地下鉄南北線 泉中央駅',
  30,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', 'バリアフリー'],
  '株式会社清月記',
  4.0, 15
);
