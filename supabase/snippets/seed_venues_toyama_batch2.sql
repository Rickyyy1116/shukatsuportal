-- =============================================
-- 斎場データ追加: toyama batch2 (19件)
-- =============================================

-- 1. 富山市北部斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '富山市北部斎場',
  'toyama-hokubu-saijo',
  'public_crematorium',
  '富山市が運営する公営斎場。競輪場前駅から徒歩6分と交通アクセスに優れています。火葬施設を備え、富山市民は火葬料の優遇があります。海沿いの静かな環境に位置しています。',
  '富山県富山市岩瀬池田町71',
  'toyama', 'toyama-city',
  36.728, 137.225,
  '富山地鉄 競輪場前駅',
  6,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駅近', '駐車場完備', 'バリアフリー'],
  '富山市',
  3.9, 38
);

-- 2. ティア富山天正寺
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ティア富山天正寺',
  'tear-toyama-tenshoji',
  'private_hall',
  '全国展開の葬儀社ティアが運営する富山市の葬儀会館。家族葬から一般葬まで明朗会計のプランを提供。温かみのある館内で、ご遺族に寄り添ったサービスが好評です。24時間365日対応しています。',
  '富山県富山市天正寺501-1',
  'toyama', 'toyama-city',
  36.68, 137.195,
  '富山地鉄 不二越駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '24時間対応', '明朗会計', '宿泊可能', '駐車場完備'],
  '株式会社ティア',
  4.3, 30
);

-- 3. ティア富山大泉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ティア富山大泉',
  'tear-toyama-oizumi',
  'private_hall',
  'ティアが運営する富山市大泉の葬儀会館。富山駅から車で約10分のアクセス。少人数の家族葬に特化した設計で、1日1組完全貸切。プライバシーが守られた空間で、ゆっくりとお別れの時間を過ごせます。',
  '富山県富山市大泉中町8-12',
  'toyama', 'toyama-city',
  36.688, 137.2,
  '富山地鉄 大泉駅',
  5,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応', 'バリアフリー'],
  '株式会社ティア',
  4.4, 25
);

-- 4. オークスセレモニーホール富山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'オークスセレモニーホール富山',
  'oarks-ceremony-hall-toyama',
  'private_hall',
  'オークス株式会社が運営する富山市の大型セレモニーホール。富山県内で多数の式場を展開する地域最大手の一つ。大ホールと家族葬専用ホールを備え、あらゆる規模の葬儀に対応可能です。',
  '富山県富山市新庄町3-5-28',
  'toyama', 'toyama-city',
  36.705, 137.223,
  '富山地鉄 東新庄駅',
  8,
  120, 3, false, 70,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['大規模葬対応', '家族葬対応', '駅近', '宿泊可能', '駐車場完備'],
  'オークス株式会社',
  4.2, 35
);

-- 5. セレモニーホール富山南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール富山南',
  'ceremony-hall-toyama-minami',
  'private_hall',
  '富山市南部に位置する葬儀会館。南富山駅からのアクセスが良好です。家族葬から一般葬まで対応し、落ち着いた雰囲気の中で心を込めたお見送りができます。バリアフリー設計で車椅子の方も安心です。',
  '富山県富山市堀川町345-1',
  'toyama', 'toyama-city',
  36.675, 137.205,
  '富山地鉄 南富山駅',
  10,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '富山セレモニー株式会社',
  4.0, 22
);

-- 6. 家族葬のファミーユ富山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ富山',
  'familyu-toyama',
  'private_hall',
  '「家族葬のファミーユ」ブランドの富山市内ホール。家族葬に特化し、少人数でのお別れに最適な空間を提供。リビングルームのような温かい内装で、ご遺族がゆっくり過ごせます。24時間対応。',
  '富山県富山市掛尾町500-8',
  'toyama', 'toyama-city',
  36.68, 137.185,
  'JR高山本線 富山駅',
  20,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社家族葬のファミーユ',
  4.3, 20
);

-- 7. 小さなお葬式 富山ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 富山ホール',
  'chiisana-ososhiki-toyama',
  'private_hall',
  '全国展開の「小さなお葬式」提携ホール。富山市中心部に位置し、低価格ながら質の高いサービスを提供。追加料金なしの明朗会計プランが好評で、火葬式から家族葬まで対応しています。',
  '富山県富山市中央通り1-8-25',
  'toyama', 'toyama-city',
  36.695, 137.21,
  'JR北陸本線 富山駅',
  10,
  40, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['駅近', '家族葬対応', '低価格', '明朗会計'],
  '株式会社ユニクエスト',
  4.0, 15
);

-- 8. ティア富山下奥井
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ティア富山下奥井',
  'tear-toyama-shimookui',
  'private_hall',
  'ティアが運営する富山市下奥井の葬儀会館。富山駅北部エリアに位置し、家族葬を中心にサービスを展開。明朗会計と丁寧な対応が特長で、ご遺族の負担を軽減するプランを提供しています。',
  '富山県富山市下奥井1-16-8',
  'toyama', 'toyama-city',
  36.71, 137.225,
  '富山地鉄 下奥井駅',
  5,
  50, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬対応', '駅近', '24時間対応', '明朗会計'],
  '株式会社ティア',
  4.2, 18
);

-- 9. 高岡斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '高岡斎場',
  'takaoka-saijo',
  'public_crematorium',
  '高岡市が運営する公営斎場。式場と火葬施設を同一敷地内に備え、通夜から火葬まで一貫して対応可能。高岡市民は火葬料が優遇されます。広い駐車場を完備し、大規模な葬儀にも対応できます。',
  '富山県高岡市戸出春日356',
  'toyama', 'takaoka',
  36.696, 137.005,
  'JR城端線 戸出駅',
  15,
  100, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 495000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '高岡市',
  3.8, 32
);

-- 10. オークスセレモニーホール高岡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'オークスセレモニーホール高岡',
  'oarks-ceremony-hall-takaoka',
  'private_hall',
  'オークス株式会社が運営する高岡市の総合葬儀会館。高岡大仏にほど近い市街地に位置し、大規模な一般葬から家族葬まで幅広く対応。地域密着型のきめ細かいサービスが評判です。',
  '富山県高岡市大手町11-30',
  'toyama', 'takaoka',
  36.746, 137.022,
  'あいの風とやま鉄道 高岡駅',
  10,
  100, 3, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  'オークス株式会社',
  4.1, 28
);

-- 11. ティア高岡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ティア高岡',
  'tear-takaoka',
  'private_hall',
  'ティアが運営する高岡市の葬儀会館。家族葬に特化した温かみのある空間で、少人数でゆっくりとお別れの時間を過ごせます。明朗会計の料金体系と丁寧なスタッフ対応が好評です。',
  '富山県高岡市横田町3-1-15',
  'toyama', 'takaoka',
  36.74, 137.018,
  'あいの風とやま鉄道 高岡駅',
  12,
  50, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}]',
  ARRAY['家族葬対応', '24時間対応', '明朗会計', 'バリアフリー'],
  '株式会社ティア',
  4.3, 22
);

-- 12. 家族葬のファミーユ高岡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ高岡',
  'familyu-takaoka',
  'private_hall',
  '「家族葬のファミーユ」高岡ホール。少人数でのお別れに特化し、リビング感覚の温かい空間を提供。1日1組完全貸切で、プライバシーを重視した設計が特長です。',
  '富山県高岡市中川上町9-50',
  'toyama', 'takaoka',
  36.748, 137.03,
  'JR氷見線 越中中川駅',
  5,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '株式会社家族葬のファミーユ',
  4.4, 18
);

-- 13. セレモニーホール高岡南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール高岡南',
  'ceremony-hall-takaoka-minami',
  'private_hall',
  '高岡市南部に位置する葬儀会館。新高岡駅からのアクセスが良好で、北陸新幹線利用の遠方からの参列にも便利。家族葬から大規模葬まで対応し、広い駐車場を完備しています。',
  '富山県高岡市京田537-1',
  'toyama', 'takaoka',
  36.72, 137.01,
  'JR北陸新幹線 新高岡駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '高岡セレモニー株式会社',
  4.0, 20
);

-- 14. 新川広域圏東部斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新川広域圏東部斎場',
  'shinkawa-tobu-saijo',
  'public_crematorium',
  '新川広域圏事務組合が運営する公営斎場。魚津市・黒部市・入善町・朝日町の住民が利用可能。火葬施設を備え、広域圏内住民は火葬料が優遇されます。',
  '富山県下新川郡朝日町三枚橋2354',
  'toyama', 'uozu',
  36.92, 137.545,
  'あいの風とやま鉄道 泊駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '新川広域圏事務組合',
  3.7, 18
);

-- 15. 氷見斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '氷見斎場',
  'himi-saijo',
  'public_crematorium',
  '氷見市が運営する公営斎場。能登半島を望む静かな環境に位置し、火葬施設を備えています。氷見市民は火葬料の優遇があります。漁港の街・氷見らしい穏やかな雰囲気の施設です。',
  '富山県氷見市北八代東原118',
  'toyama', 'himi',
  36.863, 136.979,
  'JR氷見線 氷見駅',
  20,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '氷見市',
  3.5, 12
);

-- 16. 滑川市火葬場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '滑川市火葬場',
  'namerikawa-kasoba',
  'public_crematorium',
  '滑川市が運営する公営火葬場。中滑川駅から徒歩9分と交通アクセスに優れています。コンパクトながら必要な設備を備え、滑川市民は火葬料の優遇措置があります。',
  '富山県滑川市下島639',
  'toyama', 'namerikawa',
  36.763, 137.34,
  '富山地鉄 中滑川駅',
  9,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場', '駅近'],
  '滑川市',
  3.5, 10
);

-- 17. 砺波市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '砺波市斎場',
  'tonami-shi-saijo',
  'public_crematorium',
  '砺波市が運営する公営斎場。チューリップで有名な砺波平野の静かな環境に位置し、火葬施設を備えています。砺波市民は火葬料の優遇があります。',
  '富山県砺波市徳万52-1',
  'toyama', 'tonami',
  36.628, 136.955,
  'JR城端線 砺波駅',
  25,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '砺波市',
  3.6, 12
);

-- 18. 小矢部市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小矢部市斎場',
  'oyabe-shi-saijo',
  'public_crematorium',
  '小矢部市が運営する公営斎場。石動駅から車で約12分の立地。小矢部市民は火葬料の優遇があります。メルヘンの街として知られる小矢部市の静かな環境にある施設です。',
  '富山県小矢部市田川字城ケ嶺15',
  'toyama', 'oyabe',
  36.67, 136.87,
  'あいの風とやま鉄道 石動駅',
  25,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '小矢部市',
  3.5, 8
);

-- 19. 黒部市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '黒部市斎場',
  'kurobe-shi-saijo',
  'public_crematorium',
  '黒部市が運営する公営火葬場。黒部峡谷の玄関口として知られる黒部市にあり、静かな環境で故人をお見送りできます。黒部市民は火葬料の優遇措置があります。',
  '富山県黒部市宇奈月町内山3647',
  'toyama', 'kurobe',
  36.82, 137.448,
  '富山地鉄 宇奈月温泉駅',
  15,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '黒部市',
  3.5, 8
);

