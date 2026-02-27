-- =============================================
-- 兵庫県 斎場データ: 150件
-- 生成日: 2026-02-27
-- =============================================


INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール明石',
  'hyogo-bellco-akashi',
  'private_hall',
  'JR明石駅から徒歩8分のベルコ直営会館。明石城近くの好立地で、大小2つの式場を完備。明石海峡を望む落ち着いた環境で、丁寧なお見送りを提供しています。',
  '兵庫県明石市本町1-2-30',
  'hyogo', 'akashi',
  34.65, 134.993,
  'JR神戸線 明石駅',
  8,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.2, 72
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 明石会館',
  'hyogo-koekisha-akashi',
  'private_hall',
  '明石市中心部の公益社直営会館。山陽明石駅から徒歩6分の好立地。1日1組貸切で安心のプライベート空間。公益社ならではの手厚いサポート体制が自慢です。',
  '兵庫県明石市樽屋町8-15',
  'hyogo', 'akashi',
  34.649, 134.99,
  '山陽電鉄 山陽明石駅',
  6,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '明朗会計'],
  '株式会社公益社',
  4.4, 62
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 明石ホール',
  'hyogo-familiu-akashi',
  'private_hall',
  '明石市内のファミーユ家族葬専用ホール。少人数のお葬式に最適化された温かみのある空間。明確な料金設定で安心してご利用いただけます。',
  '兵庫県明石市大明石町1-3-5',
  'hyogo', 'akashi',
  34.651, 134.996,
  'JR神戸線 明石駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '駅近', '明朗会計'],
  '家族葬のファミーユ',
  4.2, 40
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 明石ホール',
  'hyogo-chiisana-akashi',
  'private_hall',
  '明石市で小さなお葬式が提携する葬儀式場。業界最安水準の火葬式プランから家族葬プランまで、シンプルな料金設定が魅力。24時間対応でいつでもご相談可能です。',
  '兵庫県明石市魚住町中尾702',
  'hyogo', 'akashi',
  34.664, 134.946,
  'JR神戸線 魚住駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  3.9, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '明石二見メモリアルホール',
  'hyogo-akashi-futami-memorial',
  'private_hall',
  '明石市二見町に位置する葬儀会館。明石市西部エリアの家族葬ニーズに応える地域密着型ホール。駐車場を完備し、車でのアクセスに便利です。',
  '兵庫県明石市二見町西二見駅前2-1',
  'hyogo', 'akashi',
  34.672, 134.926,
  '山陽電鉄 西二見駅',
  5,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', '地域密着', '駐車場完備'],
  '明石メモリアルホール',
  4.0, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '明石大久保メモリアルホール',
  'hyogo-akashi-okubo-memorial',
  'private_hall',
  'JR大久保駅近くの葬儀会館。明石市東部エリアの方々に利用されている中規模会館。充実した設備と地域に密着したサービスが特徴です。',
  '兵庫県明石市大久保町大窪1880',
  'hyogo', 'akashi',
  34.665, 134.958,
  'JR神戸線 大久保駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '地域密着', '駐車場完備'],
  '明石メモリアルホール',
  4.0, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '明石市営斎場',
  'hyogo-akashi-shiritsu-saijo',
  'public_crematorium',
  '明石市が運営する公営火葬場。明石市民は低料金で利用可能です。市内中心部からのアクセスも良好で、年間を通じて多くの市民に利用されています。',
  '兵庫県明石市大久保町松陰4-2',
  'hyogo', 'akashi',
  34.667, 134.952,
  'JR神戸線 大久保駅',
  15,
  40, 1, true, 60,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]'::jsonb,
  ARRAY['火葬場', '公営斎場', '明石市民割引', '駐車場完備'],
  '明石市',
  3.6, 65
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西明石セレモニーホール',
  'hyogo-nishi-akashi-ceremony',
  'private_hall',
  'JR西明石駅から徒歩10分に位置する葬儀ホール。明石市西部と神戸市西区の方に便利な立地。新幹線停車駅のため、遠方からの参列者にも好アクセスです。',
  '兵庫県明石市小久保5-1-3',
  'hyogo', 'akashi',
  34.66, 134.975,
  'JR神戸線 西明石駅',
  10,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['新幹線駅近', '家族葬対応', '遠方からも便利', 'バリアフリー'],
  '西明石セレモニーホール',
  4.1, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '赤穂セレモニーホール',
  'hyogo-ako-ceremony',
  'private_hall',
  '忠臣蔵の町・赤穂市に位置する葬儀ホール。JR播州赤穂駅から徒歩12分。赤穂の歴史ある街並みの中で、地域に根差したサービスを提供しています。',
  '兵庫県赤穂市加里屋中洲3-55',
  'hyogo', 'ako',
  34.753, 134.39,
  'JR赤穂線 播州赤穂駅',
  12,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 470000}]'::jsonb,
  ARRAY['地域密着', '駐車場完備', '家族葬対応', '赤穂エリア'],
  '赤穂セレモニーホール',
  4.0, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '赤穂やすらぎ会館',
  'hyogo-ako-yasuragi',
  'private_hall',
  '赤穂市の地域密着型小規模ホール。家族葬に特化した温かいサービスが特徴で、赤穂の方々に親しまれています。',
  '兵庫県赤穂市中広907',
  'hyogo', 'ako',
  34.75, 134.387,
  'JR赤穂線 播州赤穂駅',
  8,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', '地域密着', 'リーズナブル'],
  '赤穂やすらぎ会館',
  3.9, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール塚口',
  'hyogo-ceremony-tsukaguchi',
  'private_hall',
  '阪急塚口駅から徒歩6分に位置する葬儀ホール。尼崎市北部の方々に親しまれている中規模会館で、家族葬から一般葬まで対応。落ち着いた内装と充実した設備が特徴です。',
  '兵庫県尼崎市南塚口町2-1-12',
  'hyogo', 'amagasaki',
  34.749, 135.417,
  '阪急神戸線 塚口駅',
  6,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '充実した設備'],
  'セレモニーホール互助会',
  4.1, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール尼崎',
  'hyogo-bellco-amagasaki',
  'private_hall',
  'JR尼崎駅から徒歩10分のベルコ直営大型会館。尼崎市の中心部に位置し、大小3つの式場を完備。家族葬から一般葬まで幅広く対応。交通至便で大阪方面からのアクセスも良好です。',
  '兵庫県尼崎市潮江1-3-20',
  'hyogo', 'amagasaki',
  34.733, 135.426,
  'JR神戸線 尼崎駅',
  10,
  200, 3, false, 35,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['大規模対応', '駅徒歩圏内', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.2, 85
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール武庫',
  'hyogo-bellco-muko',
  'private_hall',
  '尼崎市西部の武庫エリアに位置するベルコの葬儀会館。武庫川沿いの閑静な住宅街にあり、落ち着いた雰囲気でお別れの時間を過ごせます。家族葬向けの小ホールが人気です。',
  '兵庫県尼崎市武庫元町2-20-1',
  'hyogo', 'amagasaki',
  34.751, 135.383,
  '阪急神戸線 武庫之荘駅',
  12,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '閑静な環境', '駐車場完備', 'バリアフリー'],
  '株式会社ベルコ',
  4.0, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 尼崎会館',
  'hyogo-koekisha-amagasaki',
  'private_hall',
  '阪神尼崎駅から徒歩5分の公益社直営会館。尼崎の中心部に位置し、1日1組貸切でプライベートな葬儀が可能。関西最大手の安心感と丁寧な対応で、多くのご遺族に選ばれています。',
  '兵庫県尼崎市神田中通3-5-8',
  'hyogo', 'amagasaki',
  34.732, 135.416,
  '阪神本線 尼崎駅',
  5,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '明朗会計'],
  '株式会社公益社',
  4.4, 72
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '出屋敷やすらぎホール',
  'hyogo-deyashiki-yasuragi',
  'private_hall',
  '阪神出屋敷駅から徒歩3分の地域密着型ホール。尼崎市南部の下町エリアで長年愛されてきた会館。リーズナブルな料金設定で、家族葬を中心に対応しています。',
  '兵庫県尼崎市出屋敷町2-5-1',
  'hyogo', 'amagasaki',
  34.725, 135.422,
  '阪神本線 出屋敷駅',
  3,
  40, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['駅前立地', 'リーズナブル', '家族葬対応', '地域密着'],
  '出屋敷やすらぎホール',
  3.9, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 尼崎ホール',
  'hyogo-familiu-amagasaki',
  'private_hall',
  '尼崎市内のファミーユ家族葬専用ホール。阪急武庫之荘駅から徒歩8分。家族だけの温かいお別れに特化した小規模ホールで、明確な料金体系が安心です。',
  '兵庫県尼崎市武庫之荘1-5-10',
  'hyogo', 'amagasaki',
  34.749, 135.396,
  '阪急神戸線 武庫之荘駅',
  8,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅徒歩圏内'],
  '家族葬のファミーユ',
  4.2, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 尼崎ホール',
  'hyogo-chiisana-amagasaki',
  'private_hall',
  '尼崎市内で小さなお葬式が提携する葬儀式場。低価格プランで費用を抑えた葬儀が可能。24時間対応で急なご相談にもスムーズに対応します。',
  '兵庫県尼崎市七松町1-3-15',
  'hyogo', 'amagasaki',
  34.736, 135.41,
  'JR神戸線 立花駅',
  8,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  4.0, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '尼崎園田メモリアルホール',
  'hyogo-amagasaki-sonoda-memorial',
  'private_hall',
  '阪急園田駅から徒歩5分の葬儀会館。尼崎市東部エリアの方に便利な立地で、大阪方面からのアクセスも良好。家族葬を中心にアットホームなサービスを提供しています。',
  '兵庫県尼崎市東園田町4-1-8',
  'hyogo', 'amagasaki',
  34.755, 135.438,
  '阪急神戸線 園田駅',
  5,
  50, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', 'アットホーム', '大阪からも便利'],
  '尼崎園田メモリアル',
  4.1, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '尼崎市立弥生ケ丘斎場',
  'hyogo-amagasaki-yayoigaoka',
  'public_crematorium',
  '尼崎市が運営する公営火葬場。尼崎市民は低料金で利用可能。式場も併設しており、通夜から火葬まで同一敷地内で行えます。JR立花駅からバスで10分のアクセスです。',
  '兵庫県尼崎市弥生ケ丘町1-1',
  'hyogo', 'amagasaki',
  34.749, 135.408,
  'JR神戸線 立花駅',
  20,
  50, 2, true, 80,
  '{"売店": true, "式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 240000}]'::jsonb,
  ARRAY['火葬場併設', '公営斎場', '尼崎市民割引', '大型駐車場'],
  '尼崎市',
  3.7, 75
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '尼崎立花メモリアルホール',
  'hyogo-amagasaki-tachibana-memorial',
  'private_hall',
  'JR立花駅から徒歩5分のメモリアルホール。尼崎市西部エリアの方に便利な立地。中規模の式場で家族葬から一般葬まで対応しています。',
  '兵庫県尼崎市立花町1-3-8',
  'hyogo', 'amagasaki',
  34.74, 135.405,
  'JR神戸線 立花駅',
  5,
  70, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '駐車場完備'],
  '尼崎メモリアルグループ',
  4.1, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '法泉寺 会館',
  'hyogo-hosen-ji-kaikan',
  'temple_hall',
  '尼崎市にある浄土真宗の寺院式場。歴史ある本堂での仏式葬儀が可能で、僧侶の読経とともに厳かなお見送りができます。浄土真宗の葬儀を希望される方に最適です。',
  '兵庫県尼崎市寺町10',
  'hyogo', 'amagasaki',
  34.729, 135.413,
  '阪神本線 尼崎駅',
  10,
  60, 1, false, 10,
  '{"式場": true, "控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '浄土真宗', '歴史ある寺院'],
  '法泉寺',
  4.1, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール芦屋',
  'hyogo-bellco-ashiya',
  'private_hall',
  'JR芦屋駅から徒歩8分のベルコ直営会館。高級住宅街として知られる芦屋にふさわしい上質な空間。洗練されたデザインの式場で、格式あるお別れの場を提供しています。',
  '兵庫県芦屋市業平町5-1',
  'hyogo', 'ashiya',
  34.728, 135.304,
  'JR神戸線 芦屋駅',
  8,
  80, 2, false, 18,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['上質な空間', '駅徒歩圏内', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.4, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '芦屋メモリアルホール',
  'hyogo-ashiya-memorial',
  'private_hall',
  '芦屋市の閑静な住宅街に位置する格式ある葬儀会館。阪急芦屋川駅から徒歩10分。芦屋らしい上品な内装が特徴で、少人数の家族葬から中規模の一般葬まで対応します。',
  '兵庫県芦屋市東山町10-5',
  'hyogo', 'ashiya',
  34.737, 135.301,
  '阪急神戸線 芦屋川駅',
  10,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 400000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['格式ある会館', '家族葬対応', '上品な内装', '閑静な環境'],
  '芦屋メモリアルホール',
  4.3, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール姫路中央',
  'hyogo-ceremony-himeji-chuo',
  'private_hall',
  '姫路市の中心部に位置する互助会系の大型葬儀ホール。大小3つの式場を備え、少人数の家族葬から300名超の大規模葬まで対応可能。充実した設備とベテランスタッフの手厚いサポートが特徴です。',
  '兵庫県姫路市本町68',
  'hyogo', 'himeji',
  34.837, 134.69,
  'JR神戸線 姫路駅',
  15,
  300, 3, false, 40,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['大規模対応', '家族葬対応', '宿泊可能', '充実した設備'],
  'セレモニーホール互助会',
  4.2, 75
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール姫路',
  'hyogo-bellco-himeji',
  'private_hall',
  'JR姫路駅から徒歩10分のベルコ直営大型会館。姫路城下町エリアに位置し、大小4つの式場を完備。家族葬から社葬まで幅広い規模に対応できるフラッグシップ会館。充実した設備と経験豊富なスタッフが自慢です。',
  '兵庫県姫路市南駅前町50',
  'hyogo', 'himeji',
  34.823, 134.691,
  'JR神戸線 姫路駅',
  10,
  300, 4, false, 50,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['大規模対応', '駅徒歩圏内', '社葬対応', '宿泊可能'],
  '株式会社ベルコ',
  4.3, 105
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール姫路北',
  'hyogo-bellco-himeji-kita',
  'private_hall',
  '姫路市北部エリアをカバーするベルコの葬儀会館。姫路バイパス沿いの好アクセス立地で、駐車場も充実。中規模の式場で家族葬を中心に対応し、ベルコの安心のサポート体制を提供しています。',
  '兵庫県姫路市西今宿3-2-1',
  'hyogo', 'himeji',
  34.855, 134.67,
  'JR姫新線 播磨高岡駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['大型駐車場', '家族葬対応', 'バイパス沿い', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール広畑',
  'hyogo-bellco-hirohata',
  'private_hall',
  '姫路市広畑区に位置するベルコの葬儀会館。山陽電鉄広畑駅から徒歩7分。広畑・大津エリアの葬儀需要に対応し、家族葬向けのコンパクトな式場を完備。地域の方々に親しまれている会館です。',
  '兵庫県姫路市広畑区東新町1-20',
  'hyogo', 'himeji',
  34.791, 134.638,
  '山陽電鉄 広畑駅',
  7,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '地域密着', 'バリアフリー'],
  '株式会社ベルコ',
  4.0, 40
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール飾磨',
  'hyogo-bellco-shikama',
  'private_hall',
  '姫路市飾磨区に位置するベルコの葬儀会館。山陽電鉄飾磨駅から徒歩10分。姫路南部エリアの葬儀需要に対応する中規模会館で、家族葬から一般葬まで丁寧に対応しています。',
  '兵庫県姫路市飾磨区清水2-45',
  'hyogo', 'himeji',
  34.801, 134.664,
  '山陽電鉄 飾磨駅',
  10,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', 'バリアフリー', '姫路南部'],
  '株式会社ベルコ',
  4.1, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 姫路会館',
  'hyogo-koekisha-himeji',
  'private_hall',
  '姫路市の中心部に位置する公益社直営の葬儀会館。山陽姫路駅から徒歩8分の好立地。丁寧な対応と明朗会計で、姫路エリアでの高い評価を受けています。1日1組貸切制でプライベートなお別れが可能です。',
  '兵庫県姫路市東駅前町62',
  'hyogo', 'himeji',
  34.826, 134.695,
  '山陽電鉄 山陽姫路駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['1日1組貸切', '駅徒歩圏内', '宿泊可能', '明朗会計'],
  '株式会社公益社',
  4.4, 88
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '圓教寺 会館',
  'hyogo-engyo-ji-kaikan',
  'temple_hall',
  '書写山圓教寺の関連施設として運営される寺院式場。天台宗の名刹にふさわしい荘厳な雰囲気の中で仏式葬儀を執り行えます。歴史と伝統を重んじる方におすすめの格式ある会場です。',
  '兵庫県姫路市書写2968',
  'hyogo', 'himeji',
  34.882, 134.647,
  'JR姫新線 余部駅',
  30,
  50, 1, false, 20,
  '{"式場": true, "控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '歴史ある寺院', '格式ある会場'],
  '圓教寺',
  4.3, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路メモリアルホール白浜',
  'hyogo-himeji-memorial-shirahama',
  'private_hall',
  '姫路市白浜エリアに位置する葬儀会館。山陽電鉄白浜の宮駅から徒歩5分の好立地。中規模の式場は家族葬から一般葬まで対応し、地元に密着した丁寧なサービスを提供しています。',
  '兵庫県姫路市白浜町甲399-1',
  'hyogo', 'himeji',
  34.794, 134.719,
  '山陽電鉄 白浜の宮駅',
  5,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', '地域密着', 'バリアフリー'],
  '姫路メモリアルホール',
  4.1, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路典礼会館',
  'hyogo-himeji-tenrei',
  'private_hall',
  '姫路市の老舗葬儀社が運営する格式ある典礼会館。姫路城近くの歴史あるエリアに位置し、伝統と格式を重んじた葬儀を行えます。大小2つの式場で多様な規模の葬儀に対応。',
  '兵庫県姫路市坊主町25',
  'hyogo', 'himeji',
  34.84, 134.696,
  'JR神戸線 姫路駅',
  18,
  120, 2, false, 30,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['格式ある会館', '大規模対応', '宿泊可能', '駐車場完備'],
  '姫路典礼会館',
  4.2, 62
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路勝原セレモニーホール',
  'hyogo-himeji-katsuhara-ceremony',
  'private_hall',
  '姫路市勝原区の閑静な住宅街に位置する葬儀ホール。JR英賀保駅から徒歩12分。コンパクトながら設備の整った会館で、リーズナブルな料金設定が魅力。地元の方々の家族葬を中心に対応しています。',
  '兵庫県姫路市勝原区勝山町57',
  'hyogo', 'himeji',
  34.798, 134.625,
  'JR神戸線 英賀保駅',
  12,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['リーズナブル', '家族葬対応', '地域密着', '駐車場完備'],
  '姫路セレモニーホール',
  3.9, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路市営斎場',
  'hyogo-himeji-shiritsu-saijo',
  'public_crematorium',
  '姫路市が運営する公営火葬場。姫路市民は低料金で利用可能で、市内の葬儀で最も多く利用される火葬施設です。火葬炉を多数備え、年間を通じてスムーズな運営が行われています。広い敷地と駐車場を完備。',
  '兵庫県姫路市名古山町14-1',
  'hyogo', 'himeji',
  34.835, 134.671,
  'JR姫路駅',
  25,
  50, 2, true, 120,
  '{"売店": true, "休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]'::jsonb,
  ARRAY['火葬場', '公営斎場', '姫路市民割引', '大型駐車場'],
  '姫路市',
  3.7, 98
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路御国野メモリアルホール',
  'hyogo-himeji-mikunino-memorial',
  'private_hall',
  '姫路市東部の御国野エリアに位置する葬儀会館。国道2号線沿いの好アクセスな立地で、姫路東部から高砂方面の方にも便利。広い駐車場を完備しています。',
  '兵庫県姫路市御国野町深志野580',
  'hyogo', 'himeji',
  34.818, 134.737,
  'JR神戸線 御着駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['国道沿い', '大型駐車場', '家族葬対応', '姫路東部'],
  '姫路メモリアルホール',
  4.0, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路花北メモリアルホール',
  'hyogo-himeji-hanakita-memorial',
  'private_hall',
  '姫路市花北エリアの中規模葬儀会館。JR播但線京口駅から徒歩10分。花北地区の住宅街に位置し、落ち着いた環境でお別れの時間を過ごせます。家族葬に力を入れており、温かいサービスが好評です。',
  '兵庫県姫路市花北本町2-1-10',
  'hyogo', 'himeji',
  34.842, 134.705,
  'JR播但線 京口駅',
  10,
  60, 1, false, 18,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '閑静な環境', 'バリアフリー'],
  '姫路花北メモリアル',
  4.1, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '姫路駅前やすらぎホール',
  'hyogo-himeji-ekimae-yasuragi',
  'private_hall',
  'JR姫路駅から徒歩5分の好立地にある家族葬専用ホール。駅前の利便性と落ち着いた空間を両立。リーズナブルな料金設定で、少人数の家族葬に最適です。',
  '兵庫県姫路市南町18',
  'hyogo', 'himeji',
  34.822, 134.689,
  'JR神戸線 姫路駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 285000}]'::jsonb,
  ARRAY['駅前立地', '家族葬専門', 'リーズナブル', '少人数対応'],
  '姫路やすらぎホール',
  4.0, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 姫路北ホール',
  'hyogo-familiu-himeji-kita',
  'private_hall',
  '姫路市北部エリアのファミーユ家族葬専用ホール。播但線野里駅から徒歩8分。少人数の家族葬に特化した設計で、温かみのある空間を提供。明確な料金プランで安心してご利用いただけます。',
  '兵庫県姫路市増位本町1-5-8',
  'hyogo', 'himeji',
  34.848, 134.692,
  'JR播但線 野里駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅徒歩圏内'],
  '家族葬のファミーユ',
  4.2, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 姫路南ホール',
  'hyogo-familiu-himeji-minami',
  'private_hall',
  '姫路市南部の飾磨エリアに位置するファミーユのホール。山陽電鉄飾磨駅から徒歩6分。姫路南部エリアの家族葬ニーズに応える小規模専用ホールです。',
  '兵庫県姫路市飾磨区英賀保駅前町30',
  'hyogo', 'himeji',
  34.798, 134.658,
  '山陽電鉄 飾磨駅',
  6,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '駅近', '明朗会計'],
  '家族葬のファミーユ',
  4.1, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 姫路ホール',
  'hyogo-chiisana-himeji',
  'private_hall',
  '姫路市内で小さなお葬式が提携する葬儀式場。業界最安水準の料金プランで、費用を抑えた葬儀を実現。火葬式から家族葬まで対応し、24時間年中無休で相談を受け付けています。',
  '兵庫県姫路市西駅前町73-1',
  'hyogo', 'himeji',
  34.824, 134.687,
  'JR神戸線 姫路駅',
  7,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '駅徒歩圏内'],
  '株式会社ユニクエスト',
  4.0, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '書写メモリアルホール',
  'hyogo-shosha-memorial',
  'private_hall',
  '書写山の麓に位置する落ち着いた雰囲気の葬儀会館。自然に囲まれた静かな環境で、心安らかにお別れの時間を過ごせます。大型駐車場を完備し、車でのアクセスに便利です。',
  '兵庫県姫路市書写1050-1',
  'hyogo', 'himeji',
  34.874, 134.65,
  'JR姫新線 余部駅',
  20,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['自然豊かな環境', '大型駐車場', '宿泊可能', '家族葬対応'],
  '書写メモリアルホール',
  4.0, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '網干メモリアルホール',
  'hyogo-aboshi-memorial',
  'private_hall',
  '姫路市網干区に位置する地域密着型の葬儀会館。山陽電鉄網干駅から徒歩8分。網干・揖保郡エリアの方々に親しまれている中規模会館です。家族葬から一般葬まで幅広く対応しています。',
  '兵庫県姫路市網干区新在家259',
  'hyogo', 'himeji',
  34.787, 134.592,
  '山陽電鉄 山陽網干駅',
  8,
  70, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]'::jsonb,
  ARRAY['地域密着', '家族葬対応', '駅徒歩圏内', '駐車場完備'],
  '網干メモリアルホール',
  4.0, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール伊丹',
  'hyogo-bellco-itami',
  'private_hall',
  'JR伊丹駅から徒歩7分のベルコ直営会館。伊丹市の中心部に位置し、空港にも近い交通至便な立地。大小2つの式場で家族葬から一般葬まで対応しています。',
  '兵庫県伊丹市西台1-2-10',
  'hyogo', 'itami',
  34.785, 135.398,
  'JR福知山線 伊丹駅',
  7,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.2, 58
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '伊丹昆陽メモリアルホール',
  'hyogo-itami-konyo-memorial',
  'private_hall',
  '伊丹市西部の昆陽エリアに位置する葬儀会館。イオンモール伊丹昆陽近くの利便性の高い立地。大型駐車場を完備し、車でのアクセスに便利です。',
  '兵庫県伊丹市昆陽4-1-8',
  'hyogo', 'itami',
  34.776, 135.387,
  '阪急神戸線 武庫之荘駅',
  20,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['大型駐車場', '家族葬対応', '車アクセス良好', 'バリアフリー'],
  '伊丹メモリアルホール',
  4.0, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 伊丹会館',
  'hyogo-koekisha-itami',
  'private_hall',
  '阪急伊丹駅から徒歩5分の公益社直営会館。伊丹の中心市街地に位置し、1日1組貸切制でプライベートなお見送りが可能。丁寧なサービスが好評です。',
  '兵庫県伊丹市中央3-1-15',
  'hyogo', 'itami',
  34.783, 135.401,
  '阪急伊丹線 伊丹駅',
  5,
  50, 1, false, 12,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '家族葬対応'],
  '株式会社公益社',
  4.4, 50
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 伊丹ホール',
  'hyogo-familiu-itami',
  'private_hall',
  '伊丹市内のファミーユ家族葬専用ホール。阪急伊丹駅から徒歩10分。少人数の家族葬に最適化された空間で、温かいお見送りをサポートします。',
  '兵庫県伊丹市北本町2-5-8',
  'hyogo', 'itami',
  34.788, 135.403,
  '阪急伊丹線 伊丹駅',
  10,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', 'バリアフリー'],
  '家族葬のファミーユ',
  4.1, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール加古川北',
  'hyogo-ceremony-kakogawa-kita',
  'private_hall',
  '加古川市北部をカバーする葬儀ホール。国道2号線沿いの好アクセスな立地で、加古川北部から小野・三木方面の方にも便利。大型駐車場を完備しています。',
  '兵庫県加古川市野口町野口116',
  'hyogo', 'kakogawa',
  34.768, 134.84,
  'JR加古川線 日岡駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['大型駐車場', '家族葬対応', '国道沿い', 'バリアフリー'],
  'セレモニーホール互助会',
  4.0, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール加古川',
  'hyogo-bellco-kakogawa',
  'private_hall',
  'JR加古川駅から徒歩10分のベルコ直営会館。加古川市の中心部に位置し、家族葬から一般葬まで幅広く対応。加古川エリア最大規模の葬儀会館です。',
  '兵庫県加古川市加古川町寺家町47-6',
  'hyogo', 'kakogawa',
  34.757, 134.838,
  'JR神戸線 加古川駅',
  10,
  150, 3, false, 35,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['大規模対応', '駅徒歩圏内', '宿泊可能', '充実した設備'],
  '株式会社ベルコ',
  4.2, 65
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 加古川会館',
  'hyogo-koekisha-kakogawa',
  'private_hall',
  '加古川市で公益社が運営する葬儀会館。加古川駅から徒歩8分。1日1組貸切のプライベートな空間で、心のこもったお見送りを提供しています。',
  '兵庫県加古川市加古川町北在家2013',
  'hyogo', 'kakogawa',
  34.762, 134.841,
  'JR神戸線 加古川駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['1日1組貸切', '駅徒歩圏内', '宿泊可能', '家族葬対応'],
  '株式会社公益社',
  4.3, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '加古川別府メモリアルホール',
  'hyogo-kakogawa-befu-memorial',
  'private_hall',
  '加古川市南部の別府エリアに位置する葬儀会館。山陽電鉄別府駅から徒歩8分。地域に密着したサービスで、家族葬を中心に対応しています。',
  '兵庫県加古川市別府町別府1030',
  'hyogo', 'kakogawa',
  34.732, 134.834,
  '山陽電鉄 別府駅',
  8,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '地域密着', 'バリアフリー'],
  '加古川メモリアルホール',
  4.0, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '加古川市営斎場',
  'hyogo-kakogawa-shiritsu-saijo',
  'public_crematorium',
  '加古川市が運営する公営火葬場。加古川市民は低料金で利用できます。市の東部に位置し、緑に囲まれた静かな環境です。',
  '兵庫県加古川市上荘町国包157',
  'hyogo', 'kakogawa',
  34.76, 134.85,
  'JR加古川線 厄神駅',
  15,
  30, 1, true, 50,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['火葬場', '公営斎場', '加古川市民割引', '駐車場完備'],
  '加古川市',
  3.6, 50
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 加古川ホール',
  'hyogo-familiu-kakogawa',
  'private_hall',
  '加古川市内のファミーユ家族葬専用ホール。東加古川駅から徒歩10分。少人数のお葬式に特化した設計で、明確な料金体系が安心です。',
  '兵庫県加古川市平岡町新在家900-1',
  'hyogo', 'kakogawa',
  34.748, 134.862,
  'JR神戸線 東加古川駅',
  10,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駐車場完備'],
  '家族葬のファミーユ',
  4.1, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '加西セレモニーホール',
  'hyogo-kasai-ceremony',
  'private_hall',
  '加西市中心部の葬儀ホール。北条鉄道北条町駅から徒歩10分。播磨の田園風景に囲まれた環境で、穏やかなお別れの時間を過ごせます。',
  '兵庫県加西市北条町北条50-1',
  'hyogo', 'kasai',
  34.927, 134.84,
  '北条鉄道 北条町駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 270000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 460000}]'::jsonb,
  ARRAY['地域密着', '駐車場完備', '家族葬対応', '田園環境'],
  '加西セレモニーホール',
  4.0, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '加西やすらぎホール',
  'hyogo-kasai-yasuragi',
  'private_hall',
  '加西市の地域密着型小規模ホール。家族葬を中心に、地元の方々の葬儀ニーズに丁寧に応えています。',
  '兵庫県加西市北条町古坂1-1',
  'hyogo', 'kasai',
  34.925, 134.843,
  '北条鉄道 北条町駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', 'リーズナブル', '地域密着'],
  '加西やすらぎホール',
  3.9, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール川西',
  'hyogo-bellco-kawanishi',
  'private_hall',
  '阪急川西能勢口駅から徒歩8分のベルコ直営会館。川西市の中心部に位置し、猪名川沿いの落ち着いたエリア。家族葬から一般葬まで対応する2つの式場を完備。',
  '兵庫県川西市栄町10-5',
  'hyogo', 'kawanishi',
  34.826, 135.413,
  '阪急宝塚線 川西能勢口駅',
  8,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', 'バリアフリー', '駐車場完備'],
  '株式会社ベルコ',
  4.2, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 川西会館',
  'hyogo-koekisha-kawanishi',
  'private_hall',
  '川西市中心部の公益社直営会館。JR川西池田駅から徒歩5分。1日1組貸切制で安心のプライベート空間。川西・猪名川エリアの方々に選ばれている信頼の会館です。',
  '兵庫県川西市小花1-8-3',
  'hyogo', 'kawanishi',
  34.829, 135.417,
  'JR福知山線 川西池田駅',
  5,
  50, 1, false, 12,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '家族葬対応'],
  '株式会社公益社',
  4.4, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '川西多田メモリアルホール',
  'hyogo-kawanishi-tada-memorial',
  'private_hall',
  '川西市北部の多田エリアに位置する葬儀会館。能勢電鉄多田駅から徒歩8分。ニュータウンの方々に親しまれている地域密着型の会館です。',
  '兵庫県川西市多田桜木1-8-5',
  'hyogo', 'kawanishi',
  34.846, 135.398,
  '能勢電鉄 多田駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '地域密着', '駐車場完備'],
  '川西メモリアルホール',
  4.1, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール北須磨',
  'hyogo-ceremony-kita-suma',
  'private_hall',
  '須磨区北部の妙法寺エリアにある葬儀ホール。地下鉄妙法寺駅から徒歩10分。住宅街の中に位置し、落ち着いた環境でお別れの時間を過ごせます。ベテランスタッフの心のこもったサービスが評判です。',
  '兵庫県神戸市須磨区横尾3-5-2',
  'hyogo', 'kobe',
  34.685, 135.115,
  '神戸市営地下鉄 妙法寺駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['家族葬対応', '閑静な環境', '駐車場完備', 'バリアフリー'],
  'セレモニーホール互助会',
  4.0, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール押部谷',
  'hyogo-ceremony-oshibe-dani',
  'private_hall',
  '西区押部谷の自然に囲まれた葬儀ホール。のどかな田園風景の中で、心穏やかにお別れの時間を過ごせます。地元密着のきめ細やかなサービスが特徴で、家族葬を中心に対応しています。',
  '兵庫県神戸市西区押部谷町栄2-1',
  'hyogo', 'kobe',
  34.735, 135,
  '神戸電鉄 押部谷駅',
  8,
  40, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬対応', '自然豊かな環境', '地域密着', '駐車場完備'],
  'セレモニーホール互助会',
  4.0, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール新長田',
  'hyogo-ceremony-shin-nagata',
  'private_hall',
  'JR新長田駅前の再開発エリアに位置する近代的な葬儀ホール。駅から徒歩3分の抜群のアクセス。中規模の式場は家族葬から一般葬まで対応でき、充実した設備で快適な葬儀を提供しています。',
  '兵庫県神戸市長田区二葉町5-1-30',
  'hyogo', 'kobe',
  34.654, 135.146,
  'JR神戸線 新長田駅',
  3,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['駅前立地', '家族葬対応', 'バリアフリー', '近代的設備'],
  'セレモニーホール互助会',
  4.1, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール深江',
  'hyogo-ceremony-fukae',
  'private_hall',
  '神戸市東灘区深江に位置する互助会系の葬儀ホール。阪神深江駅から徒歩3分の駅前立地が魅力。大小2つの式場を備え、家族葬から200名規模の社葬まで幅広く対応。充実した設備とベテランスタッフの手厚いサポートが好評です。',
  '兵庫県神戸市東灘区深江本町2-5-8',
  'hyogo', 'kobe',
  34.717, 135.279,
  '阪神本線 深江駅',
  3,
  200, 2, false, 30,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['大規模対応', '駅前立地', '宿泊可能', 'バリアフリー'],
  'セレモニーホール互助会',
  4.1, 67
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール灘',
  'hyogo-ceremony-nada',
  'private_hall',
  '灘区中心部の互助会系葬儀ホール。阪急六甲駅から徒歩8分のアクセス良好な立地。中規模の式場は50名程度の家族葬に最適で、落ち着いた木目調の内装が好評です。事前相談も随時受け付けています。',
  '兵庫県神戸市灘区山田町2-1-20',
  'hyogo', 'kobe',
  34.718, 135.23,
  '阪急神戸線 六甲駅',
  8,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '事前相談可', 'バリアフリー'],
  'セレモニーホール互助会',
  4.1, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール花隈',
  'hyogo-ceremony-hanakuma',
  'private_hall',
  '神戸市中央区花隈に位置する老舗の葬儀会館。神戸高速鉄道花隈駅から徒歩2分の駅前立地。地域に密着した葬儀社として長年の信頼と実績があり、お見積もりからアフターケアまでトータルにサポートします。',
  '兵庫県神戸市中央区花隈町15-10',
  'hyogo', 'kobe',
  34.692, 135.178,
  '神戸高速鉄道 花隈駅',
  2,
  70, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['駅前立地', '地域密着', '家族葬対応', 'アフターケア充実'],
  'セレモニーホール花隈',
  4.0, 39
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール三宮',
  'hyogo-bellco-sannomiya',
  'private_hall',
  '神戸の中心地・三宮に位置するベルコのフラッグシップ会館。JR三ノ宮駅から徒歩10分。大小4つの式場を備え、少人数の家族葬から500名規模の大型葬・社葬まで対応可能。神戸を代表する格式高い葬儀会館です。',
  '兵庫県神戸市中央区琴ノ緒町3-2-1',
  'hyogo', 'kobe',
  34.696, 135.198,
  'JR神戸線 三ノ宮駅',
  10,
  500, 4, false, 40,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['大規模対応', '社葬対応', '駅徒歩圏内', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.3, 112
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール兵庫',
  'hyogo-bellco-hyogo-ku',
  'private_hall',
  '神戸市兵庫区のベルコ直営葬儀会館。JR兵庫駅から徒歩6分で下町の温かみが感じられるエリアに立地。中規模の式場で家族葬から一般葬まで対応。地元の方々に親しまれてきた信頼の会館です。',
  '兵庫県神戸市兵庫区駅南通1-3-5',
  'hyogo', 'kobe',
  34.673, 135.17,
  'JR神戸線 兵庫駅',
  6,
  80, 2, false, 18,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '地域密着', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 58
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール北神戸',
  'hyogo-bellco-kita-kobe',
  'private_hall',
  '北区鈴蘭台エリアのベルコ直営会館。神戸電鉄鈴蘭台駅から徒歩5分。北区の方々に長年親しまれてきた葬儀会館で、家族葬から一般葬まで柔軟に対応。広い駐車場を完備し、車での来場にも便利です。',
  '兵庫県神戸市北区鈴蘭台北町1-10-2',
  'hyogo', 'kobe',
  34.73, 135.122,
  '神戸電鉄 鈴蘭台駅',
  5,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '大型駐車場', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 63
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール垂水',
  'hyogo-bellco-tarumi',
  'private_hall',
  '垂水区の中心部に位置するベルコ直営の葬儀会館。JR垂水駅から徒歩8分のアクセス良好な立地。明石海峡大橋を望む垂水エリアで、落ち着いた雰囲気の式場を提供しています。家族葬向けのプランが充実。',
  '兵庫県神戸市垂水区神田町4-5-1',
  'hyogo', 'kobe',
  34.631, 135.052,
  'JR神戸線 垂水駅',
  8,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', 'バリアフリー', '海が近い'],
  '株式会社ベルコ',
  4.2, 65
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール東灘',
  'hyogo-bellco-higashinada',
  'private_hall',
  '神戸市東灘区に位置するベルコ直営の葬儀会館。阪神御影駅から徒歩8分の好立地で、少人数の家族葬から100名規模の一般葬まで対応可能。洗練された内装と充実した設備で、心温まるお別れの場を提供しています。',
  '兵庫県神戸市東灘区御影本町4-10-1',
  'hyogo', 'kobe',
  34.719, 135.253,
  '阪神本線 御影駅',
  8,
  100, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', 'バリアフリー', '安置室完備'],
  '株式会社ベルコ',
  4.2, 78
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール灘',
  'hyogo-bellco-nada',
  'private_hall',
  'JR灘駅から徒歩7分に位置するベルコ直営の葬儀会館。灘区の中心部にあり、公共交通でのアクセスが良好。家族葬向けの落ち着いた式場を完備し、少人数でも丁寧なお見送りができます。ベルコならではの安心のサポート体制。',
  '兵庫県神戸市灘区岩屋北町1-8-1',
  'hyogo', 'kobe',
  34.707, 135.226,
  'JR神戸線 灘駅',
  7,
  70, 2, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', 'バリアフリー', '24時間対応'],
  '株式会社ベルコ',
  4.2, 64
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール甲南',
  'hyogo-bellco-konan',
  'private_hall',
  'ベルコ直営の甲南エリアにある葬儀会館。JR甲南山手駅から徒歩10分。中規模の式場は家族葬から一般葬まで対応可能で、落ち着いた雰囲気の中でお見送りができます。24時間対応の相談窓口も設置。',
  '兵庫県神戸市東灘区本山南町8-3-18',
  'hyogo', 'kobe',
  34.722, 135.258,
  'JR神戸線 甲南山手駅',
  10,
  80, 2, false, 18,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['家族葬対応', '一般葬対応', '24時間対応', '駐車場完備'],
  '株式会社ベルコ',
  4.1, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール西神中央',
  'hyogo-bellco-seishin-chuo',
  'private_hall',
  '西神中央駅前に位置するベルコの大型葬儀会館。西神ニュータウンの中心部にあり、駅から徒歩5分の好アクセス。大小3つの式場を備え、家族葬から大規模な一般葬まで幅広く対応しています。',
  '兵庫県神戸市西区糀台5-2-1',
  'hyogo', 'kobe',
  34.69, 135.011,
  '神戸市営地下鉄 西神中央駅',
  5,
  150, 3, false, 40,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['駅前立地', '大規模対応', '家族葬対応', '大型駐車場'],
  '株式会社ベルコ',
  4.2, 78
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール長田',
  'hyogo-bellco-nagata',
  'private_hall',
  '長田区の中心部に位置するベルコ直営会館。高速長田駅から徒歩5分のアクセス良好な立地。下町の温かさが感じられるエリアで、地元に根ざした丁寧なサービスを提供しています。家族葬から一般葬まで対応可能です。',
  '兵庫県神戸市長田区大橋町5-3-1',
  'hyogo', 'kobe',
  34.662, 135.153,
  '神戸高速鉄道 高速長田駅',
  5,
  70, 2, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '地域密着', 'バリアフリー'],
  '株式会社ベルコ',
  4.0, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール須磨',
  'hyogo-bellco-suma',
  'private_hall',
  '須磨区の中心部に位置するベルコの葬儀会館。JR須磨駅から徒歩10分。須磨海岸のほど近くにあり、落ち着いた環境でお別れの時間を過ごせます。家族葬対応の小ホールと一般葬対応の大ホールを完備。',
  '兵庫県神戸市須磨区大田町3-5-1',
  'hyogo', 'kobe',
  34.65, 135.127,
  'JR神戸線 須磨駅',
  10,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['家族葬対応', '一般葬対応', '駅徒歩圏内', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 67
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 三宮駅前ホール',
  'hyogo-koekisha-sannomiya',
  'private_hall',
  '三宮駅前の好立地にある公益社の葬儀ホール。各線三宮駅から徒歩5分以内で、遠方からの参列者にも便利です。洗練されたモダンな内装が特徴で、家族葬から一般葬まで高品質なサービスを提供しています。',
  '兵庫県神戸市中央区御幸通6-1-20',
  'hyogo', 'kobe',
  34.693, 135.196,
  'JR神戸線 三ノ宮駅',
  5,
  80, 2, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['駅前立地', '家族葬対応', '1日1組貸切', '宿泊可能'],
  '株式会社公益社',
  4.5, 98
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 兵庫会館',
  'hyogo-koekisha-hyogo-ku',
  'private_hall',
  '兵庫区湊川エリアの公益社直営会館。神戸高速湊川駅から徒歩3分の好アクセス。ベテランスタッフの丁寧な対応が好評で、宗派を問わず様々な葬儀形式に対応。1日1組貸切でゆっくりとお別れの時間を過ごせます。',
  '兵庫県神戸市兵庫区湊川町3-5-8',
  'hyogo', 'kobe',
  34.678, 135.165,
  '神戸高速鉄道 湊川駅',
  3,
  50, 1, false, 10,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['駅近', '1日1組貸切', '宿泊可能', '宗派不問'],
  '株式会社公益社',
  4.3, 72
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 北神戸会館',
  'hyogo-koekisha-kita-kobe',
  'private_hall',
  '神戸市北区で公益社が運営する葬儀会館。谷上駅から車で5分の閑静なエリアに位置。自然に囲まれた穏やかな環境で、落ち着いたお別れの時間を過ごせます。ベテランスタッフの手厚いサポートが好評です。',
  '兵庫県神戸市北区谷上東町1-5-12',
  'hyogo', 'kobe',
  34.745, 135.156,
  '神戸電鉄・北神急行 谷上駅',
  12,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', '自然豊かな環境'],
  '株式会社公益社',
  4.3, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 垂水会館',
  'hyogo-koekisha-tarumi',
  'private_hall',
  '垂水区で公益社が運営する葬儀会館。垂水駅から徒歩6分の好立地で、地域の方々に長年信頼されています。1日1組貸切制でゆっくりとしたお別れの時間を確保。事前相談も随時受け付けています。',
  '兵庫県神戸市垂水区平磯1-2-15',
  'hyogo', 'kobe',
  34.628, 135.05,
  'JR神戸線 垂水駅',
  6,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '家族葬対応'],
  '株式会社公益社',
  4.3, 58
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 東灘会館',
  'hyogo-koekisha-higashinada',
  'private_hall',
  '関西最大手の葬儀社・公益社が運営する東灘区の葬儀会館。JR住吉駅から徒歩5分のアクセス至便な立地。1日1組貸切で、家族葬専用のアットホームな空間。経験豊富なスタッフが24時間体制でサポートいたします。',
  '兵庫県神戸市東灘区住吉宮町3-7-2',
  'hyogo', 'kobe',
  34.725, 135.264,
  'JR神戸線 住吉駅',
  5,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '1日1組貸切', '宿泊可能', '24時間対応'],
  '株式会社公益社',
  4.4, 95
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 灘会館',
  'hyogo-koekisha-nada',
  'private_hall',
  '阪急王子公園駅から徒歩5分の公益社直営会館。1日1組貸切制で、プライベートな空間でお別れの時間を過ごせます。豊富な経験を持つスタッフが事前相談から当日まで手厚くサポート。安心の明朗会計で追加費用の心配がありません。',
  '兵庫県神戸市灘区王子町1-3-15',
  'hyogo', 'kobe',
  34.712, 135.218,
  '阪急神戸線 王子公園駅',
  5,
  50, 1, false, 12,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 390000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '1日1組貸切', '宿泊可能'],
  '株式会社公益社',
  4.5, 82
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 西神会館',
  'hyogo-koekisha-seishin',
  'private_hall',
  '西区伊川谷エリアの公益社直営会館。閑静な住宅街に位置し、プライベートな空間でゆっくりとお別れの時間を過ごせます。ベテランスタッフによる丁寧な対応と、充実した設備が自慢の会館です。',
  '兵庫県神戸市西区伊川谷町潤和1-10',
  'hyogo', 'kobe',
  34.67, 135.03,
  '神戸市営地下鉄 伊川谷駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '宿泊可能', '閑静な環境', '駐車場完備'],
  '株式会社公益社',
  4.3, 62
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 須磨会館',
  'hyogo-koekisha-suma',
  'private_hall',
  '名谷駅から徒歩8分に位置する公益社の須磨エリア会館。須磨ニュータウンの住民を中心に利用されている信頼の葬儀会館。1日1組貸切制で、心のこもったお別れの場を提供しています。',
  '兵庫県神戸市須磨区中落合2-1-10',
  'hyogo', 'kobe',
  34.675, 135.11,
  '神戸市営地下鉄 名谷駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['1日1組貸切', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社公益社',
  4.4, 72
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '六甲メモリアルホール',
  'hyogo-rokko-memorial',
  'private_hall',
  '六甲山麓の静かな環境に位置する格式ある葬儀会館。大小3つの式場を備え、20名程度の家族葬から300名規模の大規模葬まで対応。広い駐車場と充実した宴会設備で、お清めの席も安心して行えます。',
  '兵庫県神戸市灘区六甲台町6-2',
  'hyogo', 'kobe',
  34.725, 135.238,
  '阪急神戸線 六甲駅',
  12,
  300, 3, false, 50,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['大規模対応', '家族葬対応', '宿泊可能', '大型駐車場'],
  '六甲メモリアルホール',
  4.0, 56
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '兵庫やすらぎホール',
  'hyogo-hyogo-ku-yasuragi',
  'private_hall',
  '兵庫区の地域密着型葬儀ホール。和田岬駅から徒歩8分に位置し、地元の方に長年愛されてきた会館です。小規模ながら清潔感のある式場で、家族葬を中心に丁寧なお見送りを提供しています。',
  '兵庫県神戸市兵庫区和田宮通6-2-15',
  'hyogo', 'kobe',
  34.666, 135.163,
  '地下鉄海岸線 和田岬駅',
  8,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]'::jsonb,
  ARRAY['家族葬対応', '地域密着', '少人数対応', 'バリアフリー'],
  '兵庫やすらぎホール',
  4.0, 33
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '北区やすらぎ典礼会館',
  'hyogo-kita-yasuragi-tenrei',
  'private_hall',
  '有馬温泉にほど近い北区の葬儀会館。緑豊かな環境に囲まれた穏やかなロケーションで、ゆっくりとお別れの時間を過ごせます。50台収容の大型駐車場を備え、車での参列にも便利な施設です。',
  '兵庫県神戸市北区有馬町1050-8',
  'hyogo', 'kobe',
  34.797, 135.247,
  '神戸電鉄 有馬温泉駅',
  10,
  80, 2, false, 50,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['大型駐車場', '宿泊可能', '自然豊かな環境', '家族葬対応'],
  '北区やすらぎ典礼会館',
  4.0, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '名谷メモリアルホール',
  'hyogo-myodani-memorial',
  'private_hall',
  '名谷駅前のメモリアルホール。須磨ニュータウンの中心部に位置し、地下鉄名谷駅から徒歩3分。大小2つの式場を備え、家族葬から中規模の一般葬まで対応。駅直結の利便性と充実した設備が魅力です。',
  '兵庫県神戸市須磨区落合1-1-5',
  'hyogo', 'kobe',
  34.677, 135.108,
  '神戸市営地下鉄 名谷駅',
  3,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "宴会場": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['駅前立地', '家族葬対応', 'バリアフリー', '充実した設備'],
  '名谷メモリアルホール',
  4.2, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '垂水やすらぎ典礼会館',
  'hyogo-tarumi-yasuragi-tenrei',
  'private_hall',
  '垂水区舞子エリアに位置する落ち着いた葬儀会館。舞子公園駅から徒歩7分。明石海峡を望む穏やかな環境で、家族のみの小さなお葬式から中規模のお葬式まで対応。きめ細やかなサービスが好評です。',
  '兵庫県神戸市垂水区舞子台6-1-8',
  'hyogo', 'kobe',
  34.634, 135.031,
  'JR神戸線 舞子駅',
  7,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['家族葬対応', '舞子エリア', '駅徒歩圏内', 'バリアフリー'],
  '垂水やすらぎ典礼',
  4.1, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '学園都市メモリアルホール',
  'hyogo-gakuentoshi-memorial',
  'private_hall',
  '神戸市営地下鉄学園都市駅近くに位置する葬儀会館。大学が集まる文教地区の落ち着いた環境で、ゆっくりとお別れの時間を過ごせます。大型駐車場完備で車での参列にも便利です。',
  '兵庫県神戸市垂水区学が丘4-1-5',
  'hyogo', 'kobe',
  34.659, 135.065,
  '神戸市営地下鉄 学園都市駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['大型駐車場', '家族葬対応', '文教地区', 'バリアフリー'],
  '学園都市メモリアル',
  4.0, 40
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 北神戸ホール',
  'hyogo-familiu-kita-kobe',
  'private_hall',
  '北区の住宅街に位置する家族葬専門のホール。岡場駅から徒歩10分。少人数の家族葬に特化した落ち着いた空間で、ご家族だけのプライベートなお別れを大切にしています。明瞭な料金設定で安心です。',
  '兵庫県神戸市北区藤原台北町2-8-3',
  'hyogo', 'kobe',
  34.794, 135.171,
  '神戸電鉄 岡場駅',
  10,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駐車場完備'],
  '家族葬のファミーユ',
  4.2, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 垂水ホール',
  'hyogo-familiu-tarumi',
  'private_hall',
  '垂水区で家族葬のファミーユが展開する専用ホール。少人数の家族葬に特化した設計で、温かみのある落ち着いた空間。明確な料金体系で追加費用を心配することなく安心してご利用いただけます。',
  '兵庫県神戸市垂水区天ノ下町1-8-3',
  'hyogo', 'kobe',
  34.629, 135.054,
  'JR神戸線 垂水駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅近'],
  '家族葬のファミーユ',
  4.2, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 東灘ホール',
  'hyogo-familiu-higashinada',
  'private_hall',
  '家族葬専門のファミーユが運営する東灘区の小規模斎場。10名〜30名程度の家族葬に最適化された設計で、温かみのある空間を実現。明確な料金体系で追加費用の心配なく安心してご利用いただけます。',
  '兵庫県神戸市東灘区本山中町3-1-15',
  'hyogo', 'kobe',
  34.727, 135.27,
  'JR神戸線 摂津本山駅',
  6,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅徒歩圏内'],
  '家族葬のファミーユ',
  4.3, 62
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 灘ホール',
  'hyogo-familiu-nada',
  'private_hall',
  '家族葬専門のファミーユが灘区に展開する小規模ホール。六甲道駅近くの利便性の高いエリアに位置し、5名〜30名程度の家族葬に特化。温かみのあるインテリアと行き届いたサービスで、多くのご遺族に選ばれています。',
  '兵庫県神戸市灘区桜口町4-5-1',
  'hyogo', 'kobe',
  34.713, 135.235,
  'JR神戸線 六甲道駅',
  4,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅近'],
  '家族葬のファミーユ',
  4.3, 47
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 神戸中央ホール',
  'hyogo-familiu-kobe-chuo',
  'private_hall',
  '元町エリアに位置するファミーユの家族葬専用ホール。JR元町駅から徒歩6分。家族だけの静かなお別れの場として設計された温かみのある空間で、丁寧なお見送りをサポートします。シンプルな料金設定で安心です。',
  '兵庫県神戸市中央区元町通3-8-5',
  'hyogo', 'kobe',
  34.69, 135.185,
  'JR神戸線 元町駅',
  6,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '駅徒歩圏内', '明朗会計'],
  '家族葬のファミーユ',
  4.2, 41
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 西神ホール',
  'hyogo-familiu-seishin',
  'private_hall',
  '西神ニュータウンエリアにあるファミーユの家族葬専用ホール。西神中央駅から徒歩12分。家族だけの小さなお別れに最適化された空間で、明確な料金体系が安心。事前相談も随時受け付けています。',
  '兵庫県神戸市西区樫野台3-5-2',
  'hyogo', 'kobe',
  34.693, 135.005,
  '神戸市営地下鉄 西神中央駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '事前相談可'],
  '家族葬のファミーユ',
  4.1, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 長田ホール',
  'hyogo-familiu-nagata',
  'private_hall',
  '長田区で家族葬のファミーユが運営する小規模専用ホール。JR新長田駅から徒歩7分の便利な立地。10名〜25名の家族葬に最適化された温かみのある空間で、シンプルかつ丁寧なお見送りを実現します。',
  '兵庫県神戸市長田区若松町3-2-8',
  'hyogo', 'kobe',
  34.656, 135.144,
  'JR神戸線 新長田駅',
  7,
  25, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '駅徒歩圏内', '明朗会計'],
  '家族葬のファミーユ',
  4.2, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 兵庫駅前ホール',
  'hyogo-chiisana-hyogo-ekimae',
  'private_hall',
  'JR兵庫駅前で小さなお葬式が提携する葬儀式場。駅前の便利な立地で、参列者にも優しいアクセス。費用を抑えたシンプルな葬儀プランが充実しており、必要最低限のサービスをリーズナブルに提供します。',
  '兵庫県神戸市兵庫区駅前通2-1-8',
  'hyogo', 'kobe',
  34.675, 135.171,
  'JR神戸線 兵庫駅',
  3,
  30, 1, false, 6,
  '{"式場": true, "安置室": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '駅前立地', '明朗会計', '少人数対応'],
  '株式会社ユニクエスト',
  3.9, 36
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 垂水ホール',
  'hyogo-chiisana-tarumi',
  'private_hall',
  '垂水区で小さなお葬式が提携する葬儀式場。業界最安水準の料金プランが魅力で、必要なサービスをコンパクトにまとめたプランを提供。24時間対応で急なご依頼にもスムーズに対応します。',
  '兵庫県神戸市垂水区陸ノ町3-2-10',
  'hyogo', 'kobe',
  34.632, 135.056,
  '山陽電鉄 山陽垂水駅',
  10,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', 'コンパクト'],
  '株式会社ユニクエスト',
  3.9, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 岡本ホール',
  'hyogo-chiisana-okamoto',
  'private_hall',
  '全国展開の小さなお葬式が提携する岡本エリアの葬儀式場。コストを抑えた明確な料金プランが特徴で、火葬式から家族葬まで幅広い選択肢を用意。阪急岡本駅徒歩圏内の便利な立地です。',
  '兵庫県神戸市東灘区岡本1-8-20',
  'hyogo', 'kobe',
  34.731, 135.262,
  '阪急神戸線 岡本駅',
  7,
  40, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '少人数対応', '駅徒歩圏内'],
  '株式会社ユニクエスト',
  4.0, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 神戸中央ホール',
  'hyogo-chiisana-kobe-chuo',
  'private_hall',
  '神戸市中央区で「小さなお葬式」が提携する葬儀式場。シンプルな火葬式から家族葬まで、全国統一の明瞭価格で安心。必要なものだけを含んだセットプランで、追加費用を最小限に抑えられます。24時間受付対応。',
  '兵庫県神戸市中央区浜辺通4-1-15',
  'hyogo', 'kobe',
  34.689, 135.2,
  'JR神戸線 三ノ宮駅',
  12,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  4.0, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 須磨ホール',
  'hyogo-chiisana-suma',
  'private_hall',
  '小さなお葬式が須磨区で提携する葬儀式場。シンプルな料金プランで必要なサービスを提供。費用を抑えつつも丁寧な葬儀を希望する方に最適です。24時間年中無休でご相談を受け付けています。',
  '兵庫県神戸市須磨区前池町3-1-12',
  'hyogo', 'kobe',
  34.653, 135.13,
  'JR神戸線 鷹取駅',
  8,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  3.9, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '東灘やすらぎ会館',
  'hyogo-higashinada-yasuragi',
  'private_hall',
  '東灘区の閑静な住宅街にたたずむ家族葬専用の小規模会館。木のぬくもりを感じる和モダンの内装が特徴で、故人との最後のお別れを穏やかな雰囲気の中で行えます。バリアフリー完備で高齢の参列者にも安心です。',
  '兵庫県神戸市東灘区魚崎南町4-2-10',
  'hyogo', 'kobe',
  34.714, 135.268,
  '阪神本線 魚崎駅',
  5,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '和モダン', 'バリアフリー'],
  '東灘やすらぎ会館',
  4.2, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '東灘御影メモリアルホール',
  'hyogo-higashinada-mikage-memorial',
  'private_hall',
  '阪急御影駅近くの閑静な住宅街に位置する家族葬向けの葬儀会館。御影の上品な街並みにふさわしい落ち着いた佇まいで、少人数のお別れに最適です。',
  '兵庫県神戸市東灘区御影2-15-8',
  'hyogo', 'kobe',
  34.726, 135.251,
  '阪急神戸線 御影駅',
  5,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 130000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '上品な環境', '少人数対応'],
  '東灘メモリアルグループ',
  4.3, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '灘区民ホール葬儀式場',
  'hyogo-nada-kumin-hall',
  'public_facility',
  '神戸市灘区の区民ホールを利用した葬儀式場。公共施設のため利用料がリーズナブルで、費用を抑えたい方に人気です。最寄り駅から徒歩圏内のアクセス良好な立地。式場は清潔感があり、シンプルながら落ち着いた空間です。',
  '兵庫県神戸市灘区稗原町2-1-10',
  'hyogo', 'kobe',
  34.71, 135.232,
  'JR神戸線 六甲道駅',
  10,
  80, 1, false, 20,
  '{"式場": true, "控室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 450000}]'::jsonb,
  ARRAY['公共施設', '低価格', '駅徒歩圏内', 'バリアフリー'],
  '神戸市',
  3.8, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '真言宗 長楽寺会館',
  'hyogo-choraku-ji-kaikan',
  'temple_hall',
  '長田区にある真言宗の寺院式場。歴史ある本堂で荘厳な仏式葬儀を執り行えます。僧侶の読経とともに、伝統的な形式で故人をお見送りしたい方におすすめ。寺院ならではの心静まる空間です。',
  '兵庫県神戸市長田区長楽町4-2-5',
  'hyogo', 'kobe',
  34.665, 135.151,
  '地下鉄西神・山手線 長田駅',
  10,
  50, 1, false, 10,
  '{"式場": true, "控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '伝統的', '荘厳な雰囲気'],
  '長楽寺',
  4.0, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '神戸ハーバーランドメモリアルホール',
  'hyogo-kobe-harborland-memorial',
  'private_hall',
  '神戸ハーバーランドエリアに位置するモダンな葬儀会館。JR神戸駅から徒歩8分の好アクセス。港町神戸にふさわしい開放的な空間で、心温まるお別れの場を提供しています。',
  '兵庫県神戸市中央区東川崎町1-3-5',
  'hyogo', 'kobe',
  34.68, 135.18,
  'JR神戸線 神戸駅',
  8,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "宴会場": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['駅徒歩圏内', 'モダン建築', '家族葬対応', 'バリアフリー'],
  '神戸メモリアルグループ',
  4.2, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '神戸ポートメモリアルホール',
  'hyogo-port-memorial',
  'private_hall',
  '神戸港を望む中央区のメモリアルホール。海を見渡せるロビーと開放的な式場が特徴。神戸らしいモダンなデザインの建物で、故人への感謝の気持ちを込めたお別れの場を提供します。大型駐車場完備で参列者の利便性も高い施設です。',
  '兵庫県神戸市中央区波止場町5-3',
  'hyogo', 'kobe',
  34.685, 135.189,
  '地下鉄海岸線 みなと元町駅',
  8,
  150, 2, false, 35,
  '{"式場": true, "安置室": true, "宴会場": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['大規模対応', '駐車場完備', 'モダン建築', 'バリアフリー'],
  '神戸ポートメモリアル',
  4.1, 65
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '神戸北野メモリアルホール',
  'hyogo-kitano-memorial',
  'private_hall',
  '北野異人館街近くに位置する上質な葬儀会館。神戸らしいおしゃれな外観と格式ある内装が特徴。少人数から中規模の葬儀に対応し、きめ細やかなサービスで故人を偲ぶ時間を大切にした葬儀を執り行えます。',
  '兵庫県神戸市中央区北野町2-10-8',
  'hyogo', 'kobe',
  34.7, 135.192,
  '各線 三宮駅',
  15,
  60, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 420000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['上質な空間', '家族葬対応', '北野エリア', 'バリアフリー'],
  '北野メモリアルホール',
  4.4, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '神戸市立西神戸斎場',
  'hyogo-kobe-nishi-kobe-saijo',
  'public_crematorium',
  '神戸市が運営する西部地区の公営火葬場。須磨区から西区エリアの葬儀で多く利用されています。神戸市民は低料金で火葬が可能。広い敷地に十分な駐車スペースを確保しており、緑に囲まれた落ち着いた環境です。',
  '兵庫県神戸市須磨区白川字片山1番',
  'hyogo', 'kobe',
  34.692, 135.105,
  '神戸市営地下鉄 名谷駅',
  20,
  40, 1, true, 80,
  '{"売店": true, "休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['火葬場', '公営斎場', '神戸市民割引', '大型駐車場'],
  '神戸市',
  3.6, 95
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '神戸市立鵯越斎場',
  'hyogo-kobe-hiyodorigoe',
  'public_crematorium',
  '神戸市が運営する公営火葬場で、北区鵯越に位置します。火葬炉12基を備え、神戸市民は低料金で利用可能。緑豊かな山間部に立地し、静かな環境でお見送りができます。神戸市内の葬儀で最も多く利用される火葬施設です。',
  '兵庫県神戸市北区山田町下谷上字中一里山14-1',
  'hyogo', 'kobe',
  34.722, 135.147,
  '神戸電鉄 鵯越駅',
  15,
  40, 1, true, 100,
  '{"売店": true, "休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['火葬場', '公営斎場', '神戸市民割引', '大型駐車場'],
  '神戸市',
  3.7, 120
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '能福寺 会館',
  'hyogo-nofukuji-kaikan',
  'temple_hall',
  '兵庫大仏で有名な能福寺に併設された寺院式場。歴史ある寺院の荘厳な雰囲気の中で仏式の葬儀を執り行えます。寺院ならではの読経と厳かな空間で、故人を丁寧に送り出します。仏式葬儀をご希望の方におすすめです。',
  '兵庫県神戸市兵庫区北逆瀬川町1-39',
  'hyogo', 'kobe',
  34.674, 135.168,
  'JR神戸線 兵庫駅',
  10,
  60, 1, false, 15,
  '{"式場": true, "控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '歴史ある寺院', '荘厳な雰囲気'],
  '能福寺',
  4.2, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '舞子メモリアルガーデン',
  'hyogo-maiko-memorial-garden',
  'private_hall',
  '明石海峡大橋を望む舞子エリアの斎場。自然豊かなガーデン風の外構が特徴で、開放的な雰囲気の中でお見送りができます。家族葬に特に力を入れており、少人数でも温かいセレモニーを提案しています。',
  '兵庫県神戸市垂水区西舞子1-10-2',
  'hyogo', 'kobe',
  34.637, 135.023,
  'JR神戸線 舞子駅',
  12,
  50, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "ガーデン": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['ガーデン風', '家族葬対応', '明石海峡ビュー', 'バリアフリー'],
  '舞子メモリアルガーデン',
  4.3, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西区ファミリーホール',
  'hyogo-nishi-ku-family-hall',
  'private_hall',
  '西区の地域密着型葬儀ホール。明石に隣接するエリアで、地元の方々に親しまれています。アットホームな雰囲気が魅力で、小規模の家族葬を得意としています。リーズナブルな料金設定も人気の理由です。',
  '兵庫県神戸市西区玉津町小山180-1',
  'hyogo', 'kobe',
  34.662, 135.003,
  'JR神戸線 明石駅',
  20,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['家族葬対応', 'リーズナブル', '地域密着', 'アットホーム'],
  '西区ファミリーホール',
  4.0, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西神戸メモリアルパーク',
  'hyogo-nishi-kobe-memorial-park',
  'private_hall',
  '西区の広大な敷地に位置する総合メモリアル施設。式場、安置室、宴会場を完備し、通夜から精進落としまで一貫して行えます。100台収容の大型駐車場があり、大人数の参列にも対応可能です。',
  '兵庫県神戸市西区神出町田井395',
  'hyogo', 'kobe',
  34.725, 134.98,
  '神戸市営地下鉄 西神中央駅',
  30,
  200, 3, false, 100,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['大規模対応', '大型駐車場', '総合施設', '宿泊可能'],
  '西神戸メモリアルパーク',
  4.0, 50
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '長田メモリアルホール',
  'hyogo-nagata-memorial',
  'private_hall',
  '長田区の地域密着型葬儀会館。長田神社近くの閑静な住宅街に位置し、地元の方々に長年親しまれています。アットホームな雰囲気で、少人数の家族葬に最適な空間を提供します。',
  '兵庫県神戸市長田区長田町1-5-10',
  'hyogo', 'kobe',
  34.668, 135.148,
  '地下鉄西神・山手線 長田駅',
  8,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬対応', '地域密着', '少人数対応', 'アットホーム'],
  '長田メモリアルホール',
  4.1, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '須磨やすらぎ斎場',
  'hyogo-suma-yasuragi-saijo',
  'private_hall',
  '須磨区板宿エリアの地域密着型斎場。山陽電鉄板宿駅から徒歩5分。小規模ながら清潔感のある式場で、リーズナブルな料金設定が魅力。地元に根差したきめ細やかなサービスが特徴です。',
  '兵庫県神戸市須磨区平田町2-3-8',
  'hyogo', 'kobe',
  34.658, 135.133,
  '山陽電鉄 板宿駅',
  5,
  40, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', 'リーズナブル', '地域密着'],
  '須磨やすらぎ斎場',
  4.0, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '須磨寺 式場',
  'hyogo-sumadera-shikijo',
  'temple_hall',
  '平敦盛ゆかりの名刹・須磨寺に併設された寺院式場。歴史と伝統に包まれた荘厳な空間で、仏式葬儀を執り行えます。須磨寺駅から徒歩5分の好アクセス。',
  '兵庫県神戸市須磨区須磨寺町4-6-8',
  'hyogo', 'kobe',
  34.649, 135.122,
  '山陽電鉄 須磨寺駅',
  5,
  60, 1, false, 15,
  '{"式場": true, "控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '歴史ある寺院', '駅近'],
  '須磨寺',
  4.2, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '三木セレモニーホール',
  'hyogo-miki-ceremony',
  'private_hall',
  '三木市中心部に位置する葬儀ホール。神戸電鉄三木駅から徒歩10分。金物の町として知られる三木市で、地域に根差したサービスを提供しています。',
  '兵庫県三木市末広1-5-10',
  'hyogo', 'miki',
  34.794, 134.993,
  '神戸電鉄 三木駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}]'::jsonb,
  ARRAY['地域密着', '家族葬対応', '駐車場完備', 'バリアフリー'],
  '三木セレモニーホール',
  4.0, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '三木緑が丘メモリアルホール',
  'hyogo-miki-midorigaoka-memorial',
  'private_hall',
  '三木市緑が丘ニュータウンに位置する葬儀会館。ニュータウン住民の家族葬ニーズに応える小規模専用ホールです。',
  '兵庫県三木市緑が丘町東3-1-5',
  'hyogo', 'miki',
  34.778, 135.012,
  '神戸電鉄 緑が丘駅',
  8,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['ニュータウン', '家族葬対応', '少人数対応', '駅徒歩圏内'],
  '三木メモリアルホール',
  4.0, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール甲子園',
  'hyogo-ceremony-koshien',
  'private_hall',
  '甲子園球場近くに位置する葬儀ホール。阪神甲子園駅から徒歩10分。中規模の式場を備え、家族葬から一般葬まで対応。甲子園エリアの方々に長年信頼されている会館です。',
  '兵庫県西宮市甲子園洲鳥町3-1',
  'hyogo', 'nishinomiya',
  34.721, 135.363,
  '阪神本線 甲子園駅',
  10,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '甲子園エリア', 'バリアフリー'],
  'セレモニーホール互助会',
  4.1, 50
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール甲東園',
  'hyogo-bellco-kotoen',
  'private_hall',
  '阪急甲東園駅から徒歩8分のベルコ直営会館。西宮市北部の閑静なエリアに位置し、家族葬向けのコンパクトな式場を完備。地域の方々のニーズに応える丁寧なサービスを提供しています。',
  '兵庫県西宮市甲東園3-1-5',
  'hyogo', 'nishinomiya',
  34.758, 135.358,
  '阪急今津線 甲東園駅',
  8,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '駅徒歩圏内', '閑静なエリア', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール西宮',
  'hyogo-bellco-nishinomiya',
  'private_hall',
  '阪急西宮北口駅から徒歩8分のベルコ直営葬儀会館。西宮市の中心部に位置し、大小3つの式場を備えた大型会館。家族葬から社葬まで幅広い規模に対応。文教地区にふさわしい落ち着いた佇まいです。',
  '兵庫県西宮市北口町1-2-15',
  'hyogo', 'nishinomiya',
  34.744, 135.36,
  '阪急神戸線 西宮北口駅',
  8,
  200, 3, false, 35,
  '{"式場": true, "安置室": true, "宴会場": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['駅徒歩圏内', '大規模対応', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.3, 92
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 西宮会館',
  'hyogo-koekisha-nishinomiya',
  'private_hall',
  '西宮市で公益社が運営する葬儀会館。JR西宮駅から徒歩6分の好立地。1日1組貸切制でプライベートなお別れの場を提供。経験豊富なスタッフの丁寧な対応が高い評価を得ています。',
  '兵庫県西宮市池田町5-10',
  'hyogo', 'nishinomiya',
  34.737, 135.341,
  'JR神戸線 西宮駅',
  6,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 390000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '家族葬対応'],
  '株式会社公益社',
  4.5, 78
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '名塩やすらぎホール',
  'hyogo-najio-yasuragi',
  'private_hall',
  '西宮市北部の名塩エリアに位置する葬儀ホール。JR西宮名塩駅から徒歩10分。山間部の自然豊かな環境で、静かにお別れの時間を過ごせます。北部エリアの方々の葬儀ニーズに応えています。',
  '兵庫県西宮市名塩新町8-1',
  'hyogo', 'nishinomiya',
  34.808, 135.313,
  'JR福知山線 西宮名塩駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['家族葬対応', '自然豊かな環境', '駅徒歩圏内', '駐車場完備'],
  '名塩やすらぎホール',
  4.0, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '夙川メモリアルホール',
  'hyogo-shukugawa-memorial',
  'private_hall',
  '阪急夙川駅近くの閑静な住宅街に位置する上質な葬儀会館。桜並木で有名な夙川沿いの落ち着いた環境で、格式あるお別れの場を提供。西宮の高級住宅街にふさわしい洗練されたサービスが特徴です。',
  '兵庫県西宮市相生町3-15',
  'hyogo', 'nishinomiya',
  34.742, 135.329,
  '阪急神戸線 夙川駅',
  5,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 400000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['上質な空間', '駅近', '宿泊可能', '閑静な住宅街'],
  '夙川メモリアルホール',
  4.4, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 西宮ホール',
  'hyogo-familiu-nishinomiya',
  'private_hall',
  '西宮市内でファミーユが展開する家族葬専用ホール。阪神西宮駅から徒歩7分。少人数のお葬式に最適化された温かみのある空間で、明確な料金設定が安心です。',
  '兵庫県西宮市戎町5-8',
  'hyogo', 'nishinomiya',
  34.734, 135.338,
  '阪神本線 西宮駅',
  7,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅徒歩圏内'],
  '家族葬のファミーユ',
  4.2, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 西宮ホール',
  'hyogo-chiisana-nishinomiya',
  'private_hall',
  '西宮市で小さなお葬式が提携する葬儀式場。明瞭価格のセットプランで安心。火葬式から家族葬まで対応し、必要最低限のサービスをリーズナブルに提供しています。',
  '兵庫県西宮市津門大塚町3-1',
  'hyogo', 'nishinomiya',
  34.738, 135.352,
  '阪急神戸線 今津駅',
  8,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  4.0, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西宮北口メモリアルホール',
  'hyogo-nishinomiya-kitaguchi-memorial',
  'private_hall',
  '阪急西宮北口駅から徒歩5分のメモリアルホール。西宮北口エリアの利便性の高い立地で、中規模の一般葬にも対応可能。充実した設備が自慢です。',
  '兵庫県西宮市高松町5-8',
  'hyogo', 'nishinomiya',
  34.746, 135.359,
  '阪急神戸線 西宮北口駅',
  5,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "宴会場": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['駅近', '家族葬対応', '充実した設備', 'バリアフリー'],
  '西宮メモリアルグループ',
  4.2, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西宮市立満池谷斎場',
  'hyogo-nishinomiya-mitsuchidani',
  'public_crematorium',
  '西宮市が運営する公営斎場。火葬場と式場を併設し、通夜から火葬まで同一敷地で行えます。西宮市民は低料金で利用可能。阪急夙川駅からバスで10分のアクセスです。',
  '兵庫県西宮市奥畑5-122',
  'hyogo', 'nishinomiya',
  34.753, 135.333,
  '阪急神戸線 夙川駅',
  20,
  60, 2, true, 80,
  '{"売店": true, "式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}]'::jsonb,
  ARRAY['火葬場併設', '公営斎場', '西宮市民割引', '大型駐車場'],
  '西宮市',
  3.8, 85
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '西宮浜メモリアルホール',
  'hyogo-nishinomiya-hama-memorial',
  'private_hall',
  '西宮浜エリアに位置する海沿いの葬儀会館。阪神西宮駅からバスで10分。海を感じる開放的なロケーションで、穏やかなお別れの場を提供。大型駐車場完備で車でのアクセスに便利です。',
  '兵庫県西宮市西宮浜3-1-5',
  'hyogo', 'nishinomiya',
  34.717, 135.335,
  '阪神本線 西宮駅',
  25,
  80, 2, false, 40,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['大型駐車場', '家族葬対応', '海沿い', 'バリアフリー'],
  '西宮浜メモリアル',
  4.0, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '鳴尾メモリアルホール',
  'hyogo-naruo-memorial',
  'private_hall',
  '西宮市鳴尾エリアの地域密着型葬儀会館。阪神鳴尾駅から徒歩8分。鳴尾・武庫川エリアの方々に親しまれている中規模会館で、家族葬を中心に温かいサービスを提供しています。',
  '兵庫県西宮市鳴尾町3-5-20',
  'hyogo', 'nishinomiya',
  34.724, 135.378,
  '阪神本線 鳴尾駅',
  8,
  50, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['地域密着', '家族葬対応', '駅徒歩圏内', 'バリアフリー'],
  '鳴尾メモリアルホール',
  4.0, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小野セレモニーホール',
  'hyogo-ono-ceremony',
  'private_hall',
  '小野市中心部に位置する葬儀ホール。神戸電鉄小野駅から徒歩10分。そろばんの町として知られる小野市で、地元に密着したサービスを提供しています。',
  '兵庫県小野市本町1-10-5',
  'hyogo', 'ono-hyogo',
  34.853, 134.93,
  '神戸電鉄 小野駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 470000}]'::jsonb,
  ARRAY['地域密着', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '小野セレモニーホール',
  4.0, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小野やすらぎ斎場',
  'hyogo-ono-yasuragi',
  'private_hall',
  '小野市の閑静なエリアに位置する小規模葬儀ホール。家族葬に特化したサービスで、少人数でも温かいお見送りができます。リーズナブルな料金設定が魅力です。',
  '兵庫県小野市王子町806',
  'hyogo', 'ono-hyogo',
  34.856, 134.937,
  '神戸電鉄 小野駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}]'::jsonb,
  ARRAY['家族葬対応', 'リーズナブル', '少人数対応', '地域密着'],
  '小野やすらぎ斎場',
  3.9, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール三田',
  'hyogo-bellco-sanda',
  'private_hall',
  'JR三田駅から徒歩10分のベルコ直営会館。三田市の中心部に位置し、ニュータウンの方々を中心に利用されています。大型駐車場完備で車でのアクセスも便利です。',
  '兵庫県三田市中央町5-3',
  'hyogo', 'sanda',
  34.889, 135.227,
  'JR福知山線 三田駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['駅徒歩圏内', '大型駐車場', '宿泊可能', '家族葬対応'],
  '株式会社ベルコ',
  4.1, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '三田ウッディタウンメモリアルホール',
  'hyogo-sanda-woody-memorial',
  'private_hall',
  '三田市ウッディタウンの住宅街に位置する葬儀会館。ニュータウンの方々のニーズに応える家族葬中心の会館。自然に囲まれた穏やかな環境でお別れの時間を過ごせます。',
  '兵庫県三田市けやき台1-5-1',
  'hyogo', 'sanda',
  34.909, 135.218,
  'JR福知山線 新三田駅',
  15,
  50, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['ニュータウン', '家族葬対応', '駐車場完備', '自然豊かな環境'],
  '三田メモリアルホール',
  4.0, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '洲本セレモニーホール',
  'hyogo-sumoto-ceremony',
  'private_hall',
  '淡路島の中心都市・洲本市にある葬儀ホール。洲本城下の中心部に位置し、淡路島全域からアクセス可能。島内最大規模の葬儀施設です。',
  '兵庫県洲本市栄町2-3-20',
  'hyogo', 'sumoto',
  34.34, 134.896,
  '洲本高速バスセンター',
  10,
  100, 2, false, 30,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}]'::jsonb,
  ARRAY['淡路島', '大型駐車場', '宿泊可能', '家族葬対応'],
  '洲本セレモニーホール',
  4.0, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '淡路やすらぎ会館',
  'hyogo-sumoto-awaji-yasuragi',
  'private_hall',
  '洲本市で家族葬を中心に対応する地域密着型の会館。淡路島の温かいコミュニティの中で、心のこもったお見送りをサポートしています。',
  '兵庫県洲本市本町4-5-10',
  'hyogo', 'sumoto',
  34.342, 134.899,
  '洲本高速バスセンター',
  8,
  40, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]'::jsonb,
  ARRAY['淡路島', '家族葬対応', '地域密着', '少人数対応'],
  '淡路やすらぎ会館',
  4.0, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール宝塚',
  'hyogo-bellco-takarazuka',
  'private_hall',
  '阪急宝塚駅から徒歩8分のベルコ直営会館。宝塚大劇場近くの華やかなエリアに位置しながら、落ち着いた雰囲気の式場を完備。家族葬から一般葬まで対応可能です。',
  '兵庫県宝塚市栄町1-5-10',
  'hyogo', 'takarazuka',
  34.801, 135.34,
  '阪急宝塚線 宝塚駅',
  8,
  100, 2, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.2, 65
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '公益社 宝塚会館',
  'hyogo-koekisha-takarazuka',
  'private_hall',
  '宝塚市中心部の公益社直営会館。逆瀬川駅から徒歩6分。閑静な住宅街に位置し、1日1組貸切制でプライベートなお別れの場を提供。上質なサービスが好評です。',
  '兵庫県宝塚市逆瀬川1-8-5',
  'hyogo', 'takarazuka',
  34.796, 135.35,
  '阪急今津線 逆瀬川駅',
  6,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 390000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['1日1組貸切', '駅近', '宿泊可能', '上質なサービス'],
  '株式会社公益社',
  4.5, 58
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '宝塚中山メモリアルホール',
  'hyogo-takarazuka-nakayama-memorial',
  'private_hall',
  'JR中山寺駅から徒歩8分の葬儀会館。中山寺への参道近くに位置し、落ち着いた雰囲気の中でお別れの時間を過ごせます。家族葬に力を入れた温かいサービスが特徴です。',
  '兵庫県宝塚市中山寺2-1-10',
  'hyogo', 'takarazuka',
  34.815, 135.368,
  'JR福知山線 中山寺駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '落ち着いた環境', 'バリアフリー'],
  '宝塚メモリアルホール',
  4.1, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '宝塚山本メモリアルホール',
  'hyogo-takarazuka-yamamoto-memorial',
  'private_hall',
  '宝塚市東部の山本エリアに位置する葬儀会館。阪急山本駅から徒歩8分。植木の町として知られる山本の落ち着いた環境で、家族葬を中心に丁寧なサービスを提供しています。',
  '兵庫県宝塚市山本中2-3-10',
  'hyogo', 'takarazuka',
  34.817, 135.378,
  '阪急宝塚線 山本駅',
  8,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '落ち着いた環境', 'バリアフリー'],
  '宝塚メモリアルホール',
  4.1, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ 宝塚ホール',
  'hyogo-familiu-takarazuka',
  'private_hall',
  '宝塚市内のファミーユ家族葬専用ホール。売布神社駅から徒歩7分。少人数の家族葬に特化した温かみのある空間です。',
  '兵庫県宝塚市売布2-5-1',
  'hyogo', 'takarazuka',
  34.808, 135.355,
  '阪急宝塚線 売布神社駅',
  7,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬専門', '少人数対応', '明朗会計', '駅徒歩圏内'],
  '家族葬のファミーユ',
  4.2, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 宝塚ホール',
  'hyogo-chiisana-takarazuka',
  'private_hall',
  '宝塚市で小さなお葬式が提携する葬儀式場。低価格のセットプランで安心の明朗会計。必要なサービスをコンパクトにまとめた効率的な葬儀を提供します。',
  '兵庫県宝塚市中筋山手3-1-5',
  'hyogo', 'takarazuka',
  34.812, 135.362,
  'JR福知山線 中山寺駅',
  10,
  30, 1, false, 8,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 289000}]'::jsonb,
  ARRAY['低価格', '明朗会計', '24時間対応', '少人数対応'],
  '株式会社ユニクエスト',
  4.0, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール高砂',
  'hyogo-bellco-takasago',
  'private_hall',
  'JR宝殿駅から徒歩8分のベルコ直営会館。高砂市の中心部に位置し、家族葬から一般葬まで対応。播磨南部エリアの方々に信頼されている会館です。',
  '兵庫県高砂市米田町米田210',
  'hyogo', 'takasago',
  34.761, 134.803,
  'JR神戸線 宝殿駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社ベルコ',
  4.1, 42
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '高砂メモリアルホール',
  'hyogo-takasago-memorial',
  'private_hall',
  '高砂市中心部の地域密着型葬儀会館。山陽電鉄高砂駅から徒歩8分。高砂の謡で知られる歴史ある町で、心温まるお見送りを提供しています。',
  '兵庫県高砂市高砂町東宮町1-50',
  'hyogo', 'takasago',
  34.748, 134.793,
  '山陽電鉄 高砂駅',
  8,
  60, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}]'::jsonb,
  ARRAY['地域密着', '駅徒歩圏内', '家族葬対応', 'バリアフリー'],
  '高砂メモリアルホール',
  4.0, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '高砂やすらぎホール',
  'hyogo-takasago-yasuragi',
  'private_hall',
  '高砂市の家族葬専用小規模ホール。リーズナブルな価格で少人数のお別れに対応。地域の方々に親しまれている温かい雰囲気の会館です。',
  '兵庫県高砂市荒井町扇町7-1',
  'hyogo', 'takasago',
  34.744, 134.802,
  '山陽電鉄 荒井駅',
  5,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', 'リーズナブル', '駅近'],
  '高砂やすらぎホール',
  3.9, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '篠山セレモニーホール',
  'hyogo-tambasasayama-ceremony',
  'private_hall',
  '丹波篠山市中心部の葬儀ホール。篠山口駅から車で10分。丹波篠山の歴史ある城下町に位置し、地域の伝統と風習を大切にした葬儀を行えます。',
  '兵庫県丹波篠山市北新町41',
  'hyogo', 'tambasasayama',
  35.075, 135.219,
  'JR福知山線 篠山口駅',
  30,
  60, 1, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 470000}]'::jsonb,
  ARRAY['城下町', '地域密着', '駐車場完備', '家族葬対応'],
  '篠山セレモニーホール',
  4.0, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '篠山やすらぎ会館',
  'hyogo-tambasasayama-yasuragi',
  'private_hall',
  '丹波篠山市の自然に囲まれた地域密着型の葬儀会館。家族葬に力を入れており、丹波地方らしいアットホームな雰囲気でのお見送りをサポートします。',
  '兵庫県丹波篠山市黒岡191-1',
  'hyogo', 'tambasasayama',
  35.071, 135.223,
  'JR福知山線 篠山口駅',
  25,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 270000}]'::jsonb,
  ARRAY['家族葬対応', '自然豊かな環境', 'アットホーム', '地域密着'],
  '篠山やすらぎ会館',
  4.0, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'たつのセレモニーホール',
  'hyogo-tatsuno-ceremony',
  'private_hall',
  'たつの市中心部に位置する葬儀ホール。JR本竜野駅から徒歩10分。播磨の小京都と呼ばれる龍野の風情ある環境で、温かいお見送りを提供しています。',
  '兵庫県たつの市龍野町富永200',
  'hyogo', 'tatsuno',
  34.859, 134.551,
  'JR姫新線 本竜野駅',
  10,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}]'::jsonb,
  ARRAY['地域密着', '大型駐車場', '家族葬対応', '播磨エリア'],
  'たつのセレモニーホール',
  4.0, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '新宮メモリアルホール',
  'hyogo-tatsuno-shingu-memorial',
  'private_hall',
  'たつの市新宮町に位置する葬儀会館。播磨新宮駅から徒歩8分。たつの市北部エリアの方々の葬儀ニーズに対応しています。',
  '兵庫県たつの市新宮町新宮410',
  'hyogo', 'tatsuno',
  34.911, 134.528,
  'JR姫新線 播磨新宮駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 470000}]'::jsonb,
  ARRAY['駅徒歩圏内', '家族葬対応', '地域密着', 'バリアフリー'],
  '新宮メモリアルホール',
  3.9, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ベルコシティホール豊岡',
  'hyogo-bellco-toyooka',
  'private_hall',
  'JR豊岡駅から徒歩10分のベルコ直営会館。但馬地方の中心都市・豊岡に位置し、但馬エリアの葬儀需要に広く対応。大小2つの式場で家族葬から大規模葬まで対応可能です。',
  '兵庫県豊岡市千代田町12-30',
  'hyogo', 'toyooka',
  35.541, 134.82,
  'JR山陰本線 豊岡駅',
  10,
  100, 2, false, 30,
  '{"式場": true, "安置室": true, "宿泊可": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['但馬エリア', '大型駐車場', '宿泊可能', '家族葬対応'],
  '株式会社ベルコ',
  4.1, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '豊岡セレモニーホール',
  'hyogo-toyooka-ceremony',
  'private_hall',
  '豊岡市中心部の地域密着型葬儀ホール。但馬の風土に合った温かみのあるサービスが特徴。地元の方々に長年信頼されている会館です。',
  '兵庫県豊岡市泉町6-15',
  'hyogo', 'toyooka',
  35.538, 134.824,
  'JR山陰本線 豊岡駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "お清め所": true, "親族控室": true, "バリアフリー": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 490000}]'::jsonb,
  ARRAY['地域密着', '家族葬対応', '駅徒歩圏内', 'バリアフリー'],
  '豊岡セレモニーホール',
  4.0, 30
);