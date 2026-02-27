-- =============================================
-- 斎場データ Batch 2: 追加の民営斎場・寺院式場・公共施設
-- 対象: 大田区/足立区/練馬区/杉並区/江戸川区/荒川区/墨田区/葛飾区/北区/文京区/豊島区/世田谷区
-- 合計約50件の追加データ
-- =============================================

-- =============================================
-- 1. 大田区（既存3件 → 目標7件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 大田区追加1: 平和の森会館（公営斎場）
(
  '平和の森会館',
  'heiwanomori-kaikan',
  'public_facility',
  '大田区が運営する公営の区民斎場。お通夜・告別式を行える2つの式場を備え、同時に2組の葬儀を執り行えます。京浜急行線「平和島駅」から徒歩10分、区民向けの低価格な利用料が特徴です。',
  '東京都大田区平和の森公園2-3',
  'tokyo', 'ota',
  35.5790, 139.7350,
  '京浜急行線 平和島駅',
  10,
  50, 2, false, 17,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": false}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 428000}]',
  ARRAY['公営斎場', '低価格', '区民優先', '大田区'],
  '大田区',
  3.8, 18
),

-- 大田区追加2: 密厳院会館（寺院式場）
(
  '密厳院会館',
  'mitsugonin-kaikan',
  'temple_hall',
  '京浜急行線「大森海岸駅」から徒歩7分に位置する寺院式場。大田区大森エリアの方に親しまれ、家族葬から一般葬まで幅広く対応。落ち着いた雰囲気の中でお別れの時間を過ごせます。',
  '東京都大田区大森北3-5-4',
  'tokyo', 'ota',
  35.5870, 139.7380,
  '京浜急行線 大森海岸駅',
  7,
  50, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['寺院式場', '家族葬対応', '大田区', '大森エリア'],
  '密厳院',
  4.0, 12
),

-- 大田区追加3: 光教寺光輪閣（寺院式場）
(
  '光教寺 光輪閣',
  'koukyouji-kourinkaku',
  'temple_hall',
  '池上通り沿いに面する浄土真宗本願寺派の寺院式場。大規模な葬儀にも対応可能な広い式場を備え、宗派を問わず利用可能。大田区中央エリアの方に多くご利用いただいています。',
  '東京都大田区中央4-35-3',
  'tokyo', 'ota',
  35.5730, 139.7210,
  '都営浅草線 西馬込駅',
  12,
  80, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "大型式場": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['寺院式場', '大型葬対応', '宗派不問', '池上通り沿い'],
  '光教寺（浄土真宗本願寺派）',
  4.1, 14
),

-- 大田区追加4: 五十鈴典礼斎場（民営斎場）
(
  '五十鈴典礼 大田斎場',
  'isuzu-tenrei-ota',
  'private_hall',
  '大田区で長年にわたり地域密着型の葬儀サービスを提供する斎場。家族葬から火葬式まで、小規模な葬儀に特化した温かみのある空間が特徴。丁寧なスタッフ対応で口コミ評価が高い。',
  '東京都大田区西蒲田7-4-4',
  'tokyo', 'ota',
  35.5610, 139.7140,
  'JR京浜東北線 蒲田駅',
  5,
  30, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['家族葬専門', '地域密着', '駅近', '口コミ高評価'],
  '五十鈴典礼株式会社',
  4.3, 21
);

-- =============================================
-- 2. 足立区（既存4件 → 目標7件 → +3件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 足立区追加1: 理性院会館（寺院式場）
(
  '理性院会館',
  'riseiin-kaikan',
  'temple_hall',
  'JR常磐線「北千住駅」から徒歩6分の好立地にある寺院式場。地下1階に50席収容可能な式場と、最大150席の和室お清め室を備え、家族葬から中規模の一般葬まで対応。足立区・荒川区エリアの方に多くご利用いただいています。',
  '東京都足立区柳原2-5-1',
  'tokyo', 'adachi',
  35.7530, 139.8030,
  'JR常磐線 北千住駅',
  6,
  150, 1, false, 4,
  '{"安置室": true, "バリアフリー": true, "控室": true, "和室お清め室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '寺院式場', '中規模対応', '北千住エリア'],
  '理性院',
  4.1, 16
),

-- 足立区追加2: 性翁寺木余堂会館（寺院式場）
(
  '性翁寺 木余堂会館',
  'shouji-mokuyodo-kaikan',
  'temple_hall',
  '日暮里舎人ライナー「扇大橋駅」から徒歩5分に位置する寺院式場。1階式場はイス席60名、2階お清め所はイス席約80名で、こぢんまりとした温かい雰囲気が特徴。駐車場10台完備。',
  '東京都足立区扇2-19-3',
  'tokyo', 'adachi',
  35.7700, 139.7660,
  '日暮里舎人ライナー 扇大橋駅',
  5,
  80, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['駅近', '寺院式場', '家族葬対応', '駐車場完備', 'アットホーム'],
  '性翁寺',
  4.0, 13
),

-- 足立区追加3: 足立鹿浜会館（民営斎場）
(
  '足立鹿浜会館',
  'adachi-shikahama-kaikan',
  'private_hall',
  '足立区鹿浜エリアに位置する地域密着型の葬儀場。西新井大師西駅から車で5分。家族葬から一般葬まで幅広く対応し、地元の方に長年愛されている斎場です。丁寧なスタッフ対応が好評。',
  '東京都足立区鹿浜3-4-26',
  'tokyo', 'adachi',
  35.7870, 139.7640,
  '日暮里舎人ライナー 西新井大師西駅',
  15,
  50, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['地域密着', '家族葬対応', '駐車場完備', '足立区'],
  '',
  4.0, 15
);

-- =============================================
-- 3. 練馬区（既存4件 → 目標7件 → +3件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 練馬区追加1: 東高野会館（区指定葬儀場）
(
  '東高野会館',
  'higashikouya-kaikan',
  'public_facility',
  '西武池袋線「練馬高野台駅」から徒歩4分の練馬区指定葬儀場。大斎場（最大60席）・小斎場（最大40名）・別館（最大50名）の3式場を備え、家族葬から一般葬まで対応。駐車場30台完備。',
  '東京都練馬区高野台3-10-3',
  'tokyo', 'nerima',
  35.7400, 139.6190,
  '西武池袋線 練馬高野台駅',
  4,
  60, 3, false, 30,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['区指定葬儀場', '駅近', '複数式場', '駐車場完備', '低価格'],
  '練馬区',
  3.9, 22
),

-- 練馬区追加2: 寶亀閣斎場（区指定葬儀場）
(
  '寶亀閣斎場',
  'houkikaku-saijo',
  'public_facility',
  '石神井公園にほど近い練馬区指定葬儀場。大小2室の式場があり、第一斎場は64席、第二斎場は小規模葬に対応。畳敷きの控室で落ち着いた雰囲気。駐車場20台完備。',
  '東京都練馬区石神井台1-16-7',
  'tokyo', 'nerima',
  35.7400, 139.6040,
  '西武新宿線 上井草駅',
  15,
  64, 2, false, 20,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "畳式場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 448000}]',
  ARRAY['区指定葬儀場', '石神井エリア', '低価格', '駐車場完備', '畳式場あり'],
  '練馬区',
  3.8, 14
),

-- 練馬区追加3: くらしの友 光が丘ホール（民営斎場）
(
  'くらしの友 光が丘ホール',
  'kurashinotomo-hikarigaoka',
  'private_hall',
  '都営大江戸線「光が丘駅」周辺にある葬儀場。練馬区光が丘エリアの大規模団地住民を中心にご利用いただいています。家族葬に適した温かみのある空間が特徴です。',
  '東京都練馬区光が丘3-9-3',
  'tokyo', 'nerima',
  35.7590, 139.6310,
  '都営大江戸線 光が丘駅',
  8,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['家族葬向き', '練馬区', '光が丘エリア'],
  '株式会社くらしの友',
  4.0, 11
);

-- =============================================
-- 4. 杉並区（既存2件 → 目標6件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 杉並区追加1: サルビアホール荻窪（民営斎場）
(
  'サルビアホール荻窪',
  'salvia-hall-ogikubo',
  'private_hall',
  'JR中央線「荻窪駅」から徒歩7分の家族葬専門斎場。2016年オープンの新しい施設で、大式場30席・小式場20席を備えたバリアフリー対応の清潔感ある空間。宗旨・宗派を問わず利用可能です。',
  '東京都杉並区南荻窪3-32-6',
  'tokyo', 'suginami',
  35.6960, 139.6150,
  'JR中央線 荻窪駅',
  7,
  30, 2, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['家族葬専門', '駅近', 'バリアフリー', '新しい施設', '宗派不問'],
  '',
  4.2, 17
),

-- 杉並区追加2: 妙法寺堀之内静堂（寺院式場）
(
  '妙法寺 堀之内静堂',
  'myohoji-horinouchi-seido',
  'temple_hall',
  '堀ノ内斎場にも近い、寺院の森に囲まれた閑静な環境の式場。式場50席、控室90席で会葬者の多い葬儀にも対応。駐車場30台完備。杉並区堀ノ内エリアの方に古くから親しまれています。',
  '東京都杉並区堀ノ内3-48-8',
  'tokyo', 'suginami',
  35.6910, 139.6430,
  '東京メトロ丸の内線 東高円寺駅',
  15,
  90, 1, false, 30,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "大型駐車場": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['寺院式場', '大型駐車場', '閑静な環境', '大規模対応'],
  '妙法寺（日蓮宗）',
  4.1, 15
),

-- 杉並区追加3: 中道寺会堂（寺院式場）
(
  '中道寺会堂',
  'chudoji-kaido',
  'temple_hall',
  'JR中央線「荻窪駅」から徒歩12分。天正10年（1582年）建立の歴史ある日蓮宗寺院の式場。最大150名収容（テント利用時250名）で大規模葬にも対応。杉並区の文化財を所蔵する由緒ある環境です。',
  '東京都杉並区荻窪2-25-1',
  'tokyo', 'suginami',
  35.6960, 139.6230,
  'JR中央線 荻窪駅',
  12,
  150, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['寺院式場', '歴史ある環境', '大規模対応', '杉並区'],
  '中道寺（日蓮宗）',
  4.0, 11
),

-- 杉並区追加4: 清見寺光雲閣（寺院式場）
(
  '清見寺 光雲閣',
  'seigenji-kounkan',
  'temple_hall',
  '西武新宿線「上井草駅」周辺にある寺院式場。杉並区の閑静な住宅街に位置し、少人数の家族葬に最適な落ち着いた空間を提供。宗派を問わず利用可能で、地域の方に親しまれています。',
  '東京都杉並区上井草4-11-34',
  'tokyo', 'suginami',
  35.7200, 139.6080,
  '西武新宿線 上井草駅',
  8,
  40, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['寺院式場', '家族葬向き', '宗派不問', '閑静な環境'],
  '清見寺',
  4.0, 8
);

-- =============================================
-- 5. 江戸川区（既存2件 → 目標6件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 江戸川区追加1: 燈明寺明聖会館（寺院式場）
(
  '燈明寺 明聖会館',
  'toumyouji-meisei-kaikan',
  'temple_hall',
  'JR総武線「平井駅」から徒歩3分の好立地にある寺院式場。関東三聖天のひとつとして知名度の高い寺院。式場150席で大規模な葬儀にも対応。駐車場50台と充実。お通夜の宿泊も可能です。',
  '東京都江戸川区平井6-17-30',
  'tokyo', 'edogawa',
  35.7060, 139.8450,
  'JR総武線 平井駅',
  3,
  150, 1, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '寺院式場', '大規模対応', '大型駐車場', '宿泊可能'],
  '燈明寺',
  4.2, 19
),

-- 江戸川区追加2: 正徳寺会館（寺院式場）
(
  '正徳寺会館',
  'shoutokuji-kaikan',
  'temple_hall',
  '真言宗豊山派正徳寺が運営する寺院式場。都営新宿線「船堀駅」から車で5分。式場50席で家族葬から小規模一般葬に対応。宗旨宗派を問わず利用可能で、江戸川区東小松川エリアの方にご利用いただいています。',
  '東京都江戸川区東小松川3-10-17',
  'tokyo', 'edogawa',
  35.6920, 139.8660,
  '都営新宿線 船堀駅',
  16,
  50, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 508000}]',
  ARRAY['寺院式場', '宗派不問', '家族葬対応', '江戸川区'],
  '正徳寺（真言宗豊山派）',
  3.9, 9
),

-- 江戸川区追加3: エンディングハウス北葛西（民営斎場）
(
  'エンディングハウス北葛西',
  'endinghouse-kitakasai',
  'private_hall',
  '都営新宿線「船堀駅」から徒歩12分の家族葬専門斎場。2024年8月オープンの新しい施設で、少人数でゆっくりと故人とのお別れの時間を過ごせる貸切空間が特徴。追加料金なしの明朗会計で安心です。',
  '東京都江戸川区北葛西2-23-13',
  'tokyo', 'edogawa',
  35.6720, 139.8630,
  '都営新宿線 船堀駅',
  12,
  20, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専門', '新しい施設', '明朗会計', '貸切対応'],
  '株式会社公益社',
  4.3, 8
),

-- 江戸川区追加4: 小さなお葬式 江戸川鹿骨ホール（民営斎場）
(
  '小さなお葬式 江戸川鹿骨ホール',
  'chiisana-ososhiki-edogawa-shishibone',
  'private_hall',
  '江戸川区鹿骨エリアにある家族葬向けの式場。瑞江葬儀所にも近く、火葬式から家族葬まで小規模な葬儀に特化。低価格でわかりやすい料金体系が特徴。バリアフリー対応で安心です。',
  '東京都江戸川区鹿骨1-52-10',
  'tokyo', 'edogawa',
  35.6730, 139.8830,
  '都営新宿線 篠崎駅',
  12,
  20, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 99000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専門', '低価格', '瑞江葬儀所近接', '少人数向き'],
  '株式会社ユニクエスト',
  3.9, 12
);

-- =============================================
-- 6. 荒川区（既存2件 → 目標6件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 荒川区追加1: メモリアルセレス千代田21（民営斎場）
(
  'メモリアルセレス千代田21',
  'memorial-celes-chiyoda21',
  'private_hall',
  '日暮里・舎人ライナー「西日暮里駅」西口から徒歩1分の好立地にある大型葬儀場。3つのホール（40席・70席・220席）を備え、家族葬から1,000名規模の大規模葬儀まで対応可能。荒川区・北区・文京区エリアの方に広くご利用いただいています。',
  '東京都荒川区西日暮里6-55-1',
  'tokyo', 'arakawa',
  35.7350, 139.7680,
  '日暮里・舎人ライナー 西日暮里駅',
  1,
  220, 3, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "大型ホール": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 418000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 588000}]',
  ARRAY['駅前', '大規模葬対応', '複数ホール', '社葬対応', 'バリアフリー'],
  '株式会社千代田セレモニー',
  4.1, 28
),

-- 荒川区追加2: 浄光寺斎場（寺院式場）
(
  '浄光寺斎場',
  'joukouji-saijo-arakawa',
  'temple_hall',
  'JR山手線「西日暮里駅」から徒歩3分の好立地にある真言宗豊山派の寺院式場。荒川区・北区エリアの方に親しまれ、家族葬に適した落ち着いた空間を提供。アクセスの良さが高齢の参列者にも好評です。',
  '東京都荒川区西日暮里3-4-3',
  'tokyo', 'arakawa',
  35.7330, 139.7690,
  'JR山手線 西日暮里駅',
  3,
  40, 1, false, 5,
  '{"バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', 'アクセス良好'],
  '浄光寺（真言宗豊山派）',
  4.0, 7
),

-- 荒川区追加3: 自由なお葬式 町屋ホール（民営斎場）
(
  '自由なお葬式 町屋ホール',
  'jiyuna-ososhiki-machiya',
  'private_hall',
  '荒川区荒川エリアにある家族葬向けの小規模斎場。町屋斎場にも近く、火葬場へのアクセスが便利。24時間365日対応で、少人数でのアットホームなお見送りに最適な空間です。',
  '東京都荒川区荒川5-2-1',
  'tokyo', 'arakawa',
  35.7420, 139.7810,
  '京成本線 町屋駅',
  7,
  20, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専門', '町屋斎場近接', '24時間対応', '少人数向き'],
  '',
  4.0, 10
),

-- 荒川区追加4: くらしの友 日暮里ホール（民営斎場）
(
  'くらしの友 日暮里ホール',
  'kurashinotomo-nippori',
  'private_hall',
  'JR各線「日暮里駅」周辺にある葬儀場。荒川区・台東区・北区エリアの方にご利用いただいています。家族葬に適した温かみのある空間で、きめ細やかなサービスが特徴です。',
  '東京都荒川区西日暮里2-26-12',
  'tokyo', 'arakawa',
  35.7290, 139.7700,
  'JR各線 日暮里駅',
  5,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['駅近', '家族葬向き', '荒川区'],
  '株式会社くらしの友',
  4.0, 11
);

-- =============================================
-- 7. 墨田区（既存4件 → 目標7件 → +3件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 墨田区追加1: 円徳寺赤門会館（寺院式場）
(
  '円徳寺 赤門会館',
  'entokuji-akamon-kaikan',
  'temple_hall',
  '東武伊勢崎線「鐘ヶ淵駅」から徒歩2分の好立地にある曹洞宗の寺院式場。第1会場80名・第2会場50名・第3会場40名と3つの会場を備え、規模に応じた葬儀に対応。冷暖房完備・ビデオ装置あり。檀家以外の一般の方にも開放されています。',
  '東京都墨田区墨田5-42-17',
  'tokyo', 'sumida',
  35.7280, 139.8180,
  '東武伊勢崎線 鐘ヶ淵駅',
  2,
  100, 3, false, 11,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "ビデオ装置": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅前', '寺院式場', '複数会場', '大規模対応', '一般開放'],
  '円徳寺（曹洞宗）',
  4.1, 16
),

-- 墨田区追加2: 東清寺斎場（寺院式場）
(
  '東清寺斎場',
  'touseiji-saijo',
  'temple_hall',
  '東武スカイツリーライン「東向島駅」周辺にある寺院式場。墨田区の下町情緒溢れるエリアに位置し、地域の方に古くから愛されています。家族葬に適した温かみのある空間が特徴です。',
  '東京都墨田区東向島4-20-8',
  'tokyo', 'sumida',
  35.7250, 139.8210,
  '東武スカイツリーライン 東向島駅',
  5,
  40, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['寺院式場', '家族葬向き', '下町情緒', '地域密着'],
  '東清寺',
  3.9, 8
),

-- 墨田区追加3: 法性寺（寺院式場）
(
  '法性寺 柳島妙見堂',
  'hosshoji-yanagishima',
  'temple_hall',
  '墨田区業平エリアにある日蓮宗の寺院式場。スカイツリーにも近い好立地で、宗旨宗派を問わず利用可能。家族葬から一般葬まで対応。墨田区・江東区エリアの方にご利用いただいています。',
  '東京都墨田区業平5-7-7',
  'tokyo', 'sumida',
  35.7060, 139.8130,
  '東京メトロ半蔵門線 押上駅',
  5,
  50, 1, false, 5,
  '{"バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['寺院式場', '宗派不問', 'スカイツリー近隣', '墨田区'],
  '法性寺（日蓮宗）',
  4.0, 10
);

-- =============================================
-- 8. 葛飾区（既存3件 → 目標7件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 葛飾区追加1: お花茶屋会館（東京博善関連施設）
(
  'お花茶屋会館',
  'ohanachaya-kaikan',
  'private_hall',
  '四ツ木斎場に隣接する施設。京成本線「お花茶屋駅」から徒歩5分。50名までの家族葬に対応し、火葬場への移動がスムーズ。58体収容可能な霊安室を備え、コンピューター管理による衛生環境にも配慮しています。',
  '東京都葛飾区白鳥2-5-5',
  'tokyo', 'katsushika',
  35.7550, 139.8530,
  '京成本線 お花茶屋駅',
  5,
  50, 1, false, 7,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "車椅子貸出": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['四ツ木斎場隣接', '駅近', '家族葬対応', '霊安室完備', 'バリアフリー'],
  '東京博善株式会社',
  4.0, 15
),

-- 葛飾区追加2: 妙源寺正覚会館（寺院式場）
(
  '妙源寺 正覚会館',
  'myogenji-shokaku-kaikan',
  'temple_hall',
  '京成本線「堀切菖蒲園駅」から徒歩5分の好立地にある日蓮宗の寺院式場。1階ホールは椅子席60席（最大80名）で、会葬者300名までの大規模対応も可能。宗派問わず利用でき、駐車場20台・宿泊可能と設備も充実。',
  '東京都葛飾区堀切3-25-16',
  'tokyo', 'katsushika',
  35.7450, 139.8370,
  '京成本線 堀切菖蒲園駅',
  5,
  80, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '大規模対応', '宿泊可能'],
  '妙源寺（日蓮宗）',
  4.1, 18
),

-- 葛飾区追加3: 源寿院会館セレモニーホール（寺院式場）
(
  '源寿院会館 セレモニーホール',
  'genjuin-kaikan-ceremony',
  'temple_hall',
  '京成「立石駅」から徒歩6分に位置する寺院式場。本館200席・別館100席の大規模施設で、家族葬から大規模葬まで対応。駐車場30台完備、お通夜の宿泊も可能。葛飾区を代表する斎場の一つです。',
  '東京都葛飾区立石7-11-25',
  'tokyo', 'katsushika',
  35.7410, 139.8470,
  '京成押上線 京成立石駅',
  6,
  200, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "大型ホール": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '寺院式場', '大規模対応', '大型駐車場', '宿泊可能'],
  '源寿院',
  4.2, 22
),

-- 葛飾区追加4: フューネットコーポレーションホール（民営斎場）
(
  'フューネットコーポレーションホール',
  'funett-corporation-hall',
  'private_hall',
  '葛飾区南水元に位置する民営斎場。JR常磐線金町駅からバスでアクセス可能。バリアフリー対応の清潔な施設で、家族葬を中心に対応。地域に密着した丁寧なサービスが好評です。',
  '東京都葛飾区南水元2-20-8',
  'tokyo', 'katsushika',
  35.7590, 139.8650,
  'JR常磐線 金町駅',
  15,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬向き', 'バリアフリー', '地域密着', '葛飾区'],
  '株式会社フューネットコーポレーション',
  4.0, 10
);

-- =============================================
-- 9. 北区（既存4件 → 目標7件 → +3件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 北区追加1: 西蓮寺斎場 密厳堂（寺院式場）
(
  '西蓮寺 密厳堂',
  'sairenji-mitsugendo',
  'temple_hall',
  '東京メトロ南北線「志茂駅」2番出口から徒歩5分の真言宗智山派の寺院式場。45席の落ち着いた式場で、宗派を問わず利用可能。家族葬を中心に、北区志茂エリアの方にご利用いただいています。駐車場10台完備。',
  '東京都北区志茂4-30-4',
  'tokyo', 'kita',
  35.7830, 139.7230,
  '東京メトロ南北線 志茂駅',
  5,
  45, 1, false, 10,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['駅近', '寺院式場', '宗派不問', '家族葬向き', '北区'],
  '西蓮寺（真言宗智山派）',
  4.0, 9
),

-- 北区追加2: くらしの友 王子ホール（民営斎場）
(
  'くらしの友 王子ホール',
  'kurashinotomo-oji',
  'private_hall',
  'JR京浜東北線・東京メトロ南北線「王子駅」周辺にある葬儀場。北区の中心部に位置し、家族葬に適した温かみのある空間。経験豊富なスタッフによるきめ細やかなサポートが好評です。',
  '東京都北区王子1-14-1',
  'tokyo', 'kita',
  35.7530, 139.7380,
  'JR京浜東北線・東京メトロ南北線 王子駅',
  5,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}]',
  ARRAY['駅近', '家族葬向き', '北区', '王子エリア'],
  '株式会社くらしの友',
  4.0, 12
),

-- 北区追加3: 正光寺斎場（寺院式場）
(
  '正光寺斎場',
  'shokoji-saijo-kita',
  'temple_hall',
  'JR埼京線「十条駅」周辺にある寺院式場。北区十条エリアの閑静な住宅街に位置し、地域の方に古くから愛されている式場。家族葬に適した静かな環境が特徴です。',
  '東京都北区中十条2-1-20',
  'tokyo', 'kita',
  35.7620, 139.7260,
  'JR埼京線 十条駅',
  7,
  40, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['寺院式場', '家族葬向き', '閑静な環境', '十条エリア'],
  '正光寺',
  4.0, 7
);

-- =============================================
-- 10. 文京区（既存3件 → 目標7件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 文京区追加1: 浄心寺会館 さくらホール（寺院式場）
(
  '浄心寺会館 さくらホール',
  'joshinji-sakura-hall',
  'temple_hall',
  '東京メトロ南北線「東大前駅」「本駒込駅」から徒歩7分の寺院式場。最大20名の少人数向けで、全館バリアフリー・エレベーター完備。冷蔵霊安室8室を備え、宗派を問わず利用可能。駐車場10台完備。',
  '東京都文京区向丘2-17-6',
  'tokyo', 'bunkyo',
  35.7200, 139.7580,
  '東京メトロ南北線 東大前駅',
  7,
  20, 1, false, 10,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['少人数向き', '全館バリアフリー', '霊安室完備', '宗派不問'],
  '浄心寺',
  4.2, 14
),

-- 文京区追加2: 傳通院 繊月会館（寺院式場）
(
  '傳通院 繊月会館',
  'dentzuin-sengetsu-kaikan',
  'temple_hall',
  '都営大江戸線・三田線「春日駅」から徒歩10分にある浄土宗傳通院境内の寺院式場。式場150席で大規模な社葬から家族葬まで柔軟に対応。平成9年完成の多目的檀信徒会館で、設備が充実しています。',
  '東京都文京区小石川3-14-6',
  'tokyo', 'bunkyo',
  35.7130, 139.7460,
  '都営大江戸線・三田線 春日駅',
  10,
  150, 1, false, 15,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['寺院式場', '大規模対応', '社葬対応', '歴史ある環境', '設備充実'],
  '傳通院（浄土宗）',
  4.2, 20
),

-- 文京区追加3: 真珠院 月かげ会館（寺院式場）
(
  '真珠院 月かげ会館',
  'shinjuin-tsukikage-kaikan',
  'temple_hall',
  '東京メトロ丸の内線・南北線「後楽園駅」から徒歩13分、都営バス「伝通院前」から徒歩3分の寺院式場。会館30席と本堂120席で規模に応じた葬儀に対応。駐車場6台、音響設備完備です。',
  '東京都文京区小石川3-7-4',
  'tokyo', 'bunkyo',
  35.7120, 139.7450,
  '東京メトロ丸の内線 後楽園駅',
  13,
  120, 2, false, 6,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "音響設備": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['寺院式場', '本堂利用可', '規模対応柔軟', '文京区'],
  '真珠院',
  4.0, 11
),

-- 文京区追加4: 徳雲寺（寺院式場）
(
  '徳雲寺',
  'tokuunji-bunkyo',
  'temple_hall',
  '東京メトロ丸の内線「茗荷谷駅」から徒歩3分の好アクセス。小石川エリアの閑静な環境に位置する寺院式場で、家族葬に最適な落ち着いた空間を提供しています。',
  '東京都文京区小日向4-4-1',
  'tokyo', 'bunkyo',
  35.7170, 139.7370,
  '東京メトロ丸の内線 茗荷谷駅',
  3,
  40, 1, false, 5,
  '{"バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', '閑静な環境'],
  '徳雲寺',
  4.1, 8
);

-- =============================================
-- 11. 豊島区（既存3件 → 目標7件 → +4件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 豊島区追加1: 仙行寺 沙羅ホール（寺院式場）
(
  '仙行寺 沙羅ホール',
  'sengyoji-sara-hall',
  'temple_hall',
  'JR「池袋駅」南口から徒歩2分（地下通路39番出口）という抜群のアクセスを誇る日蓮宗の寺院式場。式場60〜100席で、葬儀から納骨・法要まで同じ場所で行える点が魅力。貸切利用で他家に気を遣わずゆっくりお見送りできます。',
  '東京都豊島区南池袋2-20-4',
  'tokyo', 'toshima',
  35.7260, 139.7130,
  'JR各線 池袋駅',
  2,
  100, 1, false, 6,
  '{"バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "納骨堂併設": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅前', '寺院式場', '貸切対応', '納骨堂併設', '池袋エリア'],
  '仙行寺（日蓮宗）',
  4.3, 24
),

-- 豊島区追加2: こざさホール（寺院式場）
(
  'こざさホール',
  'kozasa-hall',
  'temple_hall',
  '東京メトロ有楽町線「護国寺駅」1番出口から徒歩6分の寺院式場。全館バリアフリーで車椅子の方やご高齢の方にも安心。家族葬に適した温かみのある空間で、豊島区・文京区エリアの方にご利用いただいています。',
  '東京都豊島区目白5-7-15',
  'tokyo', 'toshima',
  35.7230, 139.7180,
  '東京メトロ有楽町線 護国寺駅',
  6,
  30, 1, false, 5,
  '{"バリアフリー": true, "控室": true, "車椅子対応": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['全館バリアフリー', '寺院式場', '家族葬向き', '車椅子対応'],
  '',
  4.0, 9
),

-- 豊島区追加3: くらしの友 池袋ホール（民営斎場）
(
  'くらしの友 池袋ホール',
  'kurashinotomo-ikebukuro',
  'private_hall',
  'JR各線「池袋駅」周辺にある葬儀場。豊島区の中心部に位置し、交通の便が良い。家族葬に適した落ち着いた空間で、きめ細やかなサービスが特徴です。',
  '東京都豊島区西池袋3-27-12',
  'tokyo', 'toshima',
  35.7310, 139.7100,
  'JR各線 池袋駅',
  5,
  30, 1, false, 5,
  '{"安置室": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬向き', '池袋エリア', '交通便良好'],
  '株式会社くらしの友',
  4.0, 13
),

-- 豊島区追加4: 威光院（寺院式場）
(
  '威光院',
  'ikouin-toshima',
  'temple_hall',
  '東京メトロ副都心線「雑司が谷駅」から徒歩5分にある寺院式場。南池袋斎場にも近い好立地で、豊島区の静かな住宅街に位置。家族葬を中心に対応し、落ち着いた雰囲気が好評です。',
  '東京都豊島区南池袋4-25-6',
  'tokyo', 'toshima',
  35.7200, 139.7200,
  '東京メトロ副都心線 雑司が谷駅',
  5,
  40, 1, false, 8,
  '{"バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}]',
  ARRAY['駅近', '寺院式場', '家族葬向き', '南池袋エリア'],
  '威光院',
  4.0, 7
);

-- =============================================
-- 12. 世田谷区（既存5件 → 目標8件 → +3件追加）
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 世田谷区追加1: みどり会館（公営区民斎場）
(
  'みどり会館',
  'midori-kaikan-setagaya',
  'public_facility',
  '世田谷区立の区民斎場。京王線「千歳烏山駅」から徒歩15分。2つの式場で同時に2組の葬儀が可能。区民であれば低価格で利用でき、家族葬から一般葬まで対応。お清め室・控室・仮安置室を備えた充実の施設です。',
  '東京都世田谷区北烏山5-1-5',
  'tokyo', 'setagaya',
  35.6680, 139.5950,
  '京王線 千歳烏山駅',
  15,
  40, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "お清め室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 278000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 428000}]',
  ARRAY['公営斎場', '低価格', '区民優先', '世田谷区'],
  '世田谷区',
  3.8, 16
),

-- 世田谷区追加2: 満足院御堂（寺院式場）
(
  '満足院御堂',
  'manzokuin-mido',
  'temple_hall',
  '小田急小田原線「梅ヶ丘駅」から徒歩4分の好立地にある浄土真宗の寺院式場。貸切スタイルで、音楽葬など自由な形式のお葬式にも対応。宗旨・宗派の制限なく利用可能で、世田谷区梅丘エリアの方に愛されています。',
  '東京都世田谷区梅丘1-54-1',
  'tokyo', 'setagaya',
  35.6540, 139.6530,
  '小田急小田原線 梅ヶ丘駅',
  4,
  40, 1, false, 2,
  '{"バリアフリー": true, "控室": true, "音響設備": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '寺院式場', '貸切対応', '音楽葬対応', '宗派不問'],
  '満足院（浄土真宗誠照寺派）',
  4.1, 12
),

-- 世田谷区追加3: 世田谷大原ホール（民営斎場）
(
  '世田谷大原ホール',
  'setagaya-ohara-hall',
  'private_hall',
  '京王線「代田橋駅」から徒歩4分の葬儀場。小ホール2室と大ホール1室を備え、エレベーター完備のバリアフリー設計。会食室は着席60名まで対応。宿泊も可能で、世田谷区・杉並区エリアの方にご利用いただいています。',
  '東京都世田谷区大原2-9-11',
  'tokyo', 'setagaya',
  35.6650, 139.6570,
  '京王線 代田橋駅',
  4,
  60, 3, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 418000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 588000}]',
  ARRAY['駅近', '複数ホール', 'バリアフリー', '宿泊可能', '世田谷区'],
  '',
  4.1, 18
);

-- =============================================
-- データ投入完了確認用クエリ
-- =============================================
-- SELECT city_slug, count(*) as venue_count FROM venues WHERE prefecture_slug = 'tokyo' GROUP BY city_slug ORDER BY venue_count DESC;
-- SELECT count(*) as total_venues FROM venues;
