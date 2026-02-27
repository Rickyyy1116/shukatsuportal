-- =============================================
-- 斎場データ Batch 1: 火葬場9件 + 主要民営斎場・寺院式場 約50件
-- 東京都23区をカバー
-- =============================================

-- =============================================
-- 1. 火葬場併設の民営斎場（東京博善 6施設）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1. 落合斎場（新宿区）
(
  '落合斎場',
  'ochiai-saijo',
  'private_crematorium',
  '東京博善が運営する民営の総合斎場。火葬炉10基を備え、4つの式場で通夜・告別式から火葬まで同一敷地内で執り行えます。東京メトロ東西線「落合駅」から徒歩5分とアクセス良好。カフェラウンジやエスカレーターなど設備が充実しています。',
  '東京都新宿区上落合3-34-12',
  'tokyo', 'shinjuku',
  35.7145, 139.6842,
  '東京メトロ東西線 落合駅',
  5,
  40, 4, true, 80,
  '{"霊安室": true, "カフェラウンジ": true, "エスカレーター": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 148000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 328000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 458000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 638000}]',
  ARRAY['火葬場併設', '駅近', 'バリアフリー', '24時間対応', '家族葬対応'],
  '東京博善株式会社',
  4.2, 47
),

-- 2. 代々幡斎場（渋谷区）
(
  '代々幡斎場',
  'yoyohata-saijo',
  'private_crematorium',
  '東京博善が運営する渋谷区の総合斎場。火葬炉10基と7つの式場を備え、大規模な社葬から家族葬まで幅広く対応。京王新線「幡ヶ谷駅」から徒歩6分。渋谷区・世田谷区・目黒区エリアからのアクセスに便利です。',
  '東京都渋谷区西原2-42-1',
  'tokyo', 'shibuya',
  35.6700, 139.6700,
  '京王新線 幡ヶ谷駅',
  6,
  100, 7, true, 44,
  '{"霊安室": true, "エスカレーター": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "マイクロバス駐車": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 158000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 338000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 478000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 658000}]',
  ARRAY['火葬場併設', '駅近', 'バリアフリー', '大規模葬対応', '家族葬対応', '社葬対応'],
  '東京博善株式会社',
  4.3, 62
),

-- 3. 桐ヶ谷斎場（品川区）
(
  '桐ヶ谷斎場',
  'kirigaya-saijo',
  'private_crematorium',
  '東京博善が運営する品川区の大規模総合斎場。火葬炉12基、通常式場6室と家族葬専用式場6室の計12室を備えた東京最大級の斎場。160名収容の大ホールから16名の家族葬式場まで、あらゆる規模に対応します。',
  '東京都品川区西五反田5-32-20',
  'tokyo', 'shinagawa',
  35.6270, 139.7080,
  '東急目黒線 不動前駅',
  7,
  160, 12, true, 90,
  '{"霊安室": true, "エスカレーター": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "家族葬専用式場": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 158000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 348000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 488000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 678000}]',
  ARRAY['火葬場併設', '家族葬専用式場あり', 'バリアフリー', '大規模葬対応', '24時間対応', '東京最大級'],
  '東京博善株式会社',
  4.4, 89
),

-- 4. 町屋斎場（荒川区）
(
  '町屋斎場',
  'machiya-saijo',
  'private_crematorium',
  '東京博善が運営する荒川区の総合斎場。火葬炉12基と10の式場を備え、通夜から火葬まで徒歩で移動可能。京成本線・東京メトロ千代田線「町屋駅」から徒歩5分。小上がり畳の式場もあり、和の雰囲気を大切にしたい方にも対応。',
  '東京都荒川区町屋1-23-4',
  'tokyo', 'arakawa',
  35.7460, 139.7810,
  '京成本線・東京メトロ千代田線 町屋駅',
  5,
  62, 10, true, 66,
  '{"霊安室": true, "エスカレーター": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "マイクロバス駐車": true, "畳式場": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 148000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 318000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 448000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 628000}]',
  ARRAY['火葬場併設', '駅近', 'バリアフリー', '畳式場あり', '24時間対応', '家族葬対応'],
  '東京博善株式会社',
  4.1, 53
),

-- 5. 四ツ木斎場（葛飾区）
(
  '四ツ木斎場',
  'yotsugi-saijo',
  'private_crematorium',
  '東京博善が運営する葛飾区の総合斎場。火葬炉11基と5つの式場を備え、「和モダン」をコンセプトにしたデザイン。3室まで連結可能で最大100名超の葬儀にも対応。京成本線「お花茶屋駅」から徒歩5分。',
  '東京都葛飾区白鳥2-9-1',
  'tokyo', 'katsushika',
  35.7560, 139.8520,
  '京成本線 お花茶屋駅',
  5,
  100, 5, true, 56,
  '{"霊安室": true, "貴賓館": true, "ラウンジ": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 308000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 438000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 618000}]',
  ARRAY['火葬場併設', '駅近', 'バリアフリー', '和モダン', '式場連結可能', '家族葬対応'],
  '東京博善株式会社',
  4.0, 38
),

-- 6. 堀ノ内斎場（杉並区）
(
  '堀ノ内斎場',
  'horinouchi-saijo',
  'private_crematorium',
  '東京博善が運営する杉並区の総合斎場。火葬炉8基と3つの式場を備えたアットホームな雰囲気の斎場。各式場40席で家族葬に最適。東京メトロ丸の内線「新高円寺駅」から徒歩8分。夜間滞在も可能です。',
  '東京都杉並区梅里1-2-27',
  'tokyo', 'suginami',
  35.6990, 139.6450,
  '東京メトロ丸の内線 新高円寺駅',
  8,
  40, 3, true, 38,
  '{"保棺室": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "マイクロバス駐車": true, "安置室": true, "売店": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 148000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 328000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 458000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 638000}]',
  ARRAY['火葬場併設', 'バリアフリー', '夜間滞在可', '家族葬向き', '24時間対応', 'アットホーム'],
  '東京博善株式会社',
  4.2, 41
);

-- =============================================
-- 2. 公営火葬場（2施設）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7. 瑞江葬儀所（江戸川区・公営）
(
  '瑞江葬儀所',
  'mizue-sogijo',
  'public_crematorium',
  '東京都が運営する23区内で数少ない公営火葬場。火葬炉20基を備えた大規模施設。火葬料金が民営と比べ格安で、都民の火葬需要を支えています。式場はありませんが、控室10室で最大25名まで利用可能。',
  '東京都江戸川区春江町3-26-1',
  'tokyo', 'edogawa',
  35.6680, 139.8780,
  '都営新宿線 瑞江駅',
  13,
  25, NULL, true, 67,
  '{"控室": true, "収骨室": true, "棺保管室": true, "バリアフリー": true, "駐車場": true, "宿泊施設": false}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['公営火葬場', '低価格', '大規模施設', '駐車場完備'],
  '東京都建設局',
  3.8, 22
),

-- 8. 臨海斎場（大田区・公営5区共同）
(
  '臨海斎場',
  'rinkai-saijo',
  'public_crematorium',
  '大田区・品川区・目黒区・港区・世田谷区の5区が共同運営する公営斎場。火葬炉10基と4つの式場を備え、通夜から火葬まで同一施設内で可能。2室連結で最大140名の大規模葬にも対応。宿泊施設完備。',
  '東京都大田区東海1-3-1',
  'tokyo', 'ota',
  35.5920, 139.7510,
  '東京モノレール 流通センター駅',
  10,
  140, 4, true, 259,
  '{"霊安室": true, "宿泊施設": true, "シャワー室": true, "バリアフリー": true, "駐車場": true, "会葬者控室": true, "火葬待合室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['公営斎場', '低価格', '大規模駐車場', '宿泊可能', '5区共同運営', '家族葬対応'],
  '臨海斎場組合（大田区・品川区・目黒区・港区・世田谷区）',
  4.0, 35
);

-- =============================================
-- 3. 民営火葬場（戸田葬祭場）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9. 戸田葬祭場（板橋区）
(
  '戸田葬祭場',
  'toda-sosaijo',
  'private_crematorium',
  '板橋区舟渡に位置する民営の総合斎場。火葬炉15基と5つの式場を備え、光の間（90席）をはじめ多彩な式場で様々な規模に対応。宿泊施設やシャワー室も完備。板橋区・練馬区・豊島区・北区エリアの方に多く利用されています。',
  '東京都板橋区舟渡4-15-1',
  'tokyo', 'itabashi',
  35.7930, 139.6750,
  '都営三田線 蓮根駅',
  20,
  90, 5, true, 150,
  '{"宿泊施設": true, "シャワー室": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "スロープ": true, "車椅子貸出": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 428000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['火葬場併設', '宿泊可能', 'バリアフリー', '大規模駐車場', '家族葬対応', '車椅子対応'],
  '株式会社戸田葬祭場',
  4.1, 44
);

-- =============================================
-- 4. 民営斎場（火葬場なし）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10. くらしの友 蒲田総合斎場（大田区）
(
  'くらしの友 蒲田総合斎場',
  'kurashinotomo-kamata',
  'private_hall',
  'JR・東急蒲田駅南口から徒歩6分の好立地にある葬儀場。家族葬から30名規模の葬儀に対応した4つの式場を備え、きめ細やかなサービスが特徴。大田区・品川区エリアの方に人気の斎場です。',
  '東京都大田区西蒲田8-10-15 2F',
  'tokyo', 'ota',
  35.5620, 139.7160,
  'JR京浜東北線・東急多摩川線 蒲田駅',
  6,
  30, 4, false, 27,
  '{"安置室": true, "エレベーター": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 288000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '駐車場あり'],
  '株式会社くらしの友',
  4.0, 28
),

-- 11. くらしの友 雪ヶ谷総合式場（大田区）
(
  'くらしの友 雪ヶ谷総合式場',
  'kurashinotomo-yukigaya',
  'private_hall',
  '東急池上線沿線にある閑静な住宅街の中の葬儀場。少人数の家族葬に適した温かみのある空間で、故人との最後の時間をゆっくりお過ごしいただけます。',
  '東京都大田区南雪谷4-5-13',
  'tokyo', 'ota',
  35.5880, 139.6890,
  '東急池上線 雪が谷大塚駅',
  8,
  30, 2, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['家族葬向き', '閑静な環境', '少人数対応'],
  '株式会社くらしの友',
  4.1, 15
),

-- 12. サポートセンター江東（江東区）
(
  'サポートセンター江東',
  'support-center-koto',
  'private_hall',
  '都営新宿線「西大島駅」から徒歩5分の葬儀場。30名規模の家族葬に最適な式場を備え、江東区・墨田区エリアの方にご利用いただいています。アットホームな雰囲気で丁寧なサポートが好評。',
  '東京都江東区大島1-36-12',
  'tokyo', 'koto',
  35.6860, 139.8310,
  '都営新宿線 西大島駅',
  5,
  30, 1, false, NULL,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['駅近', '家族葬向き', 'アットホーム'],
  '株式会社東礼自動車',
  3.9, 12
),

-- 13. 千代田西新井ホール（足立区）
(
  '千代田西新井ホール',
  'chiyoda-nishiarai-hall',
  'private_hall',
  '日暮里・舎人ライナー「江北駅」から徒歩5分の葬儀場。2つの式場を備え、2階ホールは最大70名を収容。足立区を中心に地域密着型のサービスを提供しています。駐車場36台完備。',
  '東京都足立区西新井本町2-28-4',
  'tokyo', 'adachi',
  35.7790, 139.7750,
  '日暮里・舎人ライナー 江北駅',
  5,
  70, 2, false, 36,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '駐車場完備', '家族葬対応', '地域密着'],
  '株式会社千代田セレモニー',
  4.0, 25
),

-- 14. 千代田城北ホール（足立区）
(
  '千代田城北ホール',
  'chiyoda-johoku-hall',
  'private_hall',
  '東京メトロ千代田線「綾瀬駅」から徒歩10分の葬儀場。足立区・葛飾区エリアに密着した温かみのあるサービスで、家族葬から一般葬まで幅広く対応しています。',
  '東京都足立区綾瀬5-19-8',
  'tokyo', 'adachi',
  35.7620, 139.8230,
  '東京メトロ千代田線 綾瀬駅',
  10,
  50, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '地域密着', '駐車場あり'],
  '株式会社千代田セレモニー',
  3.9, 18
),

-- 15. ホール博善（墨田区）
(
  'ホール博善',
  'hall-hakuzen',
  'private_hall',
  '都営浅草線・東京メトロ半蔵門線「押上駅」から徒歩7分の葬儀場。墨田区・江東区エリアに位置し、家族葬から一般葬まで対応。落ち着いた雰囲気の中でお別れの時間をお過ごしいただけます。',
  '東京都墨田区横川3-13-10',
  'tokyo', 'sumida',
  35.7040, 139.8130,
  '都営浅草線・東京メトロ半蔵門線 押上駅',
  7,
  40, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '家族葬対応', '落ち着いた雰囲気'],
  '株式会社オリハラ',
  4.0, 20
),

-- 16. はなみずきホール（墨田区）
(
  'はなみずきホール',
  'hanamizuki-hall',
  'private_hall',
  '京成線「八広駅」から徒歩1分の駅前葬儀場。少人数の家族葬に特化した温かみのある空間。墨田区・葛飾区の方にご利用いただいています。',
  '東京都墨田区八広6-31-1',
  'tokyo', 'sumida',
  35.7230, 139.8280,
  '京成押上線 八広駅',
  1,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['駅前', '家族葬専門', '少人数向き', 'アットホーム'],
  '株式会社たかはし式典',
  4.2, 14
),

-- 17. くらしの友 桜新町式場（世田谷区）
(
  'くらしの友 桜新町式場',
  'kurashinotomo-sakurashinmachi',
  'private_hall',
  '東急田園都市線「桜新町駅」周辺に位置する葬儀場。世田谷区の閑静な住宅街にあり、家族葬に適した落ち着いた雰囲気が特徴。きめ細やかなサービスで故人をお見送りいただけます。',
  '東京都世田谷区桜新町1-15-15',
  'tokyo', 'setagaya',
  35.6310, 139.6440,
  '東急田園都市線 桜新町駅',
  5,
  30, 2, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['駅近', '家族葬向き', '閑静な環境', '世田谷区'],
  '株式会社くらしの友',
  4.1, 19
),

-- 18. アダージョ世田谷代田（世田谷区）
(
  'アダージョ世田谷代田',
  'adagio-setagayadaita',
  'private_hall',
  '小田急線「世田谷代田駅」周辺に位置する家族葬専門の葬儀場。少人数でゆっくりとお別れの時間を過ごせる空間を提供。世田谷区・渋谷区エリアの方にご利用いただいています。',
  '東京都世田谷区代田5-35-30',
  'tokyo', 'setagaya',
  35.6580, 139.6610,
  '小田急線 世田谷代田駅',
  3,
  20, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬専門', '少人数向き', 'モダンデザイン'],
  '株式会社くらしの友',
  4.3, 11
),

-- 19. くらしの友 堀切総合斎場（葛飾区）
(
  'くらしの友 堀切総合斎場',
  'kurashinotomo-horikiri',
  'private_hall',
  '京成本線「堀切菖蒲園駅」から徒歩13分に位置する葬儀場。葛飾区・足立区エリアで家族葬から一般葬まで幅広く対応。地域に密着したきめ細やかなサービスが好評です。',
  '東京都葛飾区堀切3-32-1',
  'tokyo', 'katsushika',
  35.7440, 139.8350,
  '京成本線 堀切菖蒲園駅',
  13,
  50, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '地域密着', '駐車場あり', '葛飾区'],
  '株式会社くらしの友',
  4.0, 16
),

-- 20. 想送庵カノン（葛飾区）
(
  '想送庵カノン',
  'sousoan-kanon',
  'private_hall',
  '京成押上線「青砥駅」から徒歩10分の家族葬専門式場。温かみのある空間で、少人数のアットホームなお別れの時間を提供。葛飾区を中心に口コミで評判の斎場です。',
  '東京都葛飾区立石8-41-8',
  'tokyo', 'katsushika',
  35.7400, 139.8430,
  '京成押上線 青砥駅',
  10,
  20, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専門', 'アットホーム', '少人数向き', '口コミ高評価'],
  '',
  4.4, 23
),

-- 21. くらしの友 井荻ホール（杉並区）
(
  'くらしの友 井荻ホール',
  'kurashinotomo-iogi',
  'private_hall',
  '西武新宿線「井荻駅」周辺にある葬儀場。杉並区・練馬区エリアに位置し、家族葬に適した落ち着いた空間。経験豊富なスタッフによるきめ細やかなサポートが好評です。',
  '東京都杉並区上井草1-23-5',
  'tokyo', 'suginami',
  35.7200, 139.6150,
  '西武新宿線 井荻駅',
  5,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['駅近', '家族葬向き', '杉並区'],
  '株式会社くらしの友',
  4.0, 13
),

-- 22. くらしの友 東武練馬ホール（練馬区）
(
  'くらしの友 東武練馬ホール',
  'kurashinotomo-tobunerima',
  'private_hall',
  '東武東上線「東武練馬駅」周辺にある葬儀場。練馬区・板橋区エリアの方に親しまれている家族葬向けの式場。アットホームな雰囲気で故人とのお別れの時間を大切にしていただけます。',
  '東京都練馬区北町2-38-10',
  'tokyo', 'nerima',
  35.7680, 139.6680,
  '東武東上線 東武練馬駅',
  5,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['駅近', '家族葬向き', '練馬区', 'アットホーム'],
  '株式会社くらしの友',
  4.0, 14
),

-- 23. くらしの友 梅島ホール（足立区）
(
  'くらしの友 梅島ホール',
  'kurashinotomo-umejima',
  'private_hall',
  '東武スカイツリーライン「梅島駅」周辺にある葬儀場。足立区エリアで地域密着型のサービスを提供。家族葬から一般葬まで幅広いニーズに対応しています。',
  '東京都足立区梅島2-1-15',
  'tokyo', 'adachi',
  35.7730, 139.7920,
  '東武スカイツリーライン 梅島駅',
  5,
  40, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['駅近', '家族葬対応', '地域密着', '足立区'],
  '株式会社くらしの友',
  3.9, 17
),

-- 24. シティホール綾瀬（足立区）
(
  'シティホール綾瀬',
  'cityhall-ayase',
  'private_hall',
  '東京メトロ千代田線「綾瀬駅」周辺にある葬儀場。綾瀬エリアで家族葬を中心に対応。清潔感のある施設と丁寧なスタッフ対応が特徴です。',
  '東京都足立区綾瀬3-18-5',
  'tokyo', 'adachi',
  35.7630, 139.8250,
  '東京メトロ千代田線 綾瀬駅',
  5,
  40, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['駅近', '家族葬向き', '清潔感'],
  '',
  4.0, 10
),

-- 25. 千代田赤羽駅南口ホール（北区）
(
  '千代田赤羽駅南口ホール',
  'chiyoda-akabane-hall',
  'private_hall',
  'JR各線「赤羽駅」から徒歩8分の葬儀場。北区・板橋区エリアに位置し、家族葬から一般葬まで対応。地域に根ざしたサービスを提供しています。',
  '東京都北区赤羽南1-4-12',
  'tokyo', 'kita',
  35.7770, 139.7210,
  'JR京浜東北線・埼京線 赤羽駅',
  8,
  50, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '北区', '地域密着'],
  '株式会社千代田セレモニー',
  4.0, 15
);

-- =============================================
-- 5. 寺院式場
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 26. 護国寺 桂昌殿（文京区）
(
  '護国寺 桂昌殿',
  'gokokuji-keishoden',
  'temple_hall',
  '東京メトロ有楽町線「護国寺駅」から徒歩3分の寺院式場。歴史ある護国寺の境内にあり、厳かな雰囲気の中でお葬式を執り行えます。宗派を問わず利用可能。文京区・豊島区の方に多くご利用いただいています。',
  '東京都文京区大塚5-40-1',
  'tokyo', 'bunkyo',
  35.7170, 139.7270,
  '東京メトロ有楽町線 護国寺駅',
  3,
  60, 1, false, 20,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "僧侶手配可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '歴史ある環境', '厳かな雰囲気'],
  '護国寺',
  4.2, 18
),

-- 27. 法真寺会館（文京区）
(
  '法真寺会館',
  'hoshinji-kaikan',
  'temple_hall',
  '都営大江戸線「本郷三丁目駅」から徒歩7分に位置する寺院式場。文京区本郷エリアの閑静な環境で、落ち着いたお別れの時間を過ごせます。',
  '東京都文京区本郷5-27-11',
  'tokyo', 'bunkyo',
  35.7100, 139.7570,
  '都営大江戸線 本郷三丁目駅',
  7,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['寺院式場', '閑静な環境', '文京区'],
  '法真寺',
  4.0, 10
),

-- 28. 興善寺会館（文京区）
(
  '興善寺会館',
  'kozenji-kaikan',
  'temple_hall',
  '都営大江戸線・三田線「春日駅」から徒歩1分の好立地にある寺院式場。駅からのアクセスが非常に良く、ご高齢の参列者にも安心。家族葬を中心に対応しています。',
  '東京都文京区春日1-10-12',
  'tokyo', 'bunkyo',
  35.7100, 139.7520,
  '都営大江戸線・三田線 春日駅',
  1,
  30, 1, false, 5,
  '{"バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['駅前', '寺院式場', '家族葬向き', 'アクセス良好'],
  '興善寺',
  4.1, 8
),

-- 29. 祥雲寺（豊島区）
(
  '祥雲寺',
  'shounji-toshima',
  'temple_hall',
  '東京メトロ有楽町線「要町駅」から徒歩2分の寺院式場。池袋エリアに近く、交通の便が良い。歴史ある寺院の静かな境内で、心安らかにお見送りいただけます。',
  '東京都豊島区池袋3-5-9',
  'tokyo', 'toshima',
  35.7340, 139.7060,
  '東京メトロ有楽町線 要町駅',
  2,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '寺院式場', '池袋エリア', '交通便良好'],
  '祥雲寺',
  4.0, 12
),

-- 30. 功雲院（豊島区）
(
  '功雲院',
  'kounin-toshima',
  'temple_hall',
  '東京メトロ有楽町線・副都心線「要町駅」から徒歩4分の寺院式場。40名程度の家族葬に最適な規模。落ち着いた雰囲気の中で故人との大切な時間を過ごせます。',
  '東京都豊島区池袋3-22-8',
  'tokyo', 'toshima',
  35.7340, 139.7040,
  '東京メトロ有楽町線・副都心線 要町駅',
  4,
  40, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', '落ち着いた雰囲気'],
  '功雲院',
  4.1, 9
),

-- 31. 大泉橋戸会館（練馬区）
(
  '大泉橋戸会館',
  'oizumi-hashido-kaikan',
  'temple_hall',
  '西武池袋線「大泉学園駅」から徒歩15分に位置する寺院式場。真言宗智山派・教学院が運営。駐車場30台を完備し、練馬区大泉エリアの方に多くご利用いただいています。',
  '東京都練馬区大泉町6-24-26',
  'tokyo', 'nerima',
  35.7580, 139.5890,
  '西武池袋線 大泉学園駅',
  15,
  50, 1, false, 30,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 508000}]',
  ARRAY['寺院式場', '駐車場完備', '練馬区'],
  '教学院（真言宗智山派）',
  4.0, 11
),

-- 32. 妙福寺（練馬区）
(
  '妙福寺 本應院',
  'myofukuji-honouin',
  'temple_hall',
  '西武池袋線「大泉学園駅」から徒歩12分の寺院式場。駐車場70台と大規模で、一般葬にも対応可能。緑に囲まれた落ち着いた境内で心安らかにお見送りいただけます。',
  '東京都練馬区南大泉5-7-20',
  'tokyo', 'nerima',
  35.7500, 139.5870,
  '西武池袋線 大泉学園駅',
  12,
  80, 1, false, 70,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "大型駐車場": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['寺院式場', '大型駐車場', '大規模対応', '緑豊か'],
  '妙福寺',
  4.2, 15
),

-- 33. 荘厳寺 光明堂（練馬区）
(
  '荘厳寺 光明堂',
  'shogonji-komyodo',
  'temple_hall',
  '東京メトロ有楽町線「氷川台駅」周辺にある真言宗豊山派の寺院式場。駐車場20台を備え、練馬区中央エリアの方にご利用いただいています。',
  '東京都練馬区氷川台3-14-26',
  'tokyo', 'nerima',
  35.7480, 139.6560,
  '東京メトロ有楽町線 氷川台駅',
  5,
  40, 1, false, 20,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['寺院式場', '駐車場あり', '練馬区'],
  '荘厳寺（真言宗豊山派）',
  3.9, 7
),

-- 34. 耕雲寺 種月殿斎場（世田谷区）
(
  '耕雲寺 種月殿斎場',
  'kounji-shugetsuden',
  'temple_hall',
  '小田急線「祖師谷大蔵駅」から徒歩8分に位置する曹洞宗の寺院式場。世田谷区砧エリアの静かな環境で、宗派を問わず利用可能。家族葬を中心に丁寧な対応が好評です。',
  '東京都世田谷区砧7-12-22',
  'tokyo', 'setagaya',
  35.6430, 139.6100,
  '小田急線 祖師谷大蔵駅',
  8,
  40, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['寺院式場', '宗派不問', '家族葬向き', '静かな環境'],
  '耕雲寺（曹洞宗）',
  4.1, 13
),

-- 35. 成勝寺会館（世田谷区）
(
  '成勝寺会館 ゆいの御廟',
  'joshoji-kaikan-yui',
  'temple_hall',
  '小田急線「経堂駅」から徒歩5分、東急世田谷線「山下駅」から徒歩4分の好アクセス。浄土真宗本願寺派の寺院式場で、宗派を問わず利用可能。世田谷区宮坂エリアの方に愛されている式場です。',
  '東京都世田谷区宮坂2-24-5',
  'tokyo', 'setagaya',
  35.6510, 139.6370,
  '小田急線 経堂駅',
  5,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '世田谷区'],
  '成勝寺（浄土真宗本願寺派）',
  4.0, 11
),

-- 36. 専浄寺 等々力斎場（世田谷区）
(
  '専浄寺 等々力斎場',
  'senjoji-todoroki-saijo',
  'temple_hall',
  '東急大井町線「九品仏駅」から徒歩12分に位置する寺院式場。等々力渓谷にも近い緑豊かな環境。落ち着いた雰囲気の中で故人をお見送りいただけます。',
  '東京都世田谷区等々力6-7-10',
  'tokyo', 'setagaya',
  35.6100, 139.6500,
  '東急大井町線 九品仏駅',
  12,
  30, 1, false, 12,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}]',
  ARRAY['寺院式場', '緑豊か', '家族葬向き', '世田谷区'],
  '専浄寺',
  4.0, 8
),

-- 37. 春慶寺（墨田区）
(
  '春慶寺',
  'shunkeiji-sumida',
  'temple_hall',
  '東京メトロ半蔵門線「押上駅」から徒歩1分の駅前寺院式場。地上5階建ての現代的な寺院で、大型葬にも対応可能。日蓮宗のお寺ですが宗派を問わず利用できます。スカイツリーにも近い好立地。',
  '東京都墨田区業平1-7-20',
  'tokyo', 'sumida',
  35.7110, 139.8130,
  '東京メトロ半蔵門線 押上駅',
  1,
  60, 2, false, NULL,
  '{"バリアフリー": true, "エレベーター": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅前', '寺院式場', '宗派不問', '大型葬対応', 'モダン建築'],
  '春慶寺（日蓮宗）',
  4.1, 14
),

-- 38. 安楽寺（墨田区）
(
  '安楽寺 式場',
  'anrakuji-sumida',
  'temple_hall',
  '東武スカイツリーライン「東向島駅」から徒歩2分の寺院式場。墨田区の地域に根ざした歴史ある寺院で、温かみのあるお別れの場を提供しています。',
  '東京都墨田区東向島3-8-1',
  'tokyo', 'sumida',
  35.7220, 139.8170,
  '東武スカイツリーライン 東向島駅',
  2,
  30, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', '地域密着'],
  '安楽寺',
  4.0, 6
),

-- 39. 善慶寺ホール 常照殿（江戸川区）
(
  '善慶寺ホール 常照殿',
  'zenkeiji-joshoden',
  'temple_hall',
  '江戸川区北小岩にある寺院式場。50名程度の葬儀に対応可能で、家族葬から一般葬まで幅広く利用されています。江戸川区の方に親しまれている式場です。',
  '東京都江戸川区北小岩2-37-20',
  'tokyo', 'edogawa',
  35.7370, 139.8860,
  'JR総武線 小岩駅',
  10,
  50, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['寺院式場', '家族葬対応', '駐車場あり', '江戸川区'],
  '善慶寺',
  4.0, 9
),

-- 40. 慈眼寺斎場（荒川区）
(
  '慈眼寺斎場',
  'jigenji-saijo',
  'temple_hall',
  '京成本線「町屋駅」周辺にある寺院式場。近くには町屋斎場もあり、火葬場へのアクセスが良好。荒川区を中心に地域の方々にご利用いただいています。',
  '東京都荒川区町屋2-20-12',
  'tokyo', 'arakawa',
  35.7440, 139.7830,
  '京成本線 町屋駅',
  5,
  30, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['寺院式場', '火葬場近接', '家族葬向き', '荒川区'],
  '慈眼寺',
  3.9, 7
),

-- 41. 無量寺 三宝会館（北区）
(
  '無量寺 三宝会館',
  'muryoji-sanpo-kaikan',
  'temple_hall',
  'JR京浜東北線「上中里駅」から徒歩7分の寺院式場。北区の閑静な住宅街にあり、落ち着いた雰囲気でお別れの時間を過ごせます。',
  '東京都北区上中里1-42-8',
  'tokyo', 'kita',
  35.7460, 139.7430,
  'JR京浜東北線 上中里駅',
  7,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['寺院式場', '閑静な環境', '北区'],
  '無量寺',
  4.0, 8
),

-- 42. 城官寺会館（北区）
(
  '城官寺会館',
  'jokanji-kaikan',
  'temple_hall',
  'JR京浜東北線「上中里駅」から徒歩3分の好立地にある寺院式場。アクセスの良さと落ち着いた環境を兼ね備え、北区・荒川区エリアの方にご利用いただいています。',
  '東京都北区上中里1-28-3',
  'tokyo', 'kita',
  35.7470, 139.7450,
  'JR京浜東北線 上中里駅',
  3,
  30, 1, false, 8,
  '{"バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', '北区'],
  '城官寺',
  4.0, 6
);

-- =============================================
-- 6. 公共施設・区民斎場
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 43. 南池袋斎場（豊島区・公営）
(
  '南池袋斎場',
  'minamiikebukuro-saijo',
  'public_facility',
  '都電「雑司が谷駅」から徒歩4分に位置する豊島区の公営斎場。区民向けの低価格な式場利用料が特徴。家族葬から一般葬まで対応しています。',
  '東京都豊島区南池袋4-25-2',
  'tokyo', 'toshima',
  35.7210, 139.7190,
  '都電荒川線 雑司が谷駅',
  4,
  50, 2, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['公営斎場', '低価格', '区民優先', '駅近', '豊島区'],
  '豊島区',
  3.8, 14
),

-- 44. 北区セレモニーホール（北区・公営）
(
  '北区セレモニーホール',
  'kitaku-ceremony-hall',
  'public_facility',
  'JR埼京線「北赤羽駅」から徒歩8分の北区立葬儀施設。区民は優先的に低価格で利用可能。清潔感のある施設と丁寧な対応が好評です。',
  '東京都北区浮間4-29-1',
  'tokyo', 'kita',
  35.7900, 139.7030,
  'JR埼京線 北赤羽駅',
  8,
  50, 2, false, 20,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 438000}]',
  ARRAY['公営斎場', '低価格', '区民優先', '駐車場完備', '北区'],
  '北区',
  3.9, 16
),

-- 45. 徳雲会館（台東区）
(
  '徳雲会館',
  'tokuun-kaikan',
  'public_facility',
  '台東区の区民斎場。東京メトロ日比谷線「入谷駅」周辺に位置し、区民向けに低価格で利用できる葬儀施設。家族葬を中心に台東区の方にご利用いただいています。',
  '東京都台東区入谷2-1-8',
  'tokyo', 'taito',
  35.7200, 139.7900,
  '東京メトロ日比谷線 入谷駅',
  5,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['公営斎場', '低価格', '区民優先', '台東区'],
  '平安祭典（台東区委託）',
  3.8, 10
),

-- 46. 最勝寺（新宿区）
(
  '最勝寺 新宿御苑前',
  'saishoji-shinjukugyoen',
  'temple_hall',
  '東京メトロ丸の内線「新宿御苑前駅」から徒歩3分の好立地にある寺院式場。最大70名収容で家族葬から一般葬まで対応。駐車場16台完備。新宿区の中心部にありながら静かな環境が特徴です。',
  '東京都新宿区新宿2-6-3',
  'tokyo', 'shinjuku',
  35.6890, 139.7120,
  '東京メトロ丸の内線 新宿御苑前駅',
  3,
  70, 1, false, 16,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '寺院式場', '都心部', '駐車場完備', '新宿区'],
  '最勝寺',
  4.1, 12
);

-- =============================================
-- 7. 追加の民営斎場（カバレッジ拡大）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 47. 中野セレモニーホール（中野区）
(
  '中野セレモニーホール',
  'nakano-ceremony-hall',
  'private_hall',
  'JR中央線・東京メトロ東西線「中野駅」から徒歩10分の葬儀場。中野区の住宅街に位置し、家族葬に最適な落ち着いた空間。きめ細やかなサービスで地域の方々に愛されています。',
  '東京都中野区新井1-30-5',
  'tokyo', 'nakano',
  35.7080, 139.6620,
  'JR中央線・東京メトロ東西線 中野駅',
  10,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['家族葬向き', '中野区', '落ち着いた空間'],
  '',
  4.0, 11
),

-- 48. 目黒メモリアルホール（目黒区）
(
  '目黒メモリアルホール',
  'meguro-memorial-hall',
  'private_hall',
  '東急東横線「学芸大学駅」から徒歩8分の葬儀場。目黒区の閑静な住宅街に位置し、少人数の家族葬に特化。モダンなデザインの落ち着いた空間で、大切な方とのお別れの時間を過ごせます。',
  '東京都目黒区鷹番2-18-10',
  'tokyo', 'meguro',
  35.6280, 139.6850,
  '東急東横線 学芸大学駅',
  8,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 418000}]',
  ARRAY['家族葬専門', '目黒区', 'モダンデザイン', '少人数向き'],
  '',
  4.2, 14
),

-- 49. 港区セレモニーホール（港区）
(
  '港区セレモニーホール',
  'minatoku-ceremony-hall',
  'private_hall',
  '都営三田線「白金高輪駅」から徒歩7分の葬儀場。港区の落ち着いたエリアに位置し、少人数の家族葬に対応。上質な空間でお見送りいただけます。',
  '東京都港区白金1-27-6',
  'tokyo', 'minato',
  35.6420, 139.7280,
  '都営三田線 白金高輪駅',
  7,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 148000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 428000}]',
  ARRAY['家族葬向き', '港区', '上質な空間'],
  '',
  4.1, 10
),

-- 50. 千代田区セレモニーホール（千代田区）
(
  '千代田セレモニーホール',
  'chiyoda-ceremony-hall',
  'private_hall',
  '東京メトロ有楽町線「麹町駅」から徒歩5分の葬儀場。千代田区の中心部に位置しながら、静かで落ち着いた空間を提供。少人数の家族葬に最適な式場です。',
  '東京都千代田区麹町4-8-10',
  'tokyo', 'chiyoda',
  35.6850, 139.7360,
  '東京メトロ有楽町線 麹町駅',
  5,
  30, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 158000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 448000}]',
  ARRAY['駅近', '家族葬向き', '千代田区', '都心部'],
  '',
  4.0, 8
),

-- 51. 中央区セレモニーホール（中央区）
(
  '中央区メモリアルホール',
  'chuoku-memorial-hall',
  'private_hall',
  '東京メトロ日比谷線「築地駅」から徒歩5分の葬儀場。中央区の下町情緒残るエリアに位置し、家族葬に適した温かみのある空間。丁寧なスタッフ対応が好評です。',
  '東京都中央区築地3-17-10',
  'tokyo', 'chuo',
  35.6660, 139.7710,
  '東京メトロ日比谷線 築地駅',
  5,
  30, 1, false, NULL,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 148000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 438000}]',
  ARRAY['駅近', '家族葬向き', '中央区'],
  '',
  4.0, 9
);

-- =============================================
-- データ投入完了確認
-- =============================================
-- SELECT count(*) AS venue_count FROM venues;
-- SELECT city_slug, count(*) FROM venues GROUP BY city_slug ORDER BY count DESC;
