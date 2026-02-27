-- =============================================
-- 斎場データ Batch 2: 東京10区追加データ
-- 対象: 新宿区・目黒区・品川区・港区・中央区・千代田区・中野区・板橋区・江東区・台東区
-- 各区3〜5件に増やすための追加分 約45件
-- =============================================

-- =============================================
-- 1. 新宿区 追加（既存: 落合斎場, 最勝寺 → +3件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 最勝寺 壇信徒会館（新宿区・落合エリア）
(
  '最勝寺 壇信徒会館',
  'saishoji-danshintokaikan',
  'temple_hall',
  '都営大江戸線「中井駅」から徒歩2分、東京メトロ東西線「落合駅」から徒歩4分の好立地にある寺院式場。真言宗豊山派の寺院で、最大70名収容。落合斎場にも近く、火葬場へのアクセスも良好。宗派を問わず利用可能で、1日1組の貸切型です。',
  '東京都新宿区上落合3-4-12',
  'tokyo', 'shinjuku',
  35.7148, 139.6838,
  '都営大江戸線 中井駅',
  2,
  70, 1, false, 14,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '1日1組貸切', '火葬場近接'],
  '最勝寺（真言宗豊山派）',
  4.0, 15
),

-- 西念寺（新宿区・若葉エリア）
(
  '西念寺',
  'sainenji-shinjuku',
  'temple_hall',
  '東京メトロ丸の内線「四谷三丁目駅」から徒歩7分に位置する浄土宗の寺院式場。服部半蔵ゆかりの歴史ある寺院で、新宿区若葉の閑静な環境にあります。少人数の家族葬に適した落ち着いた雰囲気が特徴。',
  '東京都新宿区若葉2-9',
  'tokyo', 'shinjuku',
  35.6865, 139.7261,
  '東京メトロ丸の内線 四谷三丁目駅',
  7,
  40, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['寺院式場', '歴史ある寺院', '閑静な環境', '家族葬向き', '新宿区'],
  '西念寺（浄土宗）',
  4.0, 8
),

-- 新宿区 牛込箪笥区民ホール（公共施設利用）
(
  '牛込箪笥区民ホール',
  'ushigome-tansu-hall',
  'public_facility',
  '都営大江戸線「牛込神楽坂駅」A1出口直結の新宿区立施設。区民葬儀にも利用でき、低価格で葬儀が可能。家族葬から小規模な一般葬まで対応。駅直結のためアクセスが非常に良く、ご高齢の参列者にも安心です。',
  '東京都新宿区箪笥町15',
  'tokyo', 'shinjuku',
  35.7010, 139.7355,
  '都営大江戸線 牛込神楽坂駅',
  1,
  60, 1, false, NULL,
  '{"バリアフリー": true, "エレベーター": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['駅直結', '公共施設', '低価格', '区民優先', 'バリアフリー'],
  '新宿区',
  3.7, 6
);

-- =============================================
-- 2. 目黒区 追加（既存: 目黒メモリアルホール → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- セレモニー目黒（区民斎場）
(
  'セレモニー目黒',
  'ceremony-meguro',
  'public_facility',
  '目黒区が運営する区民のための葬儀専用式場。東急東横線「都立大学駅」から徒歩7分。42席の式場を2室備え、同時に2組の葬儀が可能。通夜仮眠室も完備。目黒区民は優先利用・割引料金で利用できます。',
  '東京都目黒区八雲1-1-9',
  'tokyo', 'meguro',
  35.6172, 139.6780,
  '東急東横線 都立大学駅',
  7,
  42, 2, false, 12,
  '{"バリアフリー": true, "控室": true, "通夜仮眠室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['公営斎場', '区民優先', '低価格', '同時2組対応', '通夜仮眠可'],
  '目黒区',
  4.0, 22
),

-- 正覚寺 実相会館
(
  '正覚寺 実相会館',
  'shokakuji-jisso-kaikan',
  'temple_hall',
  '東急東横線「中目黒駅」から徒歩5分の好立地にある寺院式場。実相会館（60席）と別館たちばなを備え、家族葬から中規模の一般葬・社葬まで幅広く対応。宗旨・宗派を問わず利用可能。目黒区で人気の高い式場です。',
  '東京都目黒区中目黒3-1-6',
  'tokyo', 'meguro',
  35.6380, 139.6990,
  '東急東横線 中目黒駅',
  5,
  60, 2, false, 20,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '中規模対応', '人気斎場'],
  '正覚寺',
  4.3, 28
),

-- 円融寺 示真殿
(
  '円融寺 示真殿',
  'enyuji-shishinden',
  'temple_hall',
  '東急目黒線「西小山駅」から徒歩10分に位置する天台宗の名刹・圓融寺の寺院式場。100席のメインホールを備え、家族葬からご会葬のある葬儀まで対応。敷地内に駐車場40〜50台完備。碑文谷の閑静な環境で厳かなお見送りが可能です。',
  '東京都目黒区碑文谷1-22-22',
  'tokyo', 'meguro',
  35.6210, 139.6910,
  '東急目黒線 西小山駅',
  10,
  120, 1, false, 50,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['寺院式場', '大型駐車場', '歴史ある名刹', '宿泊可能', '大規模対応'],
  '円融寺（天台宗）',
  4.2, 19
),

-- 五百羅漢寺 羅漢会館
(
  '五百羅漢寺 羅漢会館',
  'gohyakurakanji-rakan-kaikan',
  'temple_hall',
  '東急目黒線「不動前駅」から徒歩8分の寺院式場。清雲・瑞光の2つの式場を備え、同時に2組の葬儀が可能。30席から200席まで対応でき、桐ヶ谷斎場（車4分）へのアクセスも良好。宗派を問わず利用できます。',
  '東京都目黒区下目黒3-19-1',
  'tokyo', 'meguro',
  35.6290, 139.7100,
  '東急目黒線 不動前駅',
  8,
  200, 2, false, 40,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true, "同時2組対応": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['寺院式場', '宗派不問', '大規模対応', '駐車場完備', '火葬場近接'],
  '五百羅漢寺',
  4.1, 16
);

-- =============================================
-- 3. 品川区 追加（既存: 桐ヶ谷斎場 → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- なぎさ会館（品川区民斎場）
(
  'なぎさ会館',
  'nagisa-kaikan',
  'public_facility',
  '品川区が運営する区民斎場。京浜急行「立会川駅」から徒歩5分。60席の式場を2室備え、同時に2組の葬儀が可能。品川区民なら優先的に低価格で利用できます。※2026年3月31日閉館予定。',
  '東京都品川区勝島3-1-3',
  'tokyo', 'shinagawa',
  35.6000, 139.7380,
  '京浜急行 立会川駅',
  5,
  60, 2, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['公営斎場', '区民優先', '低価格', '駅近', '同時2組対応'],
  '品川区',
  3.8, 18
),

-- 安楽寺別院 五雲閣
(
  '安楽寺別院 五雲閣',
  'anrakuji-gounkaku',
  'temple_hall',
  '東急目黒線「不動前駅」から徒歩4分の好アクセスにある寺院式場。20席から60席まで3タイプの式場を備え、家族葬から一般葬まで対応。桐ヶ谷斎場にも近く、通夜から火葬までスムーズに執り行えます。宿泊も可能。',
  '東京都品川区西五反田5-5-12',
  'tokyo', 'shinagawa',
  35.6275, 139.7075,
  '東急目黒線 不動前駅',
  4,
  60, 3, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "霊安室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['駅近', '寺院式場', '宿泊可能', '火葬場近接', '複数式場'],
  '安楽寺',
  4.1, 14
),

-- 本覚寺 大光普照殿
(
  '本覚寺 大光普照殿',
  'hongakuji-daikoufushoden',
  'temple_hall',
  '京浜急行「新馬場駅」南口から徒歩2分の好アクセスにある天台宗の寺院式場。40席の式場で家族葬を中心に対応。宿泊も可能で通夜の付き添いができます。品川宿の歴史を感じる趣のある環境です。',
  '東京都品川区南品川1-10-11',
  'tokyo', 'shinagawa',
  35.6140, 139.7400,
  '京浜急行 新馬場駅',
  2,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 478000}]',
  ARRAY['駅近', '寺院式場', '宿泊可能', '家族葬向き', '歴史的環境'],
  '本覚寺（天台宗）',
  4.0, 10
),

-- 丸山寺（品川区二葉）
(
  '丸山寺',
  'ganzenji-shinagawa',
  'temple_hall',
  'JR横須賀線「西大井駅」から徒歩7分の寺院式場。40席の式場で家族葬・一日葬に対応。駐車場15台完備。宿泊施設も用意されており、通夜の付き添いが可能です。品川区二葉の落ち着いた住宅街に位置しています。',
  '東京都品川区二葉4-12-15',
  'tokyo', 'shinagawa',
  35.6090, 139.7270,
  'JR横須賀線 西大井駅',
  7,
  40, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['寺院式場', '駐車場完備', '宿泊可能', '家族葬向き'],
  '丸山寺',
  3.9, 8
);

-- =============================================
-- 4. 港区 追加（既存: 港区セレモニーホール → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- やすらぎ会館（港区民斎場）
(
  'やすらぎ会館',
  'yasuragi-kaikan-minato',
  'public_facility',
  '東京メトロ千代田線「乃木坂駅」5番出口から徒歩1分の港区立区民斎場。40席の式場を2室備え、同時に2組の葬儀が可能。港区民は優先利用・低価格で利用可能。青山霊園に隣接した落ち着いた環境です。',
  '東京都港区南青山2-34-1',
  'tokyo', 'minato',
  35.6700, 139.7230,
  '東京メトロ千代田線 乃木坂駅',
  1,
  60, 2, false, NULL,
  '{"バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['駅前', '公営斎場', '区民優先', '低価格', '同時2組対応'],
  '港区',
  3.9, 20
),

-- 増上寺 慈雲閣・光摂殿
(
  '増上寺 光摂殿・慈雲閣',
  'zojoji-koshoden',
  'temple_hall',
  '浄土宗大本山・増上寺の寺院式場。慈雲閣（120席）・光摂殿（250席）・大殿（500席）と都内最大級の規模を誇り、家族葬から大規模な社葬まで対応。駐車場200台完備。東京タワーを望む荘厳な環境で故人をお見送りできます。',
  '東京都港区芝公園4-7-35',
  'tokyo', 'minato',
  35.6580, 139.7510,
  '都営三田線 御成門駅',
  3,
  500, 3, false, 200,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 498000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 698000}]',
  ARRAY['寺院式場', '都内最大級', '大規模葬対応', '社葬対応', '大型駐車場', '荘厳な環境'],
  '増上寺（浄土宗）',
  4.4, 35
),

-- 高野山東京別院
(
  '高野山東京別院',
  'koyasan-tokyo-betsuin',
  'temple_hall',
  '都営浅草線「高輪台駅」から徒歩6分に位置する高野山真言宗の東京における拠点寺院。本堂150席・斎場70席を備え、家族葬から大型葬まで対応可能。駐車場30〜60台。世界遺産・高野山の荘厳な雰囲気を都内で体感できます。',
  '東京都港区高輪3-15-18',
  'tokyo', 'minato',
  35.6340, 139.7330,
  '都営浅草線 高輪台駅',
  6,
  150, 2, false, 60,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 308000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 378000}]',
  ARRAY['寺院式場', '大規模対応', '駐車場完備', '格式高い', '世界遺産関連'],
  '高野山東京別院（高野山真言宗）',
  4.3, 25
),

-- 妙善寺（港区六本木）
(
  '妙善寺',
  'myozenji-minato',
  'temple_hall',
  '東京メトロ日比谷線・都営大江戸線「六本木駅」から徒歩7分の日蓮宗寺院式場。100席の式場で家族葬から一般葬まで対応。六本木の都心部にありながら静かな環境で、通夜後の宿泊も可能です。',
  '東京都港区六本木3-15-4',
  'tokyo', 'minato',
  35.6620, 139.7350,
  '東京メトロ日比谷線・都営大江戸線 六本木駅',
  7,
  100, 1, false, 6,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['寺院式場', '六本木エリア', '宿泊可能', '都心部'],
  '妙善寺（日蓮宗）',
  4.0, 12
);

-- =============================================
-- 5. 中央区 追加（既存: 中央区メモリアルホール → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 中央区立セレモニーホール（公営）
(
  '中央区立セレモニーホール',
  'chuoku-ceremony-hall',
  'public_facility',
  '都営大江戸線「勝どき駅」から徒歩5分の中央区立葬儀施設。区民は低価格で利用可能（57,300円〜）。家族葬から小規模な一般葬まで対応。1日1組貸切で、プライバシーに配慮した葬儀が可能です。',
  '東京都中央区勝どき1-13-19',
  'tokyo', 'chuo',
  35.6590, 139.7740,
  '都営大江戸線 勝どき駅',
  5,
  60, 1, false, NULL,
  '{"バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 258000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['公営斎場', '区民優先', '低価格', '1日1組貸切', '駅近'],
  '中央区',
  3.8, 14
),

-- 浜町メモリアル（中央区・公営）
(
  '浜町メモリアル',
  'hamacho-memorial',
  'public_facility',
  '都営新宿線「浜町駅」から徒歩4分の中央区立斎場。浜町公園内に位置し、第1ホール60名・第2ホール80名の2室を備えます。中央区民は優先利用可能。緑豊かな公園内の落ち着いた環境で葬儀を執り行えます。',
  '東京都中央区日本橋浜町2-59-1',
  'tokyo', 'chuo',
  35.6870, 139.7860,
  '都営新宿線 浜町駅',
  4,
  80, 2, false, NULL,
  '{"バリアフリー": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['公営斎場', '区民優先', '駅近', '公園内', '2式場'],
  '中央区',
  3.9, 16
),

-- 築地本願寺 第二伝道会館
(
  '築地本願寺 第二伝道会館',
  'tsukiji-honganji-dendokaikan',
  'temple_hall',
  '東京メトロ日比谷線「築地駅」から徒歩2分。浄土真宗本願寺派の本山・築地本願寺に併設された寺院式場。180席の大ホールを備え、一般葬から大規模な社葬まで対応。駐車場150台完備。宗派を問わず利用可能です。',
  '東京都中央区築地3-15-1',
  'tokyo', 'chuo',
  35.6660, 139.7730,
  '東京メトロ日比谷線 築地駅',
  2,
  180, 1, false, 150,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 498000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 698000}]',
  ARRAY['駅近', '寺院式場', '大規模対応', '社葬対応', '大型駐車場', '宗派不問'],
  '築地本願寺（浄土真宗本願寺派）',
  4.3, 30
),

-- ウェルライフホール平安祭典 銀座・築地
(
  'ウェルライフホール平安祭典 銀座・築地',
  'heian-ginza-tsukiji',
  'private_hall',
  '東京メトロ日比谷線「築地駅」から徒歩3分の家族葬専用ホール。1日1組完全貸切で少人数のお別れに最適。築地・銀座エリアの都心に位置しながら、プライベート感のある空間を提供。24時間対応。',
  '東京都中央区築地1-12-16',
  'tokyo', 'chuo',
  35.6680, 139.7720,
  '東京メトロ日比谷線 築地駅',
  3,
  30, 1, false, NULL,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['駅近', '家族葬専門', '1日1組貸切', '24時間対応', '都心部'],
  '株式会社平安祭典',
  4.1, 11
);

-- =============================================
-- 6. 千代田区 追加（既存: 千代田セレモニーホール → +3件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 千代田万世会館（千代田区・公営）
(
  '千代田万世会館',
  'chiyoda-mansei-kaikan',
  'public_facility',
  'JR山手線「秋葉原駅」から徒歩4分の千代田区立葬祭施設。3階と6階に式場、4階に会食室、5階に親族控室を備えます。千代田区民は低価格で利用可能。仏式・神式・キリスト教式・無宗教葬まで幅広く対応。',
  '東京都千代田区外神田1-1-13',
  'tokyo', 'chiyoda',
  35.6980, 139.7710,
  'JR山手線 秋葉原駅',
  4,
  40, 2, false, NULL,
  '{"バリアフリー": true, "控室": true, "会食室": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '公営斎場', '区民優先', '低価格', '全宗教対応'],
  '千代田区',
  3.9, 15
),

-- カトリック麹町 聖イグナチオ教会
(
  'カトリック麹町 聖イグナチオ教会',
  'st-ignatius-church-kojimachi',
  'temple_hall',
  '東京メトロ丸の内線「四ツ谷駅」から徒歩1分の教会式場。マリア聖堂（180席）でキリスト教式の厳かな葬儀が可能。イエズス会が運営する歴史ある教会で、上智大学に隣接した緑豊かな環境です。',
  '東京都千代田区麹町6-5-1',
  'tokyo', 'chiyoda',
  35.6860, 139.7320,
  '東京メトロ丸の内線 四ツ谷駅',
  1,
  180, 1, false, NULL,
  '{"バリアフリー": true, "安置室": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅前', '教会式場', 'キリスト教式', '歴史ある教会', '大規模対応'],
  'カトリック麹町教会（イエズス会）',
  4.2, 12
),

-- 九段会館テラス（千代田区）
(
  '九段会館テラス',
  'kudankaikan-terrace',
  'private_hall',
  '東京メトロ半蔵門線・東西線・都営新宿線「九段下駅」から徒歩1分の好立地。リニューアルされた歴史的建造物で、お別れの会や大型葬儀に対応。格式高い空間で故人を偲ぶセレモニーを執り行えます。',
  '東京都千代田区九段南1-6-5',
  'tokyo', 'chiyoda',
  35.6940, 139.7450,
  '東京メトロ半蔵門線 九段下駅',
  1,
  300, 2, false, NULL,
  '{"バリアフリー": true, "エレベーター": true, "控室": true, "会食室": true}',
  '[{"type": "ippanso", "label": "一般葬・お別れの会プラン", "priceFrom": 798000}]',
  ARRAY['駅前', '格式高い', 'お別れの会対応', '大規模葬対応', '歴史的建造物'],
  '東急不動産株式会社',
  4.3, 8
);

-- =============================================
-- 7. 中野区 追加（既存: 中野セレモニーホール → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 宝仙寺 大師堂
(
  '宝仙寺 大師堂',
  'hosenji-taishido',
  'temple_hall',
  '東京メトロ丸の内線・都営大江戸線「中野坂上駅」から徒歩5分の寺院式場。大ホール150席・小ホール40席の2つの式場を備え、規模に応じた葬儀に対応。駐車場50台完備。中野区を代表する格式ある寺院斎場です。',
  '東京都中野区中央2-33-3',
  'tokyo', 'nakano',
  35.6990, 139.6680,
  '東京メトロ丸の内線・都営大江戸線 中野坂上駅',
  5,
  150, 2, false, 50,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 458000}]',
  ARRAY['駅近', '寺院式場', '大規模対応', '駐車場完備', '格式ある寺院'],
  '宝仙寺',
  4.2, 22
),

-- 天徳院会館
(
  '天徳院会館',
  'tentokuin-kaikan',
  'temple_hall',
  '東京メトロ東西線「落合駅」から徒歩7分の寺院式場。大小2つの式場を備え、10名程度の少人数から200名超の大規模葬まで対応可能。駐車場15台完備。落合斎場にも近く、火葬場へのアクセスが良好です。',
  '東京都中野区上高田1-31-4',
  'tokyo', 'nakano',
  35.7120, 139.6740,
  '東京メトロ東西線 落合駅',
  7,
  200, 2, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['寺院式場', '大規模対応', '少人数対応', '火葬場近接', '駐車場あり'],
  '天徳院',
  4.1, 18
),

-- グリーンホール環七野方
(
  'グリーンホール環七野方',
  'greenhall-kannanogata',
  'private_hall',
  '西武新宿線「野方駅」から徒歩8分の環七通り沿いにある家族葬ホール。40名収容の式場で少人数のお別れに最適。宗派不問で低価格が魅力。10名様の小規模葬なら55,000円の式場費で経済的です。',
  '東京都中野区大和町2-2-17',
  'tokyo', 'nakano',
  35.7160, 139.6560,
  '西武新宿線 野方駅',
  8,
  40, 1, false, NULL,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬向き', '低価格', '宗派不問', '少人数対応'],
  'グリーンホール環七野方',
  4.0, 10
),

-- 高徳寺 新井白石記念ホール
(
  '高徳寺 新井白石記念ホール',
  'kotokuji-araihakuseki-hall',
  'temple_hall',
  'JR東中野駅から徒歩6分、東西線落合駅から徒歩5分の好立地にある真宗大谷派の寺院式場。1階式場100席・地下ホール72席を備え、早稲田通り沿いの白い外観が特徴的。駐車場15台完備。落合斎場への移動もスムーズです。',
  '東京都中野区上高田1-2-9',
  'tokyo', 'nakano',
  35.7130, 139.6780,
  'JR総武線 東中野駅',
  6,
  100, 2, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 458000}]',
  ARRAY['駅近', '寺院式場', '2式場', '駐車場完備', '火葬場近接'],
  '高徳寺（真宗大谷派）',
  4.1, 14
);

-- =============================================
-- 8. 板橋区 追加（既存: 戸田葬祭場 → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 舟渡斎場（板橋区指定斎場・公営）
(
  '舟渡斎場',
  'funado-saijo',
  'public_facility',
  '板橋区唯一の公営斎場。50席の式場を2室備え、同時に2組の葬儀が可能。戸田葬祭場に隣接しているため火葬場への移動負担が少ないのが大きな特徴。板橋区民は88,000円で利用可能。宿泊設備・エレベーター完備。',
  '東京都板橋区舟渡4-14-6',
  'tokyo', 'itabashi',
  35.7920, 139.6760,
  '都営三田線 蓮根駅',
  25,
  50, 2, false, 17,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 438000}]',
  ARRAY['公営斎場', '区民優先', '低価格', '火葬場隣接', '宿泊可能', '同時2組対応'],
  '板橋区',
  3.8, 18
),

-- 蓮根レインボーホール
(
  '蓮根レインボーホール',
  'hasune-rainbow-hall',
  'public_facility',
  '都営三田線「蓮根駅」から徒歩2分の板橋区指定斎場。小ホール50名・大ホール100名を備え、200名程度の会葬者まで対応可能。板橋区民は88,000円の低価格で利用可能。駅近でアクセス良好です。',
  '東京都板橋区蓮根2-19-12',
  'tokyo', 'itabashi',
  35.7850, 139.6640,
  '都営三田線 蓮根駅',
  2,
  100, 2, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '公営斎場', '区民優先', '低価格', '大規模対応'],
  '板橋区',
  3.9, 15
),

-- 宗仙寺会館
(
  '宗仙寺会館',
  'sosenji-kaikan',
  'temple_hall',
  '都営三田線「板橋区役所前駅」から徒歩3分の好立地にある寺院式場。50〜80名収容で家族葬から一般葬まで対応。駐車場13台完備。全宗派対応で、会食室・仮眠施設も備えた充実の設備です。',
  '東京都板橋区板橋2-22-14',
  'tokyo', 'itabashi',
  35.7530, 139.7100,
  '都営三田線 板橋区役所前駅',
  3,
  80, 1, false, 13,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "会食室": true, "仮眠施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 468000}]',
  ARRAY['駅近', '寺院式場', '全宗派対応', '仮眠施設あり', '駐車場あり'],
  '宗仙寺',
  4.0, 12
),

-- 千代田赤塚ホール
(
  '千代田赤塚ホール',
  'chiyoda-akatsuka-hall',
  'private_hall',
  '東京メトロ有楽町線「地下鉄赤塚駅」から徒歩1分の駅前葬儀場。あやめホール（45席）とりんどうホール（25席）の2式場を備え、家族葬に最適。タワー型駐車場20台完備。きめ細やかなサービスが特徴です。',
  '東京都板橋区赤塚新町3-3-8',
  'tokyo', 'itabashi',
  35.7630, 139.6380,
  '東京メトロ有楽町線 地下鉄赤塚駅',
  1,
  45, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 278000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 488000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 488000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['駅前', '家族葬対応', '2式場', '宿泊可能', '駐車場完備'],
  '株式会社千代田セレモニー',
  4.1, 20
);

-- =============================================
-- 9. 江東区 追加（既存: サポートセンター江東 → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 心行寺 双葉ホール
(
  '心行寺 双葉ホール',
  'shingyoji-futaba-hall',
  'temple_hall',
  '都営大江戸線・東京メトロ東西線「門前仲町駅」から徒歩5分の寺院式場。最大100席で家族葬から一般葬まで対応。駐車場12台完備、バリアフリー設計。1日1組の貸切利用で落ち着いたお別れの時間を過ごせます。深川の下町情緒あふれる環境です。',
  '東京都江東区深川2-16-7',
  'tokyo', 'koto',
  35.6770, 139.7970,
  '都営大江戸線・東京メトロ東西線 門前仲町駅',
  5,
  100, 1, false, 12,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "安置室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 478000}]',
  ARRAY['駅近', '寺院式場', '1日1組貸切', 'バリアフリー', '下町風情'],
  '心行寺',
  4.2, 16
),

-- 上妙寺 慈恩堂
(
  '上妙寺 慈恩堂',
  'jomyoji-jiondo',
  'temple_hall',
  '都営新宿線「大島駅」から徒歩15分に位置する日蓮宗の寺院式場。1階ホール60席・2階ホール72席を備え、法要・会食にも利用可能。寛永2年（1625年）創建の歴史ある寺院。バリアフリー設計でエレベーター完備。',
  '東京都江東区東砂1-4-6',
  'tokyo', 'koto',
  35.6830, 139.8260,
  '都営新宿線 大島駅',
  15,
  72, 2, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 458000}]',
  ARRAY['寺院式場', '歴史ある寺院', 'バリアフリー', 'エレベーター完備', '2式場'],
  '上妙寺（日蓮宗）',
  4.0, 12
),

-- 玉泉院 玉法会館
(
  '玉泉院 玉法会館',
  'gyokusenin-gyokuho-kaikan',
  'temple_hall',
  '東京メトロ半蔵門線・都営大江戸線「清澄白河駅」から徒歩4分の好立地にある日蓮宗の寺院式場。50席の式場で家族葬を中心に対応。1日1組の貸切利用。近代的で重厚感のある葬儀場で、清澄白河のおしゃれなエリアに位置しています。',
  '東京都江東区平野1-14-6',
  'tokyo', 'koto',
  35.6800, 139.8010,
  '東京メトロ半蔵門線・都営大江戸線 清澄白河駅',
  4,
  50, 1, false, NULL,
  '{"バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['駅近', '寺院式場', '1日1組貸切', '家族葬向き', 'モダンな空間'],
  '玉泉院（日蓮宗）',
  4.1, 10
),

-- フェアウェルプレイス・ディア
(
  'フェアウェルプレイス・ディア',
  'farewell-place-dear',
  'private_hall',
  'JR総武線「亀戸駅」から徒歩11分の都内唯一の邸宅型斎場。1日1組完全貸切で、自宅のようなプライベート空間でお別れの時間を過ごせます。30席で少人数の家族葬に最適。温かみのあるインテリアが特徴です。',
  '東京都江東区亀戸3-19-14',
  'tokyo', 'koto',
  35.6920, 139.8260,
  'JR総武線 亀戸駅',
  11,
  30, 1, false, 4,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 228000}]',
  ARRAY['邸宅型', '1日1組貸切', '家族葬専門', '少人数向き', 'プライベート空間'],
  '株式会社ワンライフ',
  4.3, 14
);

-- =============================================
-- 10. 台東区 追加（既存: 徳雲会館 → +4件）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 金蔵寺ホール
(
  '金蔵寺ホール',
  'konzoji-hall',
  'temple_hall',
  '東京メトロ銀座線「田原町駅」から徒歩3分の好立地にある天台宗の寺院式場。大ホール100名・小ホール60名を備え、バリアフリー設計。浅草エリアに位置しながら落ち着いた環境。宗派を問わず無宗教葬にも対応可能です。',
  '東京都台東区寿1-17-2',
  'tokyo', 'taito',
  35.7090, 139.7920,
  '東京メトロ銀座線 田原町駅',
  3,
  100, 2, false, 5,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 248000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', 'バリアフリー', '浅草エリア', '大小2式場'],
  '金蔵寺（天台宗）',
  4.1, 18
),

-- セレモニーホール浄念
(
  'セレモニーホール浄念',
  'ceremony-hall-jonen',
  'temple_hall',
  '都営浅草線「蔵前駅」から徒歩4分の寺院式場。2階大ホール100名・4階小ホール70名を備え、大規模葬から家族葬まで対応。3階和室のみ利用（20名）も可能。霊安室完備で事前安置も対応しています。',
  '東京都台東区蔵前4-18-10',
  'tokyo', 'taito',
  35.7050, 139.7910,
  '都営浅草線 蔵前駅',
  4,
  100, 2, false, NULL,
  '{"バリアフリー": true, "控室": true, "霊安室": true, "会食室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '寺院式場', '大規模対応', '霊安室あり', '多様な利用形態'],
  '浄念寺',
  4.0, 15
),

-- 千松閣（台東区民斎場）
(
  '千松閣',
  'senshokaku-taito',
  'public_facility',
  '台東区清川にある台東区民斎場。法華宗本門流の本性寺に併設された20席の小規模な式場。台東区民は区民料金で利用可能。1日1組貸切タイプで、少人数の家族葬に最適。地域に根ざした温かみのある斎場です。',
  '東京都台東区清川1-1-2',
  'tokyo', 'taito',
  35.7250, 139.7980,
  '東京メトロ日比谷線 三ノ輪駅',
  8,
  20, 1, false, NULL,
  '{"控室": true, "会食室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 228000}]',
  ARRAY['公営斎場', '区民優先', '低価格', '少人数向き', '1日1組貸切'],
  '台東区（本性寺併設）',
  3.7, 8
),

-- 徳雲会館（東上野・正確な住所版 - 既存とslug被りを避ける）
(
  '台東区民斎場 徳雲会館',
  'tokuun-kaikan-higashiueno',
  'public_facility',
  '東京メトロ銀座線「稲荷町駅」から徒歩5分、JR「上野駅」から徒歩8分に位置する台東区民斎場。50〜150名収容で家族葬から一般葬まで対応。1日1組貸切。全宗派対応で、区民は200,000円、区民以外は300,000円の使用料。',
  '東京都台東区東上野4-1-4',
  'tokyo', 'taito',
  35.7130, 139.7810,
  '東京メトロ銀座線 稲荷町駅',
  5,
  150, 1, false, NULL,
  '{"バリアフリー": true, "控室": true, "会食室": true, "寺院控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['区民斎場', '駅近', '1日1組貸切', '全宗派対応', '上野エリア'],
  '台東区',
  3.9, 14
);

-- =============================================
-- データ投入完了確認クエリ（実行時にコメント外す）
-- =============================================
-- SELECT city_slug, count(*) AS venue_count FROM venues WHERE city_slug IN ('shinjuku','meguro','shinagawa','minato','chuo','chiyoda','nakano','itabashi','koto','taito') GROUP BY city_slug ORDER BY venue_count DESC;
