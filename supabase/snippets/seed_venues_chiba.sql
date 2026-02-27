-- =============================================
-- 斎場データ: 千葉県 約40件
-- 千葉市・船橋市・松戸市・市川市・柏市・市原市
-- 八千代市・習志野市・浦安市・流山市・木更津市・野田市
-- =============================================

-- =============================================
-- 1. 千葉市 (chiba-city) — 8件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1-1. 千葉市斎場（公営火葬場）
(
  '千葉市斎場',
  'chiba-shi-saijo',
  'public_crematorium',
  '千葉市が運営する公営の総合斎場。火葬棟と式場棟を備え、通夜から火葬まで同一敷地内で執り行えます。JR外房線「鎌取駅」からバス5分。駐車場200台と広く、大規模な葬儀にも対応可能。千葉市民は火葬料無料で利用できます。',
  '千葉県千葉市緑区平山町1762-2',
  'chiba', 'chiba-city',
  35.5690, 140.1670,
  'JR外房線 鎌取駅',
  15,
  100, 3, true, 200,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '千葉市',
  4.1, 58
),

-- 1-2. セレモ千葉駅北口ホール
(
  'セレモ千葉駅北口ホール',
  'ceremo-chiba-ekikitaguchi',
  'private_hall',
  'セレモが運営する千葉駅至近の家族葬専用ホール。JR千葉駅北口から徒歩3分と抜群のアクセス。少人数の家族葬に特化した温かみのある空間で、1日1組貸切対応。24時間365日相談可能です。',
  '千葉県千葉市中央区弁天1-15-1',
  'chiba', 'chiba-city',
  35.6130, 140.1130,
  'JR総武線 千葉駅',
  3,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬専用', '1日1組貸切', '24時間対応'],
  '株式会社セレモ',
  4.3, 35
),

-- 1-3. セレモ千葉寺駅ホール
(
  'セレモ千葉寺駅ホール',
  'ceremo-chibadera',
  'private_hall',
  'セレモが運営する千葉寺エリアの葬儀ホール。京成千原線「千葉寺駅」から徒歩5分。広々とした式場と充実した控室を備え、家族葬から一般葬まで幅広く対応。静かな住宅街に位置し落ち着いた雰囲気です。',
  '千葉県千葉市中央区千葉寺町1208-2',
  'chiba', 'chiba-city',
  35.5920, 140.1260,
  '京成千原線 千葉寺駅',
  5,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社セレモ',
  4.2, 28
),

-- 1-4. 千葉中央メモリアルホール
(
  '千葉中央メモリアルホール',
  'chiba-chuo-memorial',
  'private_hall',
  '千葉市中央区の大型葬儀会館。JR千葉駅から車で10分の好立地。最大80名収容の式場を含む3つのホールを備え、少人数の家族葬から大規模な一般葬まで対応。モダンな内装と充実した設備が特長です。',
  '千葉県千葉市中央区松波3-12-5',
  'chiba', 'chiba-city',
  35.6090, 140.1020,
  'JR総武線 西千葉駅',
  10,
  80, 3, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 418000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大規模葬対応', '家族葬対応', '駐車場完備', 'バリアフリー'],
  '千葉メモリアルサービス株式会社',
  4.0, 22
),

-- 1-5. 博全社千葉ホール
(
  '博全社千葉ホール',
  'hakuzensha-chiba',
  'private_hall',
  '千葉の老舗葬儀社・博全社が運営する葬儀会館。千葉市稲毛区に位置し、JR稲毛駅からバスで約10分。伝統と格式を重視した葬儀に対応。経験豊富なスタッフによる丁寧なサポートが評判です。',
  '千葉県千葉市稲毛区小仲台7-1-3',
  'chiba', 'chiba-city',
  35.6310, 140.1050,
  'JR総武線 稲毛駅',
  10,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 428000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 618000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '丁寧なサポート'],
  '株式会社博全社',
  4.2, 31
),

-- 1-6. 家族葬のファミーユ千葉花見川
(
  '家族葬のファミーユ千葉花見川',
  'famillu-chiba-hanamigawa',
  'private_hall',
  'ファミーユが運営する家族葬専用ホール。千葉市花見川区の閑静な住宅地に位置し、1日1組貸切のプライベート空間を提供。少人数でゆっくりとお別れができる温かみのある空間です。',
  '千葉県千葉市花見川区幕張町5-220',
  'chiba', 'chiba-city',
  35.6590, 140.0480,
  'JR総武線 幕張駅',
  8,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', 'バリアフリー'],
  '株式会社家族葬のファミーユ',
  4.4, 19
),

-- 1-7. 西願寺会館
(
  '西願寺会館',
  'saiganji-kaikan-chiba',
  'temple_hall',
  '浄土宗の寺院が運営する式場。千葉市若葉区に位置し、古き良き日本の伝統を感じる落ち着いた空間です。宗派を問わず利用可能で、寺院ならではの厳粛な雰囲気の中で故人を送ることができます。',
  '千葉県千葉市若葉区桜木4-16-11',
  'chiba', 'chiba-city',
  35.6210, 140.1420,
  '千葉都市モノレール 桜木駅',
  7,
  40, 1, false, 20,
  '{"安置室": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['寺院式場', '宗派不問', '伝統的な雰囲気'],
  '西願寺',
  4.0, 12
),

-- 1-8. 千葉美浜セレモニーホール
(
  '千葉美浜セレモニーホール',
  'chiba-mihama-ceremony',
  'private_hall',
  '千葉市美浜区の海浜幕張エリアに位置する近代的な葬儀会館。JR京葉線「海浜幕張駅」から徒歩12分。明るく開放的な雰囲気の式場で、故人らしいお別れをプロデュースします。',
  '千葉県千葉市美浜区打瀬2-5-1',
  'chiba', 'chiba-city',
  35.6480, 140.0400,
  'JR京葉線 海浜幕張駅',
  12,
  50, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 288000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}]',
  ARRAY['近代的設備', '家族葬対応', 'バリアフリー', '駐車場完備'],
  '美浜セレモニー株式会社',
  4.1, 17
);

-- =============================================
-- 2. 船橋市 (funabashi) — 5件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2-1. 馬込斎場（公営火葬場）
(
  '馬込斎場',
  'magome-saijo',
  'public_crematorium',
  '船橋市・習志野市・八千代市・鎌ケ谷市の四市複合事務組合が運営する公営斎場。火葬業務と霊柩車運行業務を行っています。駐車場は普通車200台・マイクロバス4台と広大。関係4市民は火葬料が無料です。',
  '千葉県船橋市馬込町1102-1',
  'chiba', 'funabashi',
  35.7570, 139.9910,
  '東武アーバンパークライン 馬込沢駅',
  20,
  80, 2, true, 200,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '四市複合事務組合',
  4.0, 45
),

-- 2-2. セレモ船橋駅北口ホール
(
  'セレモ船橋駅北口ホール',
  'ceremo-funabashi-ekikitaguchi',
  'private_hall',
  'セレモが運営する船橋駅至近の葬儀ホール。JR船橋駅北口から徒歩3分の好立地。家族葬に特化した温かみのある空間で、1日1組貸切対応。遠方からの参列者もアクセスしやすい立地が魅力です。',
  '千葉県船橋市北本町1-3-11',
  'chiba', 'funabashi',
  35.7050, 139.9860,
  'JR総武線 船橋駅',
  3,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬専用', '1日1組貸切'],
  '株式会社セレモ',
  4.3, 27
),

-- 2-3. 船橋メモリアルホール
(
  '船橋メモリアルホール',
  'funabashi-memorial',
  'private_hall',
  '船橋市の中心部に位置する大型葬儀会館。3つの式場を備え、家族葬から一般葬まで幅広く対応。最大100名収容可能なホールは社葬にも対応。充実した設備と経験豊富なスタッフが安心の葬儀をサポートします。',
  '千葉県船橋市本町6-18-10',
  'chiba', 'funabashi',
  35.7010, 139.9830,
  'JR総武線 船橋駅',
  8,
  100, 3, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 288000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 418000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大規模葬対応', '家族葬対応', '駐車場完備', 'バリアフリー'],
  '船橋メモリアルサービス株式会社',
  4.1, 33
),

-- 2-4. 家族葬のファミーユ船橋
(
  '家族葬のファミーユ船橋',
  'famillu-funabashi',
  'private_hall',
  'ファミーユが運営する船橋の家族葬専用ホール。東武アーバンパークライン「塚田駅」から徒歩6分。少人数向けの温かみのある空間で、故人との最期の時間をゆっくりと過ごすことができます。',
  '千葉県船橋市行田2-8-1',
  'chiba', 'funabashi',
  35.7200, 139.9640,
  '東武アーバンパークライン 塚田駅',
  6,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近'],
  '株式会社家族葬のファミーユ',
  4.4, 21
),

-- 2-5. 常光閣船橋
(
  '常光閣船橋',
  'jokokaku-funabashi',
  'temple_hall',
  '日蓮宗寺院に併設された式場。船橋市の閑静な住宅地に位置し、伝統的な雰囲気の中で厳粛な葬儀が執り行えます。宗派を問わず利用可能で、駐車場も完備しています。',
  '千葉県船橋市夏見台3-15-7',
  'chiba', 'funabashi',
  35.7150, 139.9740,
  'JR総武線 船橋駅',
  15,
  40, 1, false, 18,
  '{"安置室": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 508000}]',
  ARRAY['寺院式場', '宗派不問', '駐車場完備'],
  '常光閣',
  3.9, 14
);

-- =============================================
-- 3. 松戸市 (matsudo) — 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3-1. 松戸市斎場（公営火葬場）
(
  '松戸市斎場',
  'matsudo-shi-saijo',
  'public_crematorium',
  '松戸市が運営する公営の総合斎場。火葬場と式場を併設し、通夜から火葬まで一括して執り行えます。大式場56席・小式場30席を完備。松戸市民は火葬料無料。八柱霊園に隣接する静かな環境です。',
  '千葉県松戸市串崎新田63-1',
  'chiba', 'matsudo',
  35.7930, 139.9420,
  '新京成線 五香駅',
  25,
  56, 2, true, 80,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '松戸市',
  4.0, 42
),

-- 3-2. セレモ松戸駅前ホール
(
  'セレモ松戸駅前ホール',
  'ceremo-matsudo-ekimae',
  'private_hall',
  'セレモが運営する松戸駅前の家族葬対応ホール。JR常磐線「松戸駅」から徒歩5分。コンパクトながら充実した設備を備え、少人数でのお別れに最適。アクセスの良さから遠方の参列者にも好評です。',
  '千葉県松戸市松戸1228-1',
  'chiba', 'matsudo',
  35.7840, 139.9010,
  'JR常磐線 松戸駅',
  5,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬対応', '1日1組貸切'],
  '株式会社セレモ',
  4.2, 24
),

-- 3-3. 松戸中央メモリアルホール
(
  '松戸中央メモリアルホール',
  'matsudo-chuo-memorial',
  'private_hall',
  '松戸市中心部の大型葬儀会館。最大80名収容の式場を含む2つのホールを備え、家族葬から一般葬まで幅広く対応。新京成線「上本郷駅」から徒歩8分の好立地です。',
  '千葉県松戸市上本郷3501',
  'chiba', 'matsudo',
  35.7930, 139.9100,
  '新京成線 上本郷駅',
  8,
  80, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 288000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['大規模葬対応', '家族葬対応', '駐車場完備', 'バリアフリー'],
  '松戸メモリアルサービス株式会社',
  4.1, 26
),

-- 3-4. 善照寺式場
(
  '善照寺式場',
  'zenshoji-shikijo-matsudo',
  'temple_hall',
  '松戸市にある浄土真宗寺院の式場。歴史ある境内の落ち着いた雰囲気の中、心のこもったお別れができます。宗派を問わず利用可能。JR武蔵野線「東松戸駅」から徒歩10分。',
  '千葉県松戸市紙敷588',
  'chiba', 'matsudo',
  35.7660, 139.9310,
  'JR武蔵野線 東松戸駅',
  10,
  40, 1, false, 15,
  '{"安置室": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['寺院式場', '宗派不問', '落ち着いた雰囲気'],
  '善照寺',
  4.0, 11
);

-- =============================================
-- 4. 市川市 (ichikawa) — 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4-1. 市川市斎場（公営火葬場）
(
  '市川市斎場',
  'ichikawa-shi-saijo',
  'public_crematorium',
  '市川市が運営する公営の総合斎場。市川市唯一の火葬場と葬儀式場が併設された施設です。JR武蔵野線「市川大野駅」からバス10分。市川市民は火葬料無料。式場は和室と洋室があり、ご希望に合わせて選べます。',
  '千葉県市川市大野町4-2610-1',
  'chiba', 'ichikawa',
  35.7590, 139.9330,
  'JR武蔵野線 市川大野駅',
  15,
  60, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '市川市',
  4.0, 38
),

-- 4-2. セレモ市川本八幡ホール
(
  'セレモ市川本八幡ホール',
  'ceremo-ichikawa-motoyawata',
  'private_hall',
  'セレモが運営する本八幡駅至近の家族葬対応ホール。JR総武線「本八幡駅」から徒歩4分。東京都心からのアクセスも良好で、遠方からの参列者にも便利です。少人数でゆっくりとお別れできる空間が好評。',
  '千葉県市川市南八幡4-2-12',
  'chiba', 'ichikawa',
  35.7210, 139.9280,
  'JR総武線 本八幡駅',
  4,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬対応', '東京からアクセス良好'],
  '株式会社セレモ',
  4.3, 30
),

-- 4-3. 市川グランドホール
(
  '市川グランドホール',
  'ichikawa-grand-hall',
  'private_hall',
  '市川市北部の大型葬儀会館。2つの式場を備え、家族葬から一般葬まで対応。広い駐車場と充実した設備で大人数の参列にも安心。閑静な住宅街に位置し、落ち着いた雰囲気の中でお別れができます。',
  '千葉県市川市大野町2-1056',
  'chiba', 'ichikawa',
  35.7530, 139.9380,
  'JR武蔵野線 市川大野駅',
  10,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['大規模葬対応', '家族葬対応', '駐車場完備', 'バリアフリー'],
  '市川グランドサービス株式会社',
  4.0, 20
),

-- 4-4. 法華経寺式場
(
  '法華経寺式場',
  'hokekyoji-shikijo',
  'temple_hall',
  '日蓮宗の大本山・法華経寺に隣接する式場。JR総武線「下総中山駅」から徒歩10分。歴史ある寺院の荘厳な雰囲気の中、格式高い葬儀が執り行えます。伝統的な仏式葬儀を希望される方に特におすすめです。',
  '千葉県市川市中山2-10-1',
  'chiba', 'ichikawa',
  35.7270, 139.9500,
  'JR総武線 下総中山駅',
  10,
  50, 1, false, 20,
  '{"安置室": true, "駐車場": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['寺院式場', '格式高い', '伝統的な仏式'],
  '法華経寺',
  4.1, 15
);

-- =============================================
-- 5. 柏市 (kashiwa) — 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5-1. ウイングホール柏斎場（公営火葬場）
(
  'ウイングホール柏斎場',
  'winghall-kashiwa-saijo',
  'public_crematorium',
  '柏市・我孫子市・流山市が共同運営する公営の総合斎場。火葬場と式場を備え、通夜から火葬・法要まで一貫して執り行えます。関係市民は火葬料が減免。広い敷地と充実した設備が特長です。',
  '千葉県柏市布施281-1',
  'chiba', 'kashiwa',
  35.8700, 139.9560,
  'JR常磐線 北柏駅',
  30,
  80, 2, true, 100,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true, "法要室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '法要室完備', '家族葬対応'],
  '柏・我孫子・流山聖苑組合',
  4.1, 52
),

-- 5-2. セレモ柏旭町ホール
(
  'セレモ柏旭町ホール',
  'ceremo-kashiwa-asahicho',
  'private_hall',
  'セレモが運営する柏市の葬儀ホール。JR常磐線「柏駅」南口から徒歩8分。落ち着いた雰囲気のホールで家族葬に対応。柏駅からのアクセスが良好で、遠方からの参列にも便利です。',
  '千葉県柏市旭町4-1-2',
  'chiba', 'kashiwa',
  35.8550, 139.9660,
  'JR常磐線 柏駅',
  8,
  40, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬対応', 'アクセス良好'],
  '株式会社セレモ',
  4.2, 23
),

-- 5-3. 柏斎苑柏の葉家族葬ホール
(
  '柏斎苑柏の葉家族葬ホール',
  'kashiwa-saien-kashiwanoha',
  'private_hall',
  '柏の葉エリアに位置する家族葬専用ホール。つくばエクスプレス「柏の葉キャンパス駅」から車で5分。明るく開放的な空間で、少人数でゆっくりとお別れの時間を過ごせます。1日1組貸切の完全プライベート空間です。',
  '千葉県柏市十余二380-61',
  'chiba', 'kashiwa',
  35.8810, 139.9430,
  'つくばエクスプレス 柏の葉キャンパス駅',
  10,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明るい空間'],
  '株式会社柏斎苑',
  4.4, 18
),

-- 5-4. 博全社柏ホール
(
  '博全社柏ホール',
  'hakuzensha-kashiwa',
  'private_hall',
  '千葉の老舗葬儀社・博全社が運営する柏市の葬儀会館。2つの式場を備え、家族葬から一般葬まで幅広く対応。経験豊富なスタッフによる手厚いサポートが評判です。',
  '千葉県柏市柏3-6-12',
  'chiba', 'kashiwa',
  35.8620, 139.9720,
  'JR常磐線 柏駅',
  6,
  60, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 138000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 428000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 618000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '駅近', '丁寧なサポート'],
  '株式会社博全社',
  4.2, 29
);

-- =============================================
-- 6. 市原市 (ichihara) — 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6-1. いちはら聖苑（公営火葬場）
(
  'いちはら聖苑',
  'ichihara-seien',
  'public_crematorium',
  '市原市が運営する公営の火葬場。市原市今富に位置し、自然に囲まれた静かな環境です。市原市民は火葬料が減免。待合室や安置室を完備し、火葬のみのご利用にも対応しています。',
  '千葉県市原市今富1088-8',
  'chiba', 'ichihara',
  35.4780, 140.1250,
  'JR内房線 五井駅',
  30,
  40, 1, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '市原市',
  3.8, 25
),

-- 6-2. 市原斎場
(
  '市原斎場',
  'ichihara-saijo',
  'private_hall',
  '市原市能満に位置する葬儀会館。JR内房線「五井駅」からバスで15分。家族葬から一般葬まで対応可能な2つの式場を備えています。地域に根差した丁寧なサービスが評判です。',
  '千葉県市原市能満1548',
  'chiba', 'ichihara',
  35.5110, 140.1260,
  'JR内房線 五井駅',
  20,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '駐車場完備', '地域密着'],
  '市原斎場運営株式会社',
  4.0, 18
),

-- 6-3. セレモ市原五井駅ホール
(
  'セレモ市原五井駅ホール',
  'ceremo-ichihara-goi',
  'private_hall',
  'セレモが運営する市原市の葬儀ホール。JR内房線「五井駅」から徒歩5分の好立地。家族葬に特化した温かみのあるホールで、少人数のお別れに最適です。',
  '千葉県市原市五井中央東1-14-6',
  'chiba', 'ichihara',
  35.5190, 140.0990,
  'JR内房線 五井駅',
  5,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬対応', '1日1組貸切'],
  '株式会社セレモ',
  4.2, 16
);

-- =============================================
-- 7. 八千代市 (yachiyo) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7-1. 八千代セレモニーホール
(
  '八千代セレモニーホール',
  'yachiyo-ceremony-hall',
  'private_hall',
  '八千代市の中心部に位置する葬儀会館。東葉高速鉄道「八千代中央駅」から徒歩10分。2つの式場を備え、家族葬から一般葬まで対応。火葬は四市複合事務組合の馬込斎場を利用します。',
  '千葉県八千代市ゆりのき台3-5-2',
  'chiba', 'yachiyo',
  35.7320, 140.0810,
  '東葉高速鉄道 八千代中央駅',
  10,
  60, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー'],
  '八千代セレモニーサービス株式会社',
  4.1, 20
),

-- 7-2. 家族葬のファミーユ八千代
(
  '家族葬のファミーユ八千代',
  'famillu-yachiyo',
  'private_hall',
  'ファミーユが運営する八千代市の家族葬専用ホール。京成本線「八千代台駅」から徒歩7分。1日1組貸切の完全プライベート空間で、少人数でゆっくりとお別れの時間を過ごせます。',
  '千葉県八千代市八千代台北1-12-3',
  'chiba', 'yachiyo',
  35.7190, 140.0750,
  '京成本線 八千代台駅',
  7,
  25, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近'],
  '株式会社家族葬のファミーユ',
  4.3, 15
);

-- =============================================
-- 8. 習志野市 (narashino) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8-1. しおかぜホール茜浜（公営火葬場）
(
  'しおかぜホール茜浜',
  'shiokaze-hall-akanehama',
  'public_crematorium',
  '船橋市・習志野市・八千代市・鎌ケ谷市の四市複合事務組合が運営する公営の式場・火葬場。習志野市茜浜に位置し、式場と火葬場を併設。海沿いの立地で開放的な雰囲気。関係4市民は利用料が減免されます。',
  '千葉県習志野市茜浜3-7-6',
  'chiba', 'narashino',
  35.6710, 140.0260,
  'JR京葉線 新習志野駅',
  15,
  60, 2, true, 80,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '四市複合事務組合',
  4.0, 32
),

-- 8-2. 習志野メモリアルホール
(
  '習志野メモリアルホール',
  'narashino-memorial',
  'private_hall',
  '習志野市の葬儀会館。JR総武線「津田沼駅」から徒歩10分。家族葬から一般葬まで対応可能な式場を備えています。津田沼駅からのアクセスも良く、東京方面からの参列者にも便利です。',
  '千葉県習志野市谷津3-8-1',
  'chiba', 'narashino',
  35.6870, 140.0110,
  'JR総武線 津田沼駅',
  10,
  50, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 288000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}]',
  ARRAY['駅近', '家族葬対応', 'アクセス良好'],
  '習志野メモリアルサービス株式会社',
  4.1, 17
);

-- =============================================
-- 9. 浦安市 (urayasu) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9-1. 浦安市斎場（公営火葬場）
(
  '浦安市斎場',
  'urayasu-shi-saijo',
  'public_crematorium',
  '浦安市が運営する公営の総合斎場。火葬場と式場を備え、通夜から火葬まで一貫して執り行えます。JR京葉線「舞浜駅」からバス15分。駐車場は乗用車100台・マイクロバス6台と充実。浦安市民は火葬料無料です。',
  '千葉県浦安市千鳥15-3',
  'chiba', 'urayasu',
  35.6370, 139.9330,
  'JR京葉線 舞浜駅',
  20,
  80, 2, true, 100,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '浦安市',
  4.1, 35
),

-- 9-2. 浦安フェアウェルホール
(
  '浦安フェアウェルホール',
  'urayasu-farewell-hall',
  'private_hall',
  '浦安市の家族葬対応ホール。東京メトロ東西線「浦安駅」から徒歩8分。東京都心からのアクセスが抜群で、遠方からの参列者にも好評。明るく清潔感のある式場で、心のこもったお別れができます。',
  '千葉県浦安市北栄1-16-5',
  'chiba', 'urayasu',
  35.6610, 139.9050,
  '東京メトロ東西線 浦安駅',
  8,
  40, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 408000}]',
  ARRAY['駅近', '家族葬対応', '東京からアクセス良好'],
  '浦安フェアウェルサービス株式会社',
  4.3, 22
);

-- =============================================
-- 10. 流山市 (nagareyama) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10-1. 流山セレモニーホール
(
  '流山セレモニーホール',
  'nagareyama-ceremony-hall',
  'private_hall',
  '流山市の葬儀会館。つくばエクスプレス「流山おおたかの森駅」から車で10分。2つの式場を備え、家族葬から一般葬まで対応。火葬はウイングホール柏斎場を利用。子育て世代が多いエリアならではの配慮ある対応が好評です。',
  '千葉県流山市西初石3-98-29',
  'chiba', 'nagareyama',
  35.8670, 139.9310,
  'つくばエクスプレス 流山おおたかの森駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー'],
  '流山セレモニーサービス株式会社',
  4.1, 19
),

-- 10-2. 家族葬のファミーユ流山
(
  '家族葬のファミーユ流山',
  'famillu-nagareyama',
  'private_hall',
  'ファミーユが運営する流山市の家族葬専用ホール。つくばエクスプレス「南流山駅」から徒歩8分。1日1組貸切のプライベート空間で、少人数のお別れに最適。JR武蔵野線との乗り換えもスムーズです。',
  '千葉県流山市南流山2-26-8',
  'chiba', 'nagareyama',
  35.8400, 139.8980,
  'つくばエクスプレス 南流山駅',
  8,
  25, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近'],
  '株式会社家族葬のファミーユ',
  4.4, 14
);

-- =============================================
-- 11. 木更津市 (kisarazu) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11-1. きみさらず聖苑（公営火葬場）
(
  'きみさらず聖苑',
  'kimisarazu-seien',
  'public_crematorium',
  '木更津市・君津市・富津市・袖ケ浦市が共同運営する公営の火葬場。令和4年に供用開始された新しい施設で、火葬炉10基を備えています。お別れ室や霊安室、待合室を完備。関係市民は火葬料が減免されます。',
  '千葉県木更津市大久保843-1',
  'chiba', 'kisarazu',
  35.3690, 139.9670,
  'JR内房線 木更津駅',
  30,
  40, 1, true, 90,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "お別れ室": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['火葬場併設', '公営斎場', '新しい施設', '駐車場完備'],
  'かずさ四市広域事務組合',
  4.2, 28
),

-- 11-2. かじま斎場芙蓉会館
(
  'かじま斎場芙蓉会館',
  'kajima-fuyo-kaikan',
  'private_hall',
  '木更津市の老舗葬儀社が運営する葬儀会館。JR内房線「木更津駅」から徒歩14分の好立地。家族葬から一般葬まで対応可能な式場を備え、地域に根差した丁寧なサービスが特長です。',
  '千葉県木更津市請西1-11-12',
  'chiba', 'kisarazu',
  35.3780, 139.9510,
  'JR内房線 木更津駅',
  14,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['地域密着', '家族葬対応', '老舗葬儀社'],
  '株式会社かじま',
  4.0, 16
);

-- =============================================
-- 12. 野田市 (noda) — 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12-1. 野田市斎場（公営火葬場）
(
  '野田市斎場',
  'noda-shi-saijo',
  'public_crematorium',
  '野田市が運営する公営の総合斎場。火葬場と式場を併設し、大式場56席・小式場30席を完備。通夜から火葬まで一貫して執り行えます。駐車場は一般107台・バス3台と充実。野田市民は火葬料無料です。',
  '千葉県野田市目吹7',
  'chiba', 'noda',
  35.9620, 139.8750,
  '東武アーバンパークライン 野田市駅',
  15,
  56, 2, true, 107,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応'],
  '野田市',
  4.0, 30
),

-- 12-2. 野田清風セレモニーホール
(
  '野田清風セレモニーホール',
  'noda-seifu-ceremony',
  'private_hall',
  '野田市の家族葬対応ホール。東武アーバンパークライン「愛宕駅」から徒歩6分。少人数でゆっくりとお別れできるアットホームな空間。1日1組貸切で、プライベートなお別れが可能です。',
  '千葉県野田市野田534-1',
  'chiba', 'noda',
  35.9570, 139.8680,
  '東武アーバンパークライン 愛宕駅',
  6,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近', 'アットホーム'],
  '清風セレモニー株式会社',
  4.2, 13
);
