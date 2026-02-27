-- =============================================
-- 斎場データ追加: niigata batch2 (40件)
-- =============================================

-- 1. 新潟市新津斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新潟市新津斎場',
  'niigata-niitsu-saijo',
  'public_crematorium',
  '新潟市秋葉区にある公営火葬場。新津駅から車で約7分の立地です。新潟市民は火葬料無料で利用可能。落ち着いた環境の中で故人をお見送りできます。待合室や控室も完備しており、火葬式にも対応しています。',
  '新潟県新潟市秋葉区古田ノ内大野開33-4',
  'niigata', 'niigata-city',
  37.797, 139.119,
  'JR信越本線 新津駅',
  20,
  50, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]',
  ARRAY['火葬場併設', '公営斎場', '家族葬対応', 'バリアフリー'],
  '新潟市',
  3.7, 22
);

-- 2. 新潟市白根斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新潟市白根斎場',
  'niigata-shirone-saijo',
  'public_crematorium',
  '新潟市南区にある公営斎場。白根地域の方を中心に利用されています。火葬炉を備え、新潟市民は火葬料無料。静かな田園地帯に位置し、穏やかな雰囲気の中で故人を見送れます。',
  '新潟県新潟市南区鍋潟638-1',
  'niigata', 'niigata-city',
  37.784, 139.023,
  'JR信越本線 矢代田駅',
  30,
  40, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '新潟市',
  3.6, 15
);

-- 3. 巻斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '巻斎場',
  'niigata-maki-saijo',
  'public_crematorium',
  '新潟市西蒲区にある公営火葬場。岩室駅から車で約5分のアクセス。新潟市民は火葬料無料で利用できます。西蒲区の方を中心に利用されており、周囲は自然に囲まれた静かな環境です。',
  '新潟県新潟市西蒲区和納5770',
  'niigata', 'niigata-city',
  37.785, 138.917,
  'JR越後線 岩室駅',
  15,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '新潟市',
  3.5, 12
);

-- 4. セレモニーホール亀田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール亀田',
  'ceremony-hall-kameda',
  'private_hall',
  'アークベルが運営する新潟市江南区の葬儀会館。JR亀田駅から徒歩3分と抜群のアクセスが特長です。家族葬から一般葬まで対応可能で、温かみのある内装が好評。駐車場も完備しています。',
  '新潟県新潟市江南区東船場2-1-23',
  'niigata', 'niigata-city',
  37.885, 139.109,
  'JR信越本線 亀田駅',
  3,
  80, 2, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 265000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 565000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.2, 35
);

-- 5. VIPシティホール青山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'VIPシティホール青山',
  'vip-city-hall-aoyama',
  'private_hall',
  '新潟市西区の民間葬儀会館。JR青山駅から徒歩5分の好立地。家族葬から大規模な一般葬まで幅広く対応。火葬場に近い便利な立地で、清潔感のある館内と丁寧なスタッフの対応が評判です。',
  '新潟県新潟市西区浦山2-3-7',
  'niigata', 'niigata-city',
  37.89, 138.997,
  'JR越後線 青山駅',
  5,
  100, 2, false, 60,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 395000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]',
  ARRAY['駅近', '火葬場近隣', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社VIPシティホール',
  4.1, 28
);

-- 6. 新津セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新津セレモニーホール',
  'niitsu-ceremony-hall',
  'private_hall',
  'アークベルが運営する新潟市秋葉区のセレモニーホール。新津地区を中心にご利用いただいています。家族葬にも対応した小規模ホールを備え、地域に密着した温かいサービスを提供しています。',
  '新潟県新潟市秋葉区新津4550-1',
  'niigata', 'niigata-city',
  37.8, 139.12,
  'JR信越本線 新津駅',
  10,
  60, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.0, 25
);

-- 7. 家族葬のダビアス新潟東
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のダビアス新潟東',
  'davius-niigata-higashi',
  'private_hall',
  '新潟市東区にある家族葬専用ホール。少人数での温かいお別れの場を提供します。1日1組完全貸切で、リビングのような落ち着いた空間。24時間365日相談可能で、急なご依頼にも対応しています。',
  '新潟県新潟市東区中山7-23-15',
  'niigata', 'niigata-city',
  37.925, 139.082,
  'JR白新線 東新潟駅',
  15,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社ダビアス新潟',
  4.4, 20
);

-- 8. サラきたまち
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サラきたまち',
  'sala-kitamachi-niigata',
  'private_hall',
  '新潟市北区にある家族葬向けの葬儀ホール。「サラ」ブランドとして新潟市内に展開する施設の一つ。少人数から中規模の葬儀に対応し、モダンで温かみのある空間が特長。駐車場も十分に確保されています。',
  '新潟県新潟市北区木崎880-1',
  'niigata', 'niigata-city',
  37.942, 139.069,
  'JR白新線 豊栄駅',
  15,
  50, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー'],
  '株式会社サラ',
  4.1, 18
);

-- 9. 小さなお葬式 新潟西ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 新潟西ホール',
  'chiisana-ososhiki-niigata-nishi',
  'private_hall',
  '全国展開の「小さなお葬式」提携ホール。新潟市西区に位置し、低価格ながら質の高いサービスを提供。火葬式から家族葬まで明朗会計のプランが揃い、追加料金なしの安心感が好評です。',
  '新潟県新潟市西区小針8-14-1',
  'niigata', 'niigata-city',
  37.897, 138.985,
  'JR越後線 小針駅',
  10,
  40, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '低価格', '明朗会計', 'バリアフリー'],
  '株式会社ユニクエスト',
  4.0, 15
);

-- 10. メモリアルホール新潟中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'メモリアルホール新潟中央',
  'memorial-hall-niigata-chuo',
  'private_hall',
  '新潟市中央区の総合葬儀会館。中央区の中心部に位置し、アクセスの良さが魅力です。100名規模の大ホールから少人数向けの和室まで多彩な式場を備え、通夜から告別式まで一貫して対応。バリアフリー設計で車椅子の方も安心です。',
  '新潟県新潟市中央区関屋大川前2-1-15',
  'niigata', 'niigata-city',
  37.91, 139.028,
  'JR越後線 関屋駅',
  8,
  100, 3, false, 45,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 270000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 568000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  'メモリアルホール株式会社',
  4.2, 30
);

-- 11. セレモニーホール四郎丸
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール四郎丸',
  'ceremony-hall-shiromaru-nagaoka',
  'private_hall',
  'アークベルが運営する長岡市四郎丸のセレモニーホール。メモリアルルームを備え、少人数の家族葬にも対応。長岡市内でも利便性の高い立地で、通夜から告別式まで一貫してサポートします。',
  '新潟県長岡市四郎丸1-5-35',
  'niigata', 'nagaoka',
  37.434, 138.863,
  'JR上越線 宮内駅',
  10,
  60, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.1, 25
);

-- 12. セレモニーホール長岡会堂
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール長岡会堂',
  'ceremony-hall-nagaoka-kaido',
  'private_hall',
  '長岡市南町にあるアークベルの大規模セレモニーホール。JR長岡駅から徒歩圏内の好立地。大ホールと小ホールを備え、大規模な一般葬から少人数の家族葬まで幅広く対応。充実した設備と丁寧なサービスが評判です。',
  '新潟県長岡市南町1-1-11',
  'niigata', 'nagaoka',
  37.44, 138.852,
  'JR上越新幹線 長岡駅',
  12,
  120, 3, false, 60,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 112000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アークベル',
  4.3, 40
);

-- 13. ラソ平安
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ラソ平安',
  'raso-heian-nagaoka',
  'private_hall',
  '長岡市西神田町にある家族葬専用ホール。アークベルが展開する「ラソ」ブランドの施設で、少人数でゆっくりとお別れできる空間を提供。リビングルームのような温かみのある内装が特長です。',
  '新潟県長岡市西神田町1-7-4',
  'niigata', 'nagaoka',
  37.448, 138.848,
  'JR上越新幹線 長岡駅',
  15,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.4, 22
);

-- 14. 喜多町ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '喜多町ホール',
  'kitamachi-hall-nagaoka',
  'private_hall',
  '長岡市喜多町にある総合葬儀会館。VIPシティホールグループの施設で、大規模な一般葬から家族葬まで対応可能。FUNERAL HOUSE想やサラきたまちなど多彩なホールを併設し、ご要望に合わせた空間を選べます。',
  '新潟県長岡市喜多町1162-1',
  'niigata', 'nagaoka',
  37.468, 138.866,
  'JR信越本線 北長岡駅',
  12,
  150, 4, false, 80,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社VIPシティホール',
  4.2, 35
);

-- 15. VIPシティホール大島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'VIPシティホール大島',
  'vip-city-hall-oshima-nagaoka',
  'private_hall',
  '長岡市大島新町にある民間葬儀会館。VIPシティホールグループとして長岡市内に複数展開する施設の一つ。家族葬から一般葬まで幅広く対応し、明るく清潔な館内が特長です。',
  '新潟県長岡市大島新町4-1-8',
  'niigata', 'nagaoka',
  37.444, 138.88,
  'JR信越本線 長岡駅',
  20,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 265000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社VIPシティホール',
  4.0, 20
);

-- 16. セレモニーホール蔵王
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール蔵王',
  'ceremony-hall-zao-nagaoka',
  'private_hall',
  '長岡市東蔵王にあるアークベルのセレモニーホール。長岡市東部エリアを中心にサービスを提供。落ち着いた雰囲気の中で、家族葬から一般葬までご要望に合わせた式を執り行えます。',
  '新潟県長岡市東蔵王2-4-3',
  'niigata', 'nagaoka',
  37.454, 138.876,
  'JR信越本線 長岡駅',
  18,
  70, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.0, 22
);

-- 17. 上越斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '上越斎場',
  'joetsu-saijo',
  'public_crematorium',
  '上越市が運営する公営斎場。上越市大字居多に位置し、火葬施設と式場を備えています。上越市民は火葬料が優遇されます。日本海を望む高台に立地し、静かな環境の中で故人を見送れます。',
  '新潟県上越市大字居多776',
  'niigata', 'joetsu',
  37.105, 138.223,
  'えちごトキめき鉄道 直江津駅',
  20,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '上越市',
  3.8, 30
);

-- 18. セレモニーホール上越
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール上越',
  'ceremony-hall-joetsu',
  'private_hall',
  '上越市の大型民間葬儀会館。JR高田駅からのアクセスが良く、大規模な葬儀にも対応可能。上越地域で長年の実績を持ち、地域に密着したきめ細かいサービスを提供しています。',
  '新潟県上越市西城町3-5-12',
  'niigata', 'joetsu',
  37.1, 138.237,
  'えちごトキめき鉄道 高田駅',
  10,
  100, 2, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '上越セレモニー株式会社',
  4.1, 28
);

-- 19. 家族葬のウィズハウス上越
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のウィズハウス上越',
  'with-house-joetsu',
  'private_hall',
  '上越市にある家族葬専用ホール。ウィズハウスブランドとして展開する邸宅型の葬儀場で、自宅にいるような温かい空間の中でお別れができます。少人数に特化した設計で、プライバシーが守られています。',
  '新潟県上越市春日新田3-8-15',
  'niigata', 'joetsu',
  37.112, 138.248,
  'えちごトキめき鉄道 春日山駅',
  12,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社ウィズハウス',
  4.5, 18
);

-- 20. 直江津セレモニーホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '直江津セレモニーホール',
  'naoetsu-ceremony-hall',
  'private_hall',
  '上越市直江津地区にある葬儀会館。JR直江津駅から車で約8分のアクセス。直江津地区を中心に長年の実績があり、地域の皆様に親しまれています。家族葬から一般葬まで幅広く対応します。',
  '新潟県上越市五智国分3-5-8',
  'niigata', 'joetsu',
  37.115, 138.215,
  'JR信越本線 直江津駅',
  18,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 535000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '直江津セレモニー株式会社',
  3.9, 20
);

-- 21. 槻の森斎苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '槻の森斎苑',
  'tsukinomori-saien-sanjo',
  'public_crematorium',
  '三条市が運営する公営斎場。三条市月岡に位置し、火葬施設を備えています。緑に囲まれた静かな環境で、故人を穏やかにお見送りできます。三条市民は火葬料の優遇措置があります。',
  '新潟県三条市月岡3722',
  'niigata', 'sanjo',
  37.62, 139.0,
  'JR弥彦線 燕三条駅',
  25,
  60, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '三条市',
  3.7, 20
);

-- 22. セレモニーホール三条
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール三条',
  'ceremony-hall-sanjo',
  'private_hall',
  'アークベルが運営する三条市の葬儀会館。燕三条駅からのアクセスが良い立地にあり、家族葬から一般葬まで幅広く対応。三条・燕エリアで長年の信頼と実績を持つ施設です。',
  '新潟県三条市興野3-13-45',
  'niigata', 'sanjo',
  37.632, 138.963,
  'JR弥彦線 燕三条駅',
  12,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.1, 25
);

-- 23. ラソ三条
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ラソ三条',
  'raso-sanjo',
  'private_hall',
  'アークベルの家族葬専用ブランド「ラソ」の三条ホール。少人数でのお別れに特化した空間で、リビング感覚の温かい内装が好評。1日1組完全貸切で、ゆったりとお過ごしいただけます。',
  '新潟県三条市東裏館1-5-20',
  'niigata', 'sanjo',
  37.625, 138.96,
  'JR弥彦線 北三条駅',
  8,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', 'バリアフリー'],
  '株式会社アークベル',
  4.3, 15
);

-- 24. 新発田広域葬斎センター願文院
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新発田広域葬斎センター願文院',
  'ganmonin-shibata',
  'public_crematorium',
  '新発田広域事務組合が運営する公営斎場。火葬施設と式場を備え、新発田市・胎内市・聖籠町の住民が利用可能。広々とした敷地と充実した設備が特長で、通夜から火葬まで一貫して対応できます。',
  '新潟県新発田市古楯495',
  'niigata', 'shibata',
  37.953, 139.336,
  'JR白新線 新発田駅',
  20,
  100, 2, true, 80,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 515000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '新発田地域広域事務組合',
  3.9, 35
);

-- 25. セレモニーホール新発田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール新発田',
  'ceremony-hall-shibata',
  'private_hall',
  'アークベルが運営する新発田市の葬儀会館。新発田市大栄町に位置し、家族葬から一般葬まで幅広く対応。地域に密着したサービスを提供し、新発田エリアで信頼を集めています。',
  '新潟県新発田市大栄町3-3-24',
  'niigata', 'shibata',
  37.948, 139.328,
  'JR白新線 新発田駅',
  12,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アークベル',
  4.0, 22
);

-- 26. ファミリーホール四季しんえい
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ファミリーホール四季しんえい',
  'family-hall-shiki-shinei-shibata',
  'private_hall',
  '花安グループが運営する新発田市の葬儀会館。新発田市日渡に位置し、家族葬に特化した温かみのある施設。花安は新発田市で長年の実績を持つ地域密着型の葬儀社で、丁寧な対応が評判です。',
  '新潟県新発田市日渡85-1',
  'niigata', 'shibata',
  37.935, 139.315,
  'JR白新線 新発田駅',
  18,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬対応', '地域密着', '駐車場完備', 'バリアフリー'],
  '株式会社花安',
  4.2, 18
);

-- 27. 柏崎市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '柏崎市斎場',
  'kashiwazaki-shi-saijo',
  'public_crematorium',
  '柏崎市が運営する公営斎場。火葬施設と待合室を備え、柏崎市民は火葬料の優遇措置があります。静かな環境の中で穏やかにお見送りできる施設です。',
  '新潟県柏崎市松波4-13-36',
  'niigata', 'kashiwazaki',
  37.372, 138.556,
  'JR信越本線 柏崎駅',
  15,
  60, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '柏崎市',
  3.7, 18
);

-- 28. セレモニーホール柏崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール柏崎',
  'ceremony-hall-kashiwazaki',
  'private_hall',
  '柏崎市にあるアークベルのセレモニーホール。柏崎駅から車で約10分のアクセス。家族葬から一般葬まで対応可能で、柏崎地域に密着したサービスを提供しています。',
  '新潟県柏崎市田中18-15',
  'niigata', 'kashiwazaki',
  37.368, 138.549,
  'JR信越本線 柏崎駅',
  15,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 535000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社アークベル',
  4.0, 20
);

-- 29. 燕市営斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '燕市営斎場',
  'tsubame-shi-saijo',
  'public_crematorium',
  '燕市が運営する公営の火葬場。燕市民は火葬料の優遇措置があります。燕三条地域の交通の要衝に位置し、アクセスも便利。シンプルながら必要な設備を備えた施設です。',
  '新潟県燕市花見1465',
  'niigata', 'tsubame',
  37.668, 138.925,
  'JR弥彦線 燕駅',
  20,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '燕市',
  3.5, 12
);

-- 30. 十日町市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '十日町市斎場',
  'tokamachi-shi-saijo',
  'public_crematorium',
  '十日町市が運営する公営斎場。豪雪地帯の十日町市にあり、冬期でも安心して利用できる設備を整えています。十日町市民は火葬料の優遇措置があります。',
  '新潟県十日町市中条己2858',
  'niigata', 'tokamachi',
  37.128, 138.756,
  'JR飯山線 十日町駅',
  20,
  40, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '十日町市',
  3.6, 14
);

-- 31. セレモニーホール十日町
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール十日町',
  'ceremony-hall-tokamachi',
  'private_hall',
  '十日町市にある民間葬儀会館。雪国ならではの配慮が行き届いた設備で、冬期でも安心して利用できます。家族葬から一般葬まで対応し、地域の皆様に愛されている施設です。',
  '新潟県十日町市本町5-39-2',
  'niigata', 'tokamachi',
  37.129, 138.761,
  'JR飯山線 十日町駅',
  10,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '十日町セレモニー株式会社',
  4.0, 16
);

-- 32. 見附市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '見附市斎場',
  'mitsuke-shi-saijo',
  'public_crematorium',
  '見附市が運営する公営火葬場。コンパクトながら必要な設備を備え、見附市民は火葬料の優遇があります。見附市中心部からのアクセスも良好です。',
  '新潟県見附市新幸町7-25',
  'niigata', 'mitsuke',
  37.53, 138.92,
  'JR信越本線 見附駅',
  15,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '見附市',
  3.5, 10
);

-- 33. 村上市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '村上市斎場',
  'murakami-shi-saijo',
  'public_crematorium',
  '村上市が運営する公営斎場。村上市の北部に位置し、火葬施設を備えています。城下町・村上の静かな環境の中で、故人を穏やかにお見送りできる施設です。',
  '新潟県村上市岩船上大町3-18',
  'niigata', 'murakami',
  38.225, 139.468,
  'JR羽越本線 村上駅',
  20,
  50, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '村上市',
  3.6, 12
);

-- 34. 小千谷市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小千谷市斎場',
  'ojiya-shi-saijo',
  'public_crematorium',
  '小千谷市が運営する公営火葬場。信濃川沿いの静かな環境に位置し、小千谷市民は火葬料の優遇があります。コンパクトながら必要な設備を備えた施設です。',
  '新潟県小千谷市大字薭生甲1854-2',
  'niigata', 'ojiya',
  37.311, 138.795,
  'JR上越線 小千谷駅',
  15,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '小千谷市',
  3.5, 10
);

-- 35. 加茂市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '加茂市斎場',
  'kamo-niigata-shi-saijo',
  'public_crematorium',
  '加茂市が運営する公営火葬場。「北越の小京都」と呼ばれる加茂市に位置し、周囲は自然に囲まれた穏やかな環境です。加茂市民は火葬料の優遇措置があります。',
  '新潟県加茂市大字上条830',
  'niigata', 'kamo-niigata',
  37.668, 139.05,
  'JR信越本線 加茂駅',
  18,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '加茂市',
  3.5, 8
);

-- 36. 妙高市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '妙高市斎場',
  'myoko-shi-saijo',
  'public_crematorium',
  '妙高市が運営する公営斎場。妙高山を望む自然豊かな環境にあり、静かに故人をお見送りできます。妙高市民は火葬料の優遇があります。冬期も除雪が行き届いています。',
  '新潟県妙高市大字上百々1680',
  'niigata', 'myoko',
  36.988, 138.248,
  'えちごトキめき鉄道 新井駅',
  20,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '妙高市',
  3.6, 10
);

-- 37. 五泉市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '五泉市斎場',
  'gosen-shi-saijo',
  'public_crematorium',
  '五泉市が運営する公営火葬場。五泉市の豊かな自然に囲まれた静かな環境に位置します。五泉市民は火葬料の優遇があり、地域に根ざした施設として利用されています。',
  '新潟県五泉市論瀬6270',
  'niigata', 'gosen',
  37.738, 139.182,
  'JR磐越西線 五泉駅',
  20,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '五泉市',
  3.5, 8
);

-- 38. 阿賀野市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '阿賀野市斎場',
  'agano-shi-saijo',
  'public_crematorium',
  '阿賀野市が運営する公営火葬場。白鳥の飛来地として知られる瓢湖にほど近い静かな環境に位置しています。阿賀野市民は火葬料の優遇措置があります。',
  '新潟県阿賀野市山崎77',
  'niigata', 'agano',
  37.831, 139.226,
  'JR羽越本線 水原駅',
  15,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '阿賀野市',
  3.5, 8
);

-- 39. 佐渡市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '佐渡市斎場',
  'sado-shi-saijo',
  'public_crematorium',
  '佐渡市が運営する公営斎場。佐渡島内で利用される主要な火葬施設です。島ならではの温かいコミュニティの中で、故人を穏やかにお見送りできます。佐渡市民は火葬料の優遇があります。',
  '新潟県佐渡市中興乙2600',
  'niigata', 'sado',
  38.018, 138.38,
  '佐渡汽船 両津港',
  30,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '佐渡市',
  3.6, 10
);

-- 40. セレモニーホール佐渡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール佐渡',
  'ceremony-hall-sado',
  'private_hall',
  '佐渡島内にある民間葬儀会館。佐渡汽船両津港から車で約15分のアクセス。島内では数少ない本格的な葬儀会館として、家族葬から一般葬まで幅広く対応しています。',
  '新潟県佐渡市河原田本町394',
  'niigata', 'sado',
  38.01, 138.325,
  '佐渡汽船 両津港',
  35,
  60, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー'],
  '佐渡セレモニー株式会社',
  3.9, 15
);

