-- =============================================
-- 斎場データ: 秋田県 60件
-- 秋田市20件, 横手市6件, 大仙市6件, 由利本荘市5件,
-- 大館市4件, 能代市4件, 湯沢市4件, 鹿角市2件,
-- 潟上市3件, 北秋田市2件, にかほ市2件, 仙北市2件
-- =============================================

-- 1. セレモニーホールあすか秋田中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか秋田中央',
  'akita-city-asuka-chuo',
  'private_hall',
  '秋田市中心部に位置するセレモニーホールあすかの大型斎場。秋田駅からアクセスしやすく、家族葬から大規模な一般葬まで幅広く対応。秋田県内最大級の施設です。',
  '秋田県秋田市中通4-15-1',
  'akita', 'akita-city',
  39.717, 140.108,
  'JR奥羽本線 秋田駅',
  8,
  150, 3, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '大規模対応'],
  'セレモニーホールあすか',
  4.2, 52
);

-- 2. まごころホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール秋田',
  'akita-city-magokoro',
  'private_hall',
  '秋田市東部に位置するまごころホール。名前の通り、心のこもったサービスで地域の方々から厚い信頼を寄せられている葬儀会館です。',
  '秋田県秋田市東通仲町4-1',
  'akita', 'akita-city',
  39.72, 140.115,
  'JR奥羽本線 秋田駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'まごころホール',
  4.1, 38
);

-- 3. 博善社秋田斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社秋田斎場',
  'akita-city-hakuzensha',
  'private_hall',
  '秋田市で長い歴史を持つ博善社の斎場。伝統と格式を大切にしながら、現代的なサービスも提供。経験豊富なスタッフが葬儀全般をサポートします。',
  '秋田県秋田市山王3-1-15',
  'akita', 'akita-city',
  39.71, 140.095,
  'JR奥羽本線 秋田駅',
  15,
  100, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応', 'バリアフリー'],
  '博善社',
  4.0, 42
);

-- 4. メモリアルホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール秋田',
  'akita-city-memorial',
  'private_hall',
  '秋田市広面エリアのメモリアルホール。清潔感のある近代的な施設で、心を込めたお葬式をサポートしています。',
  '秋田県秋田市広面字鍋沼37',
  'akita', 'akita-city',
  39.725, 140.125,
  'JR奥羽本線 秋田駅',
  18,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応'],
  'メモリアルホール',
  4.0, 28
);

-- 5. JA葬祭秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭秋田',
  'akita-city-ja-sousai',
  'private_hall',
  'JA秋田が運営する葬祭ホール。組合員割引があり、秋田市の農業地域を中心に地域に根差したサービスを提供しています。',
  '秋田県秋田市御所野地蔵田3-1-1',
  'akita', 'akita-city',
  39.685, 140.13,
  'JR奥羽本線 四ツ小屋駅',
  10,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 295000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場', '低価格'],
  'JA秋田葬祭',
  3.9, 30
);

-- 6. 秋田市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '秋田市斎場',
  'akita-city-shiei-saijo',
  'public_crematorium',
  '秋田市が運営する公営の火葬場・斎場。秋田市民に広く利用されている施設で、市民料金が適用されます。火葬から告別式まで一か所で行えます。',
  '秋田県秋田市河辺戸島字三内168',
  'akita', 'akita-city',
  39.672, 140.095,
  'JR奥羽本線 秋田駅',
  30,
  100, 2, true, 80,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設', '大駐車場'],
  '秋田市',
  3.7, 55
);

-- 7. セレモニーホールあすか土崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか土崎',
  'akita-city-asuka-tsuchizaki',
  'private_hall',
  '秋田市土崎港エリアのセレモニーホールあすか。土崎港まつりで知られる地域に位置し、港町の温かいコミュニティに支えられた斎場です。',
  '秋田県秋田市土崎港中央3-5-30',
  'akita', 'akita-city',
  39.755, 140.068,
  'JR奥羽本線 土崎駅',
  8,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.1, 25
);

-- 8. まごころホール泉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール泉',
  'akita-city-magokoro-izumi',
  'private_hall',
  '秋田市泉地区に位置するまごころホール。秋田市北部の住宅街にあり、少人数の家族葬に特化した温かみのある施設です。',
  '秋田県秋田市泉中央2-10-1',
  'akita', 'akita-city',
  39.74, 140.095,
  'JR奥羽本線 秋田駅',
  20,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'まごころホール',
  4.3, 18
);

-- 9. 博善社秋田南斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社秋田南斎場',
  'akita-city-hakuzensha-minami',
  'private_hall',
  '秋田市南部、御所野エリアに位置する博善社の斎場。秋田南ICからアクセスしやすく、広い駐車場を完備しています。',
  '秋田県秋田市御所野堤台1-2-3',
  'akita', 'akita-city',
  39.682, 140.125,
  'JR奥羽本線 四ツ小屋駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場', 'インター近く'],
  '博善社',
  4.0, 25
);

-- 10. こころの杜秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころの杜秋田',
  'akita-city-kokoronomori',
  'private_hall',
  '秋田市外旭川エリアに位置する家族葬専門ホール。木のぬくもりを感じる内装で、少人数での温かいお別れを大切にしています。',
  '秋田県秋田市外旭川字三後田105',
  'akita', 'akita-city',
  39.748, 140.11,
  'JR奥羽本線 秋田駅',
  25,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'こころの杜',
  4.4, 14
);

-- 11. セレモニーホールあすか新屋
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか新屋',
  'akita-city-asuka-araya',
  'private_hall',
  '秋田市新屋地区に位置するあすかの斎場。日本海に近い閑静なエリアで、落ち着いた雰囲気の中でお別れができます。',
  '秋田県秋田市新屋鳥木町1-38',
  'akita', 'akita-city',
  39.698, 140.058,
  'JR羽越本線 新屋駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 18
);

-- 12. やすらぎホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'やすらぎホール秋田',
  'akita-city-yasuragi',
  'private_hall',
  '秋田市牛島エリアに位置するやすらぎホール。秋田南部からのアクセスが良好で、広い駐車場を完備した施設です。',
  '福島県秋田市牛島東4-5-20',
  'akita', 'akita-city',
  39.7, 140.115,
  'JR羽越本線 羽後牛島駅',
  8,
  70, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 610000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'やすらぎホール',
  4.0, 20
);

-- 13. ベルホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルホール秋田',
  'akita-city-bellhall',
  'private_hall',
  '秋田市保戸野エリアに位置するベルホール。モダンな外観と落ち着いた内装で、幅広い世代に支持されている葬儀会館です。',
  '秋田県秋田市保戸野中町5-18',
  'akita', 'akita-city',
  39.722, 140.1,
  'JR奥羽本線 秋田駅',
  10,
  70, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'ベルホール',
  3.9, 22
);

-- 14. 清月記秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記秋田',
  'akita-city-seigetsuki',
  'private_hall',
  '秋田市旭北エリアに位置する清月記の斎場。東北地方で展開する清月記ならではの安定したサービスと品質が特徴です。',
  '秋田県秋田市旭北栄町3-20',
  'akita', 'akita-city',
  39.715, 140.102,
  'JR奥羽本線 秋田駅',
  12,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  4.1, 30
);

-- 15. サンライフ秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'サンライフ秋田',
  'akita-city-sunlife',
  'private_hall',
  '秋田市手形エリアに位置するサンライフの葬儀ホール。秋田大学近くに立地し、リーズナブルな価格設定が特徴です。',
  '秋田県秋田市手形字十七流8-5',
  'akita', 'akita-city',
  39.73, 140.12,
  'JR奥羽本線 秋田駅',
  15,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 285000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'サンライフ',
  3.8, 14
);

-- 16. ファミリーホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミリーホール秋田',
  'akita-city-family',
  'private_hall',
  '秋田市飯島エリアに位置する家族葬専門ホール。少人数のお見送りに特化した温かい空間で、秋田市北部の方に利用されています。',
  '秋田県秋田市飯島穀丁大通2-15',
  'akita', 'akita-city',
  39.76, 140.075,
  'JR奥羽本線 上飯島駅',
  10,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', '駅近'],
  'ファミリーホール',
  4.2, 11
);

-- 17. 龍泉寺斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '龍泉寺斎場',
  'akita-city-ryusenji',
  'temple_hall',
  '秋田市にある龍泉寺に併設された式場。伝統的な仏式葬儀を格式をもって執り行える寺院式場です。',
  '秋田県秋田市楢山字川口境2-10',
  'akita', 'akita-city',
  39.708, 140.112,
  'JR奥羽本線 秋田駅',
  18,
  50, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "本堂": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀'],
  '龍泉寺',
  3.8, 13
);

-- 18. あいネットホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'あいネットホール秋田',
  'akita-city-ainet',
  'private_hall',
  '秋田市大町エリアの互助会系葬儀ホール。会員価格でのお得なプランが充実し、事前相談にも丁寧に対応しています。',
  '秋田県秋田市大町3-2-44',
  'akita', 'akita-city',
  39.714, 140.098,
  'JR奥羽本線 秋田駅',
  10,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '事前相談可'],
  'あいネット',
  4.0, 26
);

-- 19. 虹のホール秋田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '虹のホール秋田',
  'akita-city-nijinohall',
  'private_hall',
  '秋田市茨島エリアに立地する葬儀ホール。明るく清潔感のある施設で、秋田市南部の方に利用されています。',
  '秋田県秋田市茨島4-7-20',
  'akita', 'akita-city',
  39.695, 140.09,
  'JR羽越本線 羽後牛島駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応'],
  '虹のホール',
  3.9, 17
);

-- 20. まごころホール御野場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール御野場',
  'akita-city-magokoro-onoba',
  'private_hall',
  '秋田市御野場エリアのまごころホール。住宅密集地に立地し、御野場・仁井田地区の方に利用されています。',
  '秋田県秋田市御野場新町4-1-8',
  'akita', 'akita-city',
  39.69, 140.108,
  'JR奥羽本線 四ツ小屋駅',
  15,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]'::jsonb,
  ARRAY['家族葬対応'],
  'まごころホール',
  4.0, 16
);

-- 21. セレモニーホールあすか横手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか横手',
  'akita-yokote-asuka',
  'private_hall',
  '横手市中心部に位置するセレモニーホールあすか。横手やきそばで知られる街の中核斎場で、家族葬から一般葬まで幅広く対応しています。',
  '秋田県横手市駅前町5-8',
  'akita', 'yokote',
  39.315, 140.555,
  'JR奥羽本線 横手駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.1, 28
);

-- 22. 横手市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '横手市斎場',
  'akita-yokote-shiei',
  'public_crematorium',
  '横手市が運営する公営火葬場・斎場。横手盆地を望む環境に位置し、市民料金で利用できます。',
  '秋田県横手市杉目字向畑58',
  'akita', 'yokote',
  39.305, 140.54,
  'JR奥羽本線 横手駅',
  20,
  60, 1, true, 40,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '横手市',
  3.6, 22
);

-- 23. まごころホール横手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール横手',
  'akita-yokote-magokoro',
  'private_hall',
  '横手市に位置するまごころホール。かまくらまつりで有名な横手の風土に根差した温かい葬儀サービスを提供しています。',
  '秋田県横手市前郷字一番町8-20',
  'akita', 'yokote',
  39.312, 140.548,
  'JR奥羽本線 横手駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'まごころホール',
  4.0, 20
);

-- 24. 博善社横手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社横手',
  'akita-yokote-hakuzensha',
  'private_hall',
  '横手市郊外に位置する博善社の斎場。横手IC近くでアクセスが便利。広い駐車場を完備しています。',
  '秋田県横手市婦気大堤字婦気前189',
  'akita', 'yokote',
  39.32, 140.56,
  'JR奥羽本線 横手駅',
  15,
  70, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場'],
  '博善社',
  3.9, 18
);

-- 25. JA葬祭横手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭横手',
  'akita-yokote-ja',
  'private_hall',
  'JA秋田ふるさとが運営する横手の葬祭ホール。組合員だけでなく一般の方も利用可能で、適正価格での葬儀を提供しています。',
  '秋田県横手市大雄字三村東105',
  'akita', 'yokote',
  39.298, 140.53,
  'JR奥羽本線 横手駅',
  25,
  50, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 285000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA秋田ふるさと葬祭',
  3.8, 14
);

-- 26. ファミリーホール横手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミリーホール横手',
  'akita-yokote-family',
  'private_hall',
  '横手市の家族葬専門ホール。少人数でのお見送りに特化した温かみのある施設です。',
  '秋田県横手市赤坂字仲塚25',
  'akita', 'yokote',
  39.308, 140.552,
  'JR奥羽本線 横手駅',
  12,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ファミリーホール',
  4.2, 10
);

-- 27. セレモニーホールあすか大曲
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか大曲',
  'akita-daisen-asuka',
  'private_hall',
  '大仙市大曲地区の中心部に位置するあすかの斎場。大曲の花火で知られる地域の中核斎場で、幅広い規模の葬儀に対応しています。',
  '秋田県大仙市大曲通町1-30',
  'akita', 'daisen',
  39.451, 140.48,
  'JR奥羽本線 大曲駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.1, 25
);

-- 28. 大仙市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '大仙市斎場',
  'akita-daisen-shiei',
  'public_crematorium',
  '大仙市が運営する公営火葬場。市民料金が適用され、シンプルな火葬式に対応しています。',
  '秋田県大仙市大曲字松ヶ崎15',
  'akita', 'daisen',
  39.445, 140.47,
  'JR奥羽本線 大曲駅',
  18,
  50, 1, true, 35,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '大仙市',
  3.5, 18
);

-- 29. まごころホール大曲
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール大曲',
  'akita-daisen-magokoro',
  'private_hall',
  '大仙市大曲エリアのまごころホール。花火の街ならではの温かいコミュニティに支えられた斎場です。',
  '秋田県大仙市大曲丸の内町8-15',
  'akita', 'daisen',
  39.448, 140.485,
  'JR奥羽本線 大曲駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'まごころホール',
  4.0, 18
);

-- 30. 博善社大仙
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社大仙',
  'akita-daisen-hakuzensha',
  'private_hall',
  '大仙市に位置する博善社の斎場。仙北平野の自然豊かな環境で、心安らぐお別れの場を提供しています。',
  '秋田県大仙市戸蒔字谷地添38',
  'akita', 'daisen',
  39.455, 140.492,
  'JR奥羽本線 大曲駅',
  15,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応'],
  '博善社',
  3.9, 16
);

-- 31. JA葬祭大仙
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭大仙',
  'akita-daisen-ja',
  'private_hall',
  'JA秋田おばこが運営する大仙の葬祭ホール。米どころ秋田の農業地域に根差した温かいサービスが特徴です。',
  '秋田県大仙市大曲字上大町12',
  'akita', 'daisen',
  39.452, 140.478,
  'JR奥羽本線 大曲駅',
  12,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA秋田おばこ葬祭',
  3.8, 12
);

-- 32. こころ斎苑大仙
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころ斎苑大仙',
  'akita-daisen-kokorosaien',
  'private_hall',
  '大仙市の家族葬専門ホール。少人数でのお見送りに特化した穏やかな空間です。',
  '秋田県大仙市大曲福住町5-20',
  'akita', 'daisen',
  39.447, 140.475,
  'JR奥羽本線 大曲駅',
  10,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', '駅近'],
  'こころ斎苑',
  4.2, 10
);

-- 33. セレモニーホールあすか本荘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか本荘',
  'akita-yurihonjo-asuka',
  'private_hall',
  '由利本荘市中心部に位置するあすかの斎場。鳥海山を望む自然豊かな地域で、心温まるお葬式をサポートしています。',
  '秋田県由利本荘市石脇字田中138',
  'akita', 'yurihonjo',
  39.385, 140.048,
  'JR羽越本線 羽後本荘駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 22
);

-- 34. 由利本荘市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '由利本荘市斎場',
  'akita-yurihonjo-shiei',
  'public_crematorium',
  '由利本荘市が運営する公営火葬場。市民料金で利用でき、地域の方々の葬送を支えています。',
  '秋田県由利本荘市薬師堂字堀回75',
  'akita', 'yurihonjo',
  39.378, 140.038,
  'JR羽越本線 羽後本荘駅',
  20,
  50, 1, true, 30,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '由利本荘市',
  3.5, 15
);

-- 35. まごころホール本荘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール本荘',
  'akita-yurihonjo-magokoro',
  'private_hall',
  '由利本荘市のまごころホール。子吉川沿いの落ち着いた環境で、温かいサービスを提供しています。',
  '秋田県由利本荘市瓦谷地30',
  'akita', 'yurihonjo',
  39.388, 140.052,
  'JR羽越本線 羽後本荘駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応'],
  'まごころホール',
  4.0, 16
);

-- 36. 博善社本荘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社本荘',
  'akita-yurihonjo-hakuzensha',
  'private_hall',
  '由利本荘市に位置する博善社の斎場。鳥海山麓の自然に囲まれた環境で、経験豊富なスタッフがサポートします。',
  '秋田県由利本荘市給人町17-3',
  'akita', 'yurihonjo',
  39.382, 140.045,
  'JR羽越本線 羽後本荘駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '博善社',
  3.9, 14
);

-- 37. JA葬祭本荘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭本荘',
  'akita-yurihonjo-ja',
  'private_hall',
  'JA秋田しんせいが運営する由利本荘の葬祭ホール。地域の農業従事者を中心に利用されている施設です。',
  '秋田県由利本荘市西目町沼田字新道下2-14',
  'akita', 'yurihonjo',
  39.375, 140.03,
  'JR羽越本線 西目駅',
  10,
  40, 1, false, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA秋田しんせい葬祭',
  3.8, 10
);

-- 38. セレモニーホールあすか大館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか大館',
  'akita-odate-asuka',
  'private_hall',
  '大館市中心部に位置するあすかの斎場。忠犬ハチ公の故郷として知られる大館の中核斎場で、家族葬から一般葬まで対応しています。',
  '秋田県大館市御成町2-15-28',
  'akita', 'odate',
  40.27, 140.562,
  'JR奥羽本線 大館駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.1, 22
);

-- 39. 大館市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '大館市斎場',
  'akita-odate-shiei',
  'public_crematorium',
  '大館市が運営する公営火葬場。市民料金で利用でき、大館・北秋田エリアの方々の葬送を支えています。',
  '秋田県大館市字長走180',
  'akita', 'odate',
  40.26, 140.55,
  'JR奥羽本線 大館駅',
  20,
  50, 1, true, 30,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '大館市',
  3.5, 14
);

-- 40. まごころホール大館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール大館',
  'akita-odate-magokoro',
  'private_hall',
  '大館市に位置するまごころホール。大館比内地鶏で有名な地域に根差した温かいサービスが特徴です。',
  '秋田県大館市幸町5-10',
  'akita', 'odate',
  40.275, 140.565,
  'JR奥羽本線 大館駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応'],
  'まごころホール',
  4.0, 16
);

-- 41. 博善社大館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社大館',
  'akita-odate-hakuzensha',
  'private_hall',
  '大館市郊外に位置する博善社の斎場。大館能代空港方面からのアクセスも良好な施設です。',
  '秋田県大館市字大田面218',
  'akita', 'odate',
  40.265, 140.558,
  'JR奥羽本線 大館駅',
  15,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応'],
  '博善社',
  3.9, 13
);

-- 42. セレモニーホールあすか能代
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか能代',
  'akita-noshiro-asuka',
  'private_hall',
  '能代市中心部に位置するあすかの斎場。バスケの街として知られる能代の中核斎場で、家族葬から対応しています。',
  '秋田県能代市畠町5-15',
  'akita', 'noshiro',
  40.21, 140.02,
  'JR五能線 能代駅',
  8,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 610000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 20
);

-- 43. 能代市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '能代市斎場',
  'akita-noshiro-shiei',
  'public_crematorium',
  '能代市が運営する公営火葬場。白神山地に近い自然豊かな環境に位置し、市民料金で利用できます。',
  '秋田県能代市字大瀬儘下6-5',
  'akita', 'noshiro',
  40.2, 140.008,
  'JR五能線 能代駅',
  20,
  40, 1, true, 25,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '能代市',
  3.5, 12
);

-- 44. まごころホール能代
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール能代',
  'akita-noshiro-magokoro',
  'private_hall',
  '能代市のまごころホール。日本海に面した能代の風土に根差した温かい葬儀サービスを提供しています。',
  '秋田県能代市落合字上前田51',
  'akita', 'noshiro',
  40.215, 140.025,
  'JR五能線 能代駅',
  12,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['家族葬対応'],
  'まごころホール',
  4.0, 14
);

-- 45. 博善社能代
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社能代',
  'akita-noshiro-hakuzensha',
  'private_hall',
  '能代市に位置する博善社の斎場。能代・二ツ井エリアの方に利用されている地域密着型の施設です。',
  '秋田県能代市西赤沼11-1',
  'akita', 'noshiro',
  40.205, 140.015,
  'JR五能線 能代駅',
  15,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応'],
  '博善社',
  3.8, 11
);

-- 46. セレモニーホールあすか湯沢
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか湯沢',
  'akita-yuzawa-asuka',
  'private_hall',
  '湯沢市中心部に位置するあすかの斎場。稲庭うどんで知られる湯沢の中核斎場です。',
  '秋田県湯沢市大町1-3-18',
  'akita', 'yuzawa-akita',
  39.165, 140.498,
  'JR奥羽本線 湯沢駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 16
);

-- 47. 湯沢市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '湯沢市斎場',
  'akita-yuzawa-shiei',
  'public_crematorium',
  '湯沢市が運営する公営火葬場。湯沢市民に広く利用されている施設で、市民料金が適用されます。',
  '秋田県湯沢市字岩崎字下タ村30',
  'akita', 'yuzawa-akita',
  39.158, 140.49,
  'JR奥羽本線 湯沢駅',
  18,
  40, 1, true, 25,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '湯沢市',
  3.5, 10
);

-- 48. まごころホール湯沢
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール湯沢',
  'akita-yuzawa-magokoro',
  'private_hall',
  '湯沢市のまごころホール。犬っこまつりで知られる温かい地域コミュニティに支えられた斎場です。',
  '秋田県湯沢市田町2-5-30',
  'akita', 'yuzawa-akita',
  39.168, 140.502,
  'JR奥羽本線 湯沢駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'まごころホール',
  4.0, 12
);

-- 49. セレモニーホールあすか鹿角
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか鹿角',
  'akita-kazuno-asuka',
  'private_hall',
  '鹿角市花輪地区に位置するあすかの斎場。鹿角花輪ばやしで知られる地域の中核斎場です。',
  '秋田県鹿角市花輪字中花輪90',
  'akita', 'kazuno',
  40.215, 140.787,
  'JR花輪線 鹿角花輪駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 14
);

-- 50. 鹿角市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '鹿角市斎場',
  'akita-kazuno-shiei',
  'public_crematorium',
  '鹿角市が運営する公営火葬場。十和田湖に近い自然豊かな環境で、市民料金で利用できます。',
  '秋田県鹿角市十和田毛馬内字月山下32',
  'akita', 'kazuno',
  40.225, 140.795,
  'JR花輪線 十和田南駅',
  15,
  40, 1, true, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 65000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '鹿角市',
  3.5, 8
);

-- 51. セレモニーホールあすか潟上
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか潟上',
  'akita-katagami-asuka',
  'private_hall',
  '潟上市に位置するあすかの斎場。男鹿半島への玄関口に位置し、潟上・五城目エリアの方に利用されています。',
  '秋田県潟上市天王字追分西29-380',
  'akita', 'katagami',
  39.808, 140.038,
  'JR奥羽本線 追分駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 14
);

-- 52. まごころホール潟上
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'まごころホール潟上',
  'akita-katagami-magokoro',
  'private_hall',
  '潟上市のまごころホール。八郎潟の豊かな自然に囲まれた温かい葬儀サービスを提供しています。',
  '秋田県潟上市昭和大久保字堤の上17',
  'akita', 'katagami',
  39.815, 140.045,
  'JR奥羽本線 大久保駅',
  8,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 295000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'まごころホール',
  3.9, 10
);

-- 53. セレモニーホールあすか鷹巣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか鷹巣',
  'akita-kitaakita-asuka',
  'private_hall',
  '北秋田市鷹巣地区に位置するあすかの斎場。大太鼓の里として知られる地域で、家族葬から対応しています。',
  '秋田県北秋田市栄字中綱45',
  'akita', 'kitaakita',
  40.225, 140.372,
  'JR奥羽本線 鷹ノ巣駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  3.9, 12
);

-- 54. 北秋田市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '北秋田市斎場',
  'akita-kitaakita-shiei',
  'public_crematorium',
  '北秋田市が運営する公営火葬場。森吉山の自然に囲まれた環境で、市民料金で利用できます。',
  '秋田県北秋田市脇神字石崎34',
  'akita', 'kitaakita',
  40.23, 140.38,
  'JR奥羽本線 鷹ノ巣駅',
  18,
  40, 1, true, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 65000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '北秋田市',
  3.5, 8
);

-- 55. セレモニーホールあすかにかほ
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすかにかほ',
  'akita-nikaho-asuka',
  'private_hall',
  'にかほ市に位置するあすかの斎場。鳥海山と日本海に囲まれた美しい地域で、心温まるお葬式をサポートしています。',
  '秋田県にかほ市平沢字八森31-6',
  'akita', 'nikaho',
  39.208, 139.908,
  'JR羽越本線 仁賀保駅',
  10,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 305000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  3.9, 10
);

-- 56. にかほ市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'にかほ市斎場',
  'akita-nikaho-shiei',
  'public_crematorium',
  'にかほ市が運営する公営火葬場。鳥海山麓の自然豊かな環境に位置し、市民料金で利用できます。',
  '秋田県にかほ市象潟町字関79',
  'akita', 'nikaho',
  39.2, 139.898,
  'JR羽越本線 象潟駅',
  15,
  30, 1, true, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 62000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  'にかほ市',
  3.5, 6
);

-- 57. セレモニーホールあすか角館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホールあすか角館',
  'akita-senboku-asuka',
  'private_hall',
  '仙北市角館町に位置するあすかの斎場。みちのくの小京都・角館の風情ある地域で、家族葬から対応しています。',
  '秋田県仙北市角館町上菅沢397-2',
  'akita', 'senboku',
  39.595, 140.558,
  'JR田沢湖線 角館駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホールあすか',
  4.0, 14
);

-- 58. 仙北市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '仙北市斎場',
  'akita-senboku-shiei',
  'public_crematorium',
  '仙北市が運営する公営火葬場。田沢湖のほとりに近い自然豊かな環境で、市民料金で利用できます。',
  '秋田県仙北市田沢湖生保内字宮ノ後8',
  'akita', 'senboku',
  39.605, 140.565,
  'JR田沢湖線 田沢湖駅',
  15,
  40, 1, true, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 65000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '仙北市',
  3.5, 8
);

-- 59. 博善社湯沢
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '博善社湯沢',
  'akita-yuzawa-hakuzensha',
  'private_hall',
  '湯沢市に位置する博善社の斎場。秋田県南端のエリアで、湯沢・羽後町の方に利用されている地域密着型の施設です。',
  '秋田県湯沢市表町3-2-15',
  'akita', 'yuzawa-akita',
  39.17, 140.505,
  'JR奥羽本線 湯沢駅',
  10,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '博善社',
  3.9, 12
);

-- 60. 清月記潟上
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記潟上',
  'akita-katagami-seigetsuki',
  'private_hall',
  '潟上市に位置する清月記の斎場。秋田市との境界エリアに立地し、秋田市北西部からの利用も多い施設です。八郎潟の豊かな自然環境の中で、心安らぐお別れの場を提供しています。',
  '秋田県潟上市天王字上江川47-3',
  'akita', 'katagami',
  39.812, 140.042,
  'JR奥羽本線 天王駅',
  12,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  4.0, 11
);

