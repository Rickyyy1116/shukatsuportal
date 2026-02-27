-- =============================================
-- 斎場データ: 福島県 80件
-- 郡山市18件, いわき市15件, 福島市15件, 会津若松市8件,
-- 須賀川市4件, 白河市4件, 南相馬市3件, 相馬市3件,
-- 喜多方市2件, 二本松市2件, 田村市2件, 伊達市3件, 本宮市3件
-- =============================================

-- 1. セレモールホール郡山中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモールホール郡山中央',
  'fukushima-koriyama-ceremony-chuo',
  'private_hall',
  '郡山市中心部に位置する大型葬儀ホール。郡山駅から徒歩圏内で、家族葬から大規模な一般葬まで幅広く対応。バリアフリー設計で高齢の参列者にも安心です。',
  '福島県郡山市中町1-15',
  'fukushima', 'koriyama',
  37.399, 140.382,
  'JR東北本線 郡山駅',
  8,
  120, 3, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', 'バリアフリー'],
  'セレモール',
  4.2, 48
);

-- 2. 法要殿郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '法要殿郡山',
  'fukushima-koriyama-hoyoden',
  'private_hall',
  '郡山市内で長年の実績を持つ法要殿の斎場。落ち着いた和モダンの内装が特徴で、故人との最後のお別れにふさわしい空間を提供しています。',
  '福島県郡山市桑野2-33-8',
  'fukushima', 'koriyama',
  37.395, 140.365,
  'JR東北本線 郡山駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', 'バリアフリー'],
  '法要殿',
  4.1, 35
);

-- 3. ベルヴィ郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルヴィ郡山',
  'fukushima-koriyama-bellevie',
  'private_hall',
  '郡山市の閑静な住宅街に立地するベルヴィの葬儀会館。少人数の家族葬に特化した温かみのある空間が評判です。',
  '福島県郡山市大槻町字北八耕地7-1',
  'fukushima', 'koriyama',
  37.381, 140.347,
  'JR東北本線 郡山駅',
  20,
  50, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ベルヴィ',
  4.3, 29
);

-- 4. JA葬祭郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭郡山',
  'fukushima-koriyama-ja-sousai',
  'private_hall',
  'JA福島さくらが運営する葬祭ホール。組合員割引があり、地域に根差した温かいサービスが特徴。家族葬から一般葬まで対応可能です。',
  '福島県郡山市安積町笹川字石田1-5',
  'fukushima', 'koriyama',
  37.371, 140.375,
  'JR東北本線 安積永盛駅',
  10,
  100, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場'],
  'JA福島さくら葬祭',
  4.0, 32
);

-- 5. メモリアルホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール郡山',
  'fukushima-koriyama-memorial',
  'private_hall',
  '郡山市東部に位置するメモリアルホール。清潔感のある近代的な施設で、故人を偲ぶにふさわしい空間を提供。駐車場完備でお車でのアクセスも便利です。',
  '福島県郡山市田村町金屋字マセ口1-1',
  'fukushima', 'koriyama',
  37.388, 140.408,
  'JR磐越東線 舞木駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応', '駐車場完備'],
  'メモリアルホール',
  3.9, 22
);

-- 6. 紫雲殿郡山北
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿郡山北',
  'fukushima-koriyama-shiunden-kita',
  'private_hall',
  '郡山市北部の紫雲殿。国道4号線沿いでアクセスしやすく、郡山市北部・本宮市方面からの利用も多い斎場です。',
  '福島県郡山市日和田町字高倉60-2',
  'fukushima', 'koriyama',
  37.429, 140.373,
  'JR東北本線 日和田駅',
  8,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '紫雲殿',
  3.8, 18
);

-- 7. セレモニーホール須賀川街道
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール須賀川街道',
  'fukushima-koriyama-ceremony-sukagawa',
  'private_hall',
  '郡山市南部、須賀川街道沿いに立地。郡山市南部と須賀川市の境界に位置し、両市からの利用者が多い便利な立地です。',
  '福島県郡山市安積町日出山2-78',
  'fukushima', 'koriyama',
  37.367, 140.368,
  'JR東北本線 安積永盛駅',
  15,
  70, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}]'::jsonb,
  ARRAY['家族葬対応'],
  'セレモニーホール',
  4.0, 20
);

-- 8. こころの杜郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころの杜郡山',
  'fukushima-koriyama-kokoronomori',
  'private_hall',
  '郡山市西部の閑静なエリアに位置する家族葬専門のホール。木のぬくもりを感じる内装で、少人数での温かいお別れを大切にしています。',
  '福島県郡山市富田町字満水田5-12',
  'fukushima', 'koriyama',
  37.402, 140.342,
  'JR東北本線 郡山駅',
  25,
  30, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'こころの杜',
  4.4, 15
);

-- 9. 郡山市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '郡山市斎場',
  'fukushima-koriyama-shiei-saijo',
  'public_crematorium',
  '郡山市が運営する公営の火葬場・斎場。市民料金が適用され、火葬から告別式まで一か所で行えます。郡山市民に広く利用されている施設です。',
  '福島県郡山市片平町字庚坦5',
  'fukushima', 'koriyama',
  37.373, 140.33,
  'JR東北本線 郡山駅',
  30,
  100, 2, true, 80,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設', '大駐車場'],
  '郡山市',
  3.7, 55
);

-- 10. セレモール郡山南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモール郡山南',
  'fukushima-koriyama-ceremony-minami',
  'private_hall',
  '郡山市南部エリアのセレモール。郡山南インター近くでお車でのアクセスが便利。2つのホールを備え、家族葬と一般葬を同時に執り行えます。',
  '福島県郡山市安積3-120',
  'fukushima', 'koriyama',
  37.363, 140.381,
  'JR東北本線 安積永盛駅',
  12,
  90, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応', 'インター近く'],
  'セレモール',
  4.1, 26
);

-- 11. ファミリーホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミリーホール郡山',
  'fukushima-koriyama-family',
  'private_hall',
  '家族葬専門のアットホームな葬儀ホール。郡山市開成エリアにあり、少人数でのお見送りに特化した温かい空間です。',
  '福島県郡山市開成5-2-18',
  'fukushima', 'koriyama',
  37.388, 140.354,
  'JR東北本線 郡山駅',
  18,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ファミリーホール',
  4.2, 14
);

-- 12. ベルホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルホール郡山',
  'fukushima-koriyama-bellhall',
  'private_hall',
  '郡山市東部の住宅街に位置するベルホール。モダンな外観と落ち着いた内装で、幅広い世代に支持されています。',
  '福島県郡山市小原田4-5-10',
  'fukushima', 'koriyama',
  37.392, 140.398,
  'JR東北本線 郡山駅',
  20,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応'],
  'ベルホール',
  3.9, 19
);

-- 13. あいネットホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'あいネットホール郡山',
  'fukushima-koriyama-ainet',
  'private_hall',
  '郡山市中心部の互助会系葬儀ホール。会員価格でのお得なプランが充実し、事前相談にも丁寧に対応してくれます。',
  '福島県郡山市堤下町12-3',
  'fukushima', 'koriyama',
  37.397, 140.39,
  'JR東北本線 郡山駅',
  10,
  100, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '事前相談可'],
  'あいネット',
  4.0, 30
);

-- 14. やすらぎホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'やすらぎホール郡山',
  'fukushima-koriyama-yasuragi',
  'private_hall',
  '郡山市喜久田町に位置するやすらぎホール。広い駐車場と落ち着いた雰囲気で、遠方からの参列者にも配慮した施設です。',
  '福島県郡山市喜久田町堀之内字舘18',
  'fukushima', 'koriyama',
  37.425, 140.345,
  'JR磐越西線 喜久田駅',
  10,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場'],
  'やすらぎホール',
  4.0, 21
);

-- 15. 清月記郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記郡山',
  'fukushima-koriyama-seigetsuki',
  'private_hall',
  '東北地方で展開する清月記の郡山斎場。経験豊富なスタッフと充実した設備で、心のこもったお葬式をサポートします。',
  '福島県郡山市長者2-8-15',
  'fukushima', 'koriyama',
  37.395, 140.378,
  'JR東北本線 郡山駅',
  12,
  100, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '清月記',
  4.2, 38
);

-- 16. サンライフ郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'サンライフ郡山',
  'fukushima-koriyama-sunlife',
  'private_hall',
  '郡山市西部に位置するサンライフの葬祭ホール。リーズナブルな価格設定と丁寧なサービスで地域の方々に親しまれています。',
  '福島県郡山市大平町字北20-5',
  'fukushima', 'koriyama',
  37.412, 140.338,
  'JR東北本線 郡山駅',
  25,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'サンライフ',
  3.8, 16
);

-- 17. セレモニーこころ郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーこころ郡山',
  'fukushima-koriyama-kokoro',
  'private_hall',
  '郡山市熱海町に位置する小規模葬儀ホール。磐梯熱海温泉エリアにあり、宿泊を兼ねた葬儀にも対応可能な特色ある施設です。',
  '福島県郡山市熱海町熱海4-55',
  'fukushima', 'koriyama',
  37.482, 140.261,
  'JR磐越西線 磐梯熱海駅',
  8,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 295000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', '駅近'],
  'セレモニーこころ',
  4.1, 11
);

-- 18. 虹のホール郡山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '虹のホール郡山',
  'fukushima-koriyama-nijinohall',
  'private_hall',
  '郡山市横塚エリアに立地する葬儀ホール。明るく清潔感のある施設で、故人との穏やかなお別れの場を提供しています。',
  '福島県郡山市横塚6-15-8',
  'fukushima', 'koriyama',
  37.405, 140.395,
  'JR東北本線 郡山駅',
  22,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 560000}]'::jsonb,
  ARRAY['家族葬対応'],
  '虹のホール',
  3.9, 17
);

-- 19. セレモールいわき平
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモールいわき平',
  'fukushima-iwaki-ceremony-taira',
  'private_hall',
  'いわき市平地区の中心部に位置するセレモールの大型斎場。いわき駅から近く、幅広い規模の葬儀に対応可能。いわき地域最大級の施設です。',
  '福島県いわき市平字白銀町5-8',
  'fukushima', 'iwaki',
  37.05, 140.888,
  'JR常磐線 いわき駅',
  8,
  150, 3, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 390000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 720000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '大規模対応'],
  'セレモール',
  4.2, 52
);

-- 20. 法要殿いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '法要殿いわき',
  'fukushima-iwaki-hoyoden',
  'private_hall',
  'いわき市小名浜エリアの法要殿。港町ならではの温かい地域コミュニティに支えられた斎場で、丁寧なサービスが評判です。',
  '福島県いわき市小名浜字栄町38-2',
  'fukushima', 'iwaki',
  36.943, 140.896,
  'JR常磐線 泉駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応'],
  '法要殿',
  4.0, 30
);

-- 21. いわき市南部斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'いわき市南部斎場',
  'fukushima-iwaki-nanbu-saijo',
  'public_crematorium',
  'いわき市が運営する南部地域の公営火葬場・斎場。市民料金が適用され、火葬と告別式を一か所で行えます。',
  '福島県いわき市常磐下船尾町杭出作23',
  'fukushima', 'iwaki',
  36.988, 140.832,
  'JR常磐線 湯本駅',
  15,
  80, 2, true, 60,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設', '大駐車場'],
  'いわき市',
  3.6, 42
);

-- 22. メモリアルホールいわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホールいわき',
  'fukushima-iwaki-memorial',
  'private_hall',
  'いわき市内郷エリアのメモリアルホール。モダンな設計と充実した設備が特徴。経験豊富なスタッフが葬儀全般をサポートします。',
  '福島県いわき市内郷御厩町2-29',
  'fukushima', 'iwaki',
  37.032, 140.86,
  'JR常磐線 内郷駅',
  10,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'メモリアルホール',
  4.1, 25
);

-- 23. ベルヴィいわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルヴィいわき',
  'fukushima-iwaki-bellevie',
  'private_hall',
  'いわき市鹿島町に位置するベルヴィの斎場。鹿島街道沿いでアクセスが便利。少人数の家族葬から対応しています。',
  '福島県いわき市鹿島町走熊字小神山60-1',
  'fukushima', 'iwaki',
  36.972, 140.877,
  'JR常磐線 いわき駅',
  25,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ベルヴィ',
  4.0, 18
);

-- 24. 紫雲殿いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿いわき',
  'fukushima-iwaki-shiunden',
  'private_hall',
  'いわき市平地区にある紫雲殿の斎場。落ち着いた和風の内装で、格式のあるお葬式を執り行えます。',
  '福島県いわき市平字新川町30-1',
  'fukushima', 'iwaki',
  37.055, 140.895,
  'JR常磐線 いわき駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '紫雲殿',
  3.9, 27
);

-- 25. JA葬祭いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭いわき',
  'fukushima-iwaki-ja-sousai',
  'private_hall',
  'JA福島さくらが運営するいわき地域の葬祭ホール。組合員でなくても利用可能で、適正価格での葬儀サービスを提供しています。',
  '福島県いわき市好間町上好間字大館21',
  'fukushima', 'iwaki',
  37.023, 140.862,
  'JR磐越東線 赤井駅',
  12,
  60, 1, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA福島さくら葬祭',
  3.8, 20
);

-- 26. こころ斎苑いわき中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころ斎苑いわき中央',
  'fukushima-iwaki-kokorosaien',
  'private_hall',
  'いわき市中央台地区に位置する家族葬対応ホール。新興住宅地に立地し、モダンで明るい雰囲気の施設です。',
  '福島県いわき市中央台飯野4-2',
  'fukushima', 'iwaki',
  37.01, 140.88,
  'JR常磐線 いわき駅',
  20,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'こころ斎苑',
  4.3, 16
);

-- 27. 清月記いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記いわき',
  'fukushima-iwaki-seigetsuki',
  'private_hall',
  'いわき市勿来地区にある清月記の斎場。勿来エリア・北茨城方面からのアクセスも良好で、幅広い地域から利用されています。',
  '福島県いわき市勿来町関田長沢10-5',
  'fukushima', 'iwaki',
  36.882, 140.825,
  'JR常磐線 勿来駅',
  10,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '清月記',
  4.0, 22
);

-- 28. サンライフいわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'サンライフいわき',
  'fukushima-iwaki-sunlife',
  'private_hall',
  'いわき市植田エリアに立地するサンライフの葬儀ホール。リーズナブルな価格と丁寧なサービスで地域に根差した運営を行っています。',
  '福島県いわき市植田町中央1-9-3',
  'fukushima', 'iwaki',
  36.907, 140.812,
  'JR常磐線 植田駅',
  5,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '低価格'],
  'サンライフ',
  3.9, 14
);

-- 29. ファミリーホールいわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ファミリーホールいわき',
  'fukushima-iwaki-family',
  'private_hall',
  'いわき市四倉エリアの家族葬専門ホール。四倉海岸に近い閑静な立地で、穏やかなお別れの場を提供しています。',
  '福島県いわき市四倉町字六丁目56',
  'fukushima', 'iwaki',
  37.096, 140.983,
  'JR常磐線 四ツ倉駅',
  8,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 270000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応', '駅近'],
  'ファミリーホール',
  4.1, 10
);

-- 30. やすらぎ会館いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'やすらぎ会館いわき',
  'fukushima-iwaki-yasuragi',
  'private_hall',
  'いわき市湯本温泉エリアに位置する斎場。温泉街の落ち着いた雰囲気の中で、心安らぐお別れの場を提供しています。',
  '福島県いわき市常磐湯本町天王崎1-12',
  'fukushima', 'iwaki',
  36.983, 140.838,
  'JR常磐線 湯本駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'やすらぎ会館',
  4.0, 19
);

-- 31. 光輪会館いわき
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '光輪会館いわき',
  'fukushima-iwaki-korin',
  'temple_hall',
  'いわき市にある寺院併設の式場。伝統的な仏式葬儀を執り行える格式ある施設で、僧侶の手配もスムーズです。',
  '福島県いわき市平字鍛冶町10',
  'fukushima', 'iwaki',
  37.052, 140.892,
  'JR常磐線 いわき駅',
  12,
  60, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "本堂": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀'],
  '光輪寺',
  3.8, 15
);

-- 32. いわき北部斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'いわき北部斎場',
  'fukushima-iwaki-hokubu-saijo',
  'public_facility',
  'いわき市北部地区の公共葬儀施設。市民料金で利用でき、シンプルな告別式に対応しています。',
  '福島県いわき市久之浜町久之浜字中町38',
  'fukushima', 'iwaki',
  37.143, 141.002,
  'JR常磐線 久ノ浜駅',
  10,
  40, 1, false, 20,
  '{"式場": true, "親族控室": true, "駐車場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['公営施設', '低価格'],
  'いわき市',
  3.5, 12
);

-- 33. セレモールホール福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモールホール福島',
  'fukushima-city-ceremony-main',
  'private_hall',
  '福島市中心部に位置するセレモールの大型斎場。福島駅西口からアクセスしやすく、県庁所在地の中核斎場として多くの方に利用されています。',
  '福島県福島市三河南町1-20',
  'fukushima', 'fukushima-city',
  37.753, 140.46,
  'JR東北本線 福島駅',
  10,
  120, 3, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '大規模対応'],
  'セレモール',
  4.1, 45
);

-- 34. 法要殿福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '法要殿福島',
  'fukushima-city-hoyoden',
  'private_hall',
  '福島市南部の法要殿。市内でも歴史のある葬儀社で、地域の方々から厚い信頼を寄せられています。',
  '福島県福島市太平寺字堰ノ上8-3',
  'fukushima', 'fukushima-city',
  37.738, 140.468,
  'JR東北本線 南福島駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 610000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '法要殿',
  4.0, 33
);

-- 35. 福島市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '福島市斎場',
  'fukushima-city-shiei-saijo',
  'public_crematorium',
  '福島市が運営する公営の火葬場・斎場。信夫山の麓に位置し、市民料金で火葬と告別式が行えます。',
  '福島県福島市大森字高田15',
  'fukushima', 'fukushima-city',
  37.762, 140.435,
  'JR奥羽本線 笹木野駅',
  15,
  100, 2, true, 70,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設', '大駐車場'],
  '福島市',
  3.7, 50
);

-- 36. ベルヴィ福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルヴィ福島',
  'fukushima-city-bellevie',
  'private_hall',
  '福島市北部に位置するベルヴィの家族葬ホール。木の温もりあふれる内装で、少人数のお見送りに最適な空間です。',
  '福島県福島市北矢野目字原田67-1',
  'fukushima', 'fukushima-city',
  37.778, 140.47,
  '阿武隈急行 卸町駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ベルヴィ',
  4.3, 20
);

-- 37. JA葬祭福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭福島',
  'fukushima-city-ja-sousai',
  'private_hall',
  'JA福島が運営する福島市内の葬祭ホール。果樹園が広がる福島市西部に位置し、地元農家の方々を中心に利用されています。',
  '福島県福島市南沢又字上原17',
  'fukushima', 'fukushima-city',
  37.748, 140.44,
  'JR奥羽本線 笹木野駅',
  12,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 540000}]'::jsonb,
  ARRAY['家族葬対応', '大駐車場'],
  'JA福島葬祭',
  3.9, 28
);

-- 38. メモリアルホール福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール福島',
  'fukushima-city-memorial',
  'private_hall',
  '福島市中心部のメモリアルホール。充実した設備と経験豊富なスタッフで、様々な規模の葬儀に対応しています。',
  '福島県福島市曽根田町1-18',
  'fukushima', 'fukushima-city',
  37.758, 140.465,
  'JR東北本線 福島駅',
  8,
  90, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'メモリアルホール',
  4.0, 30
);

-- 39. 紫雲殿福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿福島',
  'fukushima-city-shiunden',
  'private_hall',
  '福島市飯坂街道沿いの紫雲殿。和風の落ち着いた内装で、伝統的な葬儀を大切にする方に選ばれています。',
  '福島県福島市飯坂町字銀杏5-18',
  'fukushima', 'fukushima-city',
  37.812, 140.437,
  '福島交通飯坂線 飯坂温泉駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '紫雲殿',
  3.8, 19
);

-- 40. 清月記福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記福島',
  'fukushima-city-seigetsuki',
  'private_hall',
  '福島市東部に位置する清月記の斎場。東北地方に展開する清月記ならではの安定したサービスと品質が特徴です。',
  '福島県福島市松浪町7-15',
  'fukushima', 'fukushima-city',
  37.755, 140.478,
  'JR東北本線 福島駅',
  15,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 690000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  4.1, 35
);

-- 41. こころの杜福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころの杜福島',
  'fukushima-city-kokoronomori',
  'private_hall',
  '福島市南部の家族葬専門ホール。温かみのある木造建築で、少人数での穏やかなお別れを大切にしています。',
  '福島県福島市伏拝字田中5-3',
  'fukushima', 'fukushima-city',
  37.73, 140.455,
  'JR東北本線 南福島駅',
  12,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'こころの杜',
  4.4, 12
);

-- 42. あいネットホール福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'あいネットホール福島',
  'fukushima-city-ainet',
  'private_hall',
  '福島市中心部の互助会系葬儀ホール。会員価格での割引プランが充実しています。',
  '福島県福島市天神町10-28',
  'fukushima', 'fukushima-city',
  37.75, 140.458,
  'JR東北本線 福島駅',
  12,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応', '事前相談可'],
  'あいネット',
  4.0, 25
);

-- 43. 虹のホール福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '虹のホール福島',
  'fukushima-city-nijinohall',
  'private_hall',
  '福島市野田町に立地する葬儀ホール。明るく開放的な空間で、故人を偲ぶ穏やかなお別れの場を提供しています。',
  '福島県福島市野田町5-2-40',
  'fukushima', 'fukushima-city',
  37.76, 140.45,
  'JR東北本線 福島駅',
  15,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応'],
  '虹のホール',
  3.9, 18
);

-- 44. サンライフ福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'サンライフ福島',
  'fukushima-city-sunlife',
  'private_hall',
  '福島市鎌田エリアに位置するサンライフの葬儀ホール。リーズナブルな価格設定が特徴で、費用を抑えた葬儀を希望する方に支持されています。',
  '福島県福島市鎌田字門丈壇4-1',
  'fukushima', 'fukushima-city',
  37.771, 140.48,
  '阿武隈急行 福島学院前駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['家族葬対応', '低価格', '駅近'],
  'サンライフ',
  3.8, 14
);

-- 45. 善光寺斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '善光寺斎場',
  'fukushima-city-zenkoji',
  'temple_hall',
  '福島市の由緒ある善光寺に併設された式場。伝統的な仏式葬儀を格式をもって執り行えます。',
  '福島県福島市曽根田町6-27',
  'fukushima', 'fukushima-city',
  37.756, 140.462,
  'JR東北本線 福島駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "本堂": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀', '駅近'],
  '善光寺',
  3.9, 16
);

-- 46. やすらぎホール福島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'やすらぎホール福島',
  'fukushima-city-yasuragi',
  'private_hall',
  '福島市西部の閑静な住宅街に位置する葬儀ホール。落ち着いた環境で、故人との最後の時間をゆっくりと過ごせます。',
  '福島県福島市八島田字上ノ段15',
  'fukushima', 'fukushima-city',
  37.743, 140.435,
  'JR奥羽本線 笹木野駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応'],
  'やすらぎホール',
  4.0, 17
);

-- 47. セレモールホール会津
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモールホール会津',
  'fukushima-aizu-ceremony',
  'private_hall',
  '会津若松市の中心部に位置する大型斎場。会津地域最大級の施設で、家族葬から社葬まで幅広い規模に対応しています。',
  '福島県会津若松市白虎町200-5',
  'fukushima', 'aizuwakamatsu',
  37.498, 139.932,
  'JR磐越西線 会津若松駅',
  10,
  120, 3, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 100000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['家族葬対応', '駅近', '大規模対応'],
  'セレモール',
  4.1, 38
);

-- 48. 会津若松市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '会津若松市斎場',
  'fukushima-aizu-shiei-saijo',
  'public_crematorium',
  '会津若松市が運営する公営の火葬場・斎場。磐梯山を望む景勝地に位置し、市民料金で利用できます。',
  '福島県会津若松市一箕町大字鶴賀字下柳原78',
  'fukushima', 'aizuwakamatsu',
  37.51, 139.948,
  'JR磐越西線 会津若松駅',
  20,
  80, 2, true, 60,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設', '大駐車場'],
  '会津若松市',
  3.6, 40
);

-- 49. 法要殿会津
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '法要殿会津',
  'fukushima-aizu-hoyoden',
  'private_hall',
  '会津若松市七日町通り近くの法要殿。会津の歴史を感じる落ち着いた雰囲気の中で、心温まるお葬式を行えます。',
  '福島県会津若松市西栄町6-38',
  'fukushima', 'aizuwakamatsu',
  37.496, 139.924,
  'JR只見線 七日町駅',
  8,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '法要殿',
  4.0, 24
);

-- 50. 清月記会津
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記会津',
  'fukushima-aizu-seigetsuki',
  'private_hall',
  '会津若松市東部に位置する清月記の斎場。東山温泉方面からのアクセスも良好で、会津地域の方に広く利用されています。',
  '福島県会津若松市山鍛冶町8-20',
  'fukushima', 'aizuwakamatsu',
  37.493, 139.94,
  'JR磐越西線 会津若松駅',
  15,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 370000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 680000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  4.2, 30
);

-- 51. ベルヴィ会津
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ベルヴィ会津',
  'fukushima-aizu-bellevie',
  'private_hall',
  '会津若松市の閑静な住宅街に立地する家族葬ホール。少人数でのお見送りに特化した温かい空間です。',
  '福島県会津若松市門田町大字中野字大道東8',
  'fukushima', 'aizuwakamatsu',
  37.48, 139.928,
  '会津鉄道 南若松駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 300000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'ベルヴィ',
  4.3, 15
);

-- 52. JA葬祭会津
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭会津',
  'fukushima-aizu-ja-sousai',
  'private_hall',
  'JA会津よつばが運営する葬祭ホール。組合員割引があり、地域農業を支える方々に信頼されている施設です。',
  '福島県会津若松市北会津町東小松字南古川5',
  'fukushima', 'aizuwakamatsu',
  37.478, 139.898,
  'JR只見線 会津本郷駅',
  15,
  60, 1, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 285000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA会津よつば葬祭',
  3.9, 20
);

-- 53. 鶴ヶ城メモリアルホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '鶴ヶ城メモリアルホール',
  'fukushima-aizu-tsurugajo-memorial',
  'private_hall',
  '鶴ヶ城にほど近い場所に位置するメモリアルホール。会津の歴史と文化を感じる格式ある葬儀を執り行えます。',
  '福島県会津若松市追手町5-10',
  'fukushima', 'aizuwakamatsu',
  37.488, 139.93,
  'JR磐越西線 会津若松駅',
  18,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応'],
  'メモリアルホール',
  4.0, 22
);

-- 54. 東光寺斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '東光寺斎場',
  'fukushima-aizu-tokoji',
  'temple_hall',
  '会津若松市の歴史ある東光寺に併設された式場。会津藩ゆかりの寺院で、伝統的な仏式葬儀を執り行えます。',
  '福島県会津若松市東栄町4-30',
  'fukushima', 'aizuwakamatsu',
  37.502, 139.935,
  'JR磐越西線 会津若松駅',
  12,
  50, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "本堂": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]'::jsonb,
  ARRAY['寺院式場', '仏式葬儀'],
  '東光寺',
  3.8, 14
);

-- 55. セレモニーホール須賀川
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール須賀川',
  'fukushima-sukagawa-ceremony',
  'private_hall',
  '須賀川市中心部に位置する斎場。須賀川駅からアクセスしやすく、須賀川・鏡石エリアの方に広く利用されています。',
  '福島県須賀川市東町55-12',
  'fukushima', 'sukagawa',
  37.291, 140.371,
  'JR東北本線 須賀川駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 25
);

-- 56. 須賀川市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '須賀川市斎場',
  'fukushima-sukagawa-shiei-saijo',
  'public_crematorium',
  '須賀川市が運営する公営火葬場。市民料金が適用され、シンプルな火葬式に対応しています。',
  '福島県須賀川市前田川字寺前20',
  'fukushima', 'sukagawa',
  37.28, 140.355,
  'JR東北本線 須賀川駅',
  20,
  60, 1, true, 40,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '須賀川市',
  3.6, 18
);

-- 57. 法要殿須賀川
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '法要殿須賀川',
  'fukushima-sukagawa-hoyoden',
  'private_hall',
  '須賀川市南部に位置する法要殿。須賀川牡丹園近くの閑静なエリアで、落ち着いた雰囲気の中でお別れができます。',
  '福島県須賀川市牡丹園80-1',
  'fukushima', 'sukagawa',
  37.275, 140.38,
  'JR東北本線 須賀川駅',
  15,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応'],
  '法要殿',
  3.9, 15
);

-- 58. こころ斎苑須賀川
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'こころ斎苑須賀川',
  'fukushima-sukagawa-kokorosaien',
  'private_hall',
  '須賀川市の家族葬専門ホール。少人数のお見送りに特化した温かみのある施設です。',
  '福島県須賀川市馬町28',
  'fukushima', 'sukagawa',
  37.288, 140.365,
  'JR東北本線 須賀川駅',
  12,
  30, 1, false, 12,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}]'::jsonb,
  ARRAY['家族葬対応', '少人数対応'],
  'こころ斎苑',
  4.2, 11
);

-- 59. セレモニーホール白河
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール白河',
  'fukushima-shirakawa-ceremony',
  'private_hall',
  '白河市中心部に位置する斎場。白河の関の歴史を感じる地域で、南東北の玄関口として幅広い地域から利用されています。',
  '福島県白河市新白河1-120',
  'fukushima', 'shirakawa',
  37.125, 140.2,
  'JR東北新幹線 新白河駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 22
);

-- 60. 白河市営斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '白河市営斎場',
  'fukushima-shirakawa-shiei',
  'public_crematorium',
  '白河市が運営する公営火葬場・斎場。市民料金が適用され、火葬と告別式が一か所で行えます。',
  '福島県白河市田島字嶽前30',
  'fukushima', 'shirakawa',
  37.108, 140.185,
  'JR東北本線 白河駅',
  25,
  60, 1, true, 40,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '白河市',
  3.5, 16
);

-- 61. 清月記白河
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記白河',
  'fukushima-shirakawa-seigetsuki',
  'private_hall',
  '白河市に位置する清月記の斎場。東北道白河ICからアクセスしやすく、近隣市町村からの利用も多い施設です。',
  '福島県白河市字新蔵町35',
  'fukushima', 'shirakawa',
  37.13, 140.208,
  'JR東北本線 白河駅',
  10,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  '清月記',
  4.1, 20
);

-- 62. JA葬祭白河
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭白河',
  'fukushima-shirakawa-ja',
  'private_hall',
  'JA東西しらかわが運営する葬祭ホール。組合員だけでなく一般の方も利用可能で、適正価格での葬儀を提供しています。',
  '福島県白河市久田野字阿弥陀前3',
  'fukushima', 'shirakawa',
  37.115, 140.21,
  'JR東北本線 久田野駅',
  8,
  50, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 290000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 530000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA東西しらかわ葬祭',
  3.9, 14
);

-- 63. セレモニーホール南相馬
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール南相馬',
  'fukushima-minamisoma-ceremony',
  'private_hall',
  '南相馬市原町区の中心部に位置する斎場。相馬野馬追の伝統が息づく地域で、心を込めたお葬式をサポートしています。',
  '福島県南相馬市原町区本町1-70',
  'fukushima', 'minamisoma',
  37.642, 140.961,
  'JR常磐線 原ノ町駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 340000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 620000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 20
);

-- 64. 清月記南相馬
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記南相馬',
  'fukushima-minamisoma-seigetsuki',
  'private_hall',
  '南相馬市鹿島区に位置する清月記の斎場。鹿島区から原町区一帯のお客様に利用されている施設です。',
  '福島県南相馬市鹿島区寺内字迫152',
  'fukushima', 'minamisoma',
  37.669, 140.95,
  'JR常磐線 鹿島駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 360000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  3.9, 15
);

-- 65. 南相馬市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '南相馬市斎場',
  'fukushima-minamisoma-shiei',
  'public_crematorium',
  '南相馬市が運営する公営火葬場。市民料金で利用でき、地域の方々の葬送を支えています。',
  '福島県南相馬市原町区高字南行廻2',
  'fukushima', 'minamisoma',
  37.63, 140.94,
  'JR常磐線 原ノ町駅',
  20,
  50, 1, true, 30,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '南相馬市',
  3.5, 12
);

-- 66. セレモニーホール相馬
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール相馬',
  'fukushima-soma-ceremony',
  'private_hall',
  '相馬市中心部に位置する斎場。相馬中村城跡近くの歴史ある地域で、家族葬から一般葬まで対応しています。',
  '福島県相馬市中村字北町20-8',
  'fukushima', 'soma',
  37.798, 140.917,
  'JR常磐線 相馬駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 18
);

-- 67. 相馬市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '相馬市斎場',
  'fukushima-soma-shiei',
  'public_crematorium',
  '相馬市が運営する公営火葬場。海沿いの静かな環境に位置し、市民料金で利用できます。',
  '福島県相馬市赤木字西原15',
  'fukushima', 'soma',
  37.79, 140.93,
  'JR常磐線 相馬駅',
  15,
  40, 1, true, 25,
  '{"式場": true, "親族控室": true, "駐車場": true, "火葬場": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]'::jsonb,
  ARRAY['公営施設', '火葬場併設'],
  '相馬市',
  3.5, 10
);

-- 68. 清月記相馬
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記相馬',
  'fukushima-soma-seigetsuki',
  'private_hall',
  '相馬市に位置する清月記の斎場。相馬・新地エリアの方に利用されている地域密着型の施設です。',
  '福島県相馬市沖ノ内1-3-15',
  'fukushima', 'soma',
  37.802, 140.922,
  'JR常磐線 相馬駅',
  12,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 640000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  3.8, 12
);

-- 69. セレモニーホール喜多方
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール喜多方',
  'fukushima-kitakata-ceremony',
  'private_hall',
  '喜多方市中心部に位置する斎場。蔵の街として知られる喜多方の風情ある地域で、温かいお葬式をサポートします。',
  '福島県喜多方市字町田8478',
  'fukushima', 'kitakata',
  37.652, 139.873,
  'JR磐越西線 喜多方駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 320000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 16
);

-- 70. JA葬祭喜多方
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭喜多方',
  'fukushima-kitakata-ja',
  'private_hall',
  'JA会津よつばが運営する喜多方の葬祭ホール。喜多方盆地の農業地域に根差した温かいサービスが特徴です。',
  '福島県喜多方市関柴町三津井字深田100',
  'fukushima', 'kitakata',
  37.665, 139.89,
  'JR磐越西線 喜多方駅',
  15,
  50, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 520000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA会津よつば葬祭',
  3.8, 12
);

-- 71. セレモニーホール二本松
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール二本松',
  'fukushima-nihonmatsu-ceremony',
  'private_hall',
  '二本松市中心部に位置する斎場。二本松城址近くの歴史ある地域で、菊人形まつりでも知られる地域の方々に利用されています。',
  '福島県二本松市本町1-180',
  'fukushima', 'nihonmatsu',
  37.586, 140.43,
  'JR東北本線 二本松駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 18
);

-- 72. 清月記二本松
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記二本松',
  'fukushima-nihonmatsu-seigetsuki',
  'private_hall',
  '二本松市に位置する清月記の斎場。安達太良山を望む環境で、穏やかなお別れの場を提供しています。',
  '福島県二本松市亀谷1-70',
  'fukushima', 'nihonmatsu',
  37.58, 140.425,
  'JR東北本線 二本松駅',
  12,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 355000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  3.9, 14
);

-- 73. セレモニーホール田村
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール田村',
  'fukushima-tamura-ceremony',
  'private_hall',
  '田村市船引町の中心部に位置する斎場。阿武隈高原の自然豊かな環境で、田村地域の方々に利用されています。',
  '福島県田村市船引町船引字上ノ台40',
  'fukushima', 'tamura',
  37.44, 140.572,
  'JR磐越東線 船引駅',
  10,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  3.9, 14
);

-- 74. JA葬祭田村
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭田村',
  'fukushima-tamura-ja',
  'private_hall',
  'JAたむらが運営する葬祭ホール。田村地域の農業従事者の方を中心に、地域に密着したサービスを提供しています。',
  '福島県田村市船引町船引字東元町22',
  'fukushima', 'tamura',
  37.438, 140.568,
  'JR磐越東線 船引駅',
  8,
  40, 1, false, 20,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 275000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JAたむら葬祭',
  3.8, 10
);

-- 75. セレモニーホール伊達
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール伊達',
  'fukushima-date-ceremony',
  'private_hall',
  '伊達市保原町の中心部に位置する斎場。伊達政宗ゆかりの地で、伊達市・桑折町・国見町エリアの方に利用されています。',
  '福島県伊達市保原町字東野崎45',
  'fukushima', 'date-fukushima',
  37.821, 140.527,
  '阿武隈急行 保原駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 590000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 16
);

-- 76. 清月記伊達
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '清月記伊達',
  'fukushima-date-seigetsuki',
  'private_hall',
  '伊達市に位置する清月記の斎場。伊達市・福島市北部エリアの方に利用されている施設です。',
  '福島県伊達市舘ノ内20-12',
  'fukushima', 'date-fukushima',
  37.83, 140.53,
  '阿武隈急行 伊達駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 345000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 630000}]'::jsonb,
  ARRAY['家族葬対応'],
  '清月記',
  3.9, 12
);

-- 77. セレモニーホール本宮
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール本宮',
  'fukushima-motomiya-ceremony',
  'private_hall',
  '本宮市中心部に位置する斎場。本宮駅近くでアクセスしやすく、本宮・大玉エリアの方に利用されています。',
  '福島県本宮市本宮字千代田60',
  'fukushima', 'motomiya',
  37.512, 140.392,
  'JR東北本線 本宮駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 580000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  4.0, 14
);

-- 78. JA葬祭本宮
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'JA葬祭本宮',
  'fukushima-motomiya-ja',
  'private_hall',
  'JA福島さくらが運営する本宮の葬祭ホール。本宮市と大玉村の方に利用されている地域密着型の施設です。',
  '福島県本宮市本宮字舘ノ越15',
  'fukushima', 'motomiya',
  37.508, 140.388,
  'JR東北本線 本宮駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 510000}]'::jsonb,
  ARRAY['家族葬対応', '低価格'],
  'JA福島さくら葬祭',
  3.8, 10
);

-- 79. セレモニーホール伊達梁川
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'セレモニーホール伊達梁川',
  'fukushima-date-yanagawa-ceremony',
  'private_hall',
  '伊達市梁川町に位置する斎場。阿武隈川沿いの落ち着いた環境で、梁川・霊山エリアの方々に利用されています。家族葬を中心に対応しています。',
  '福島県伊達市梁川町字東土井内25',
  'fukushima', 'date-fukushima',
  37.856, 140.568,
  '阿武隈急行 梁川駅',
  8,
  50, 1, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "安置室": true}'::jsonb,
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 570000}]'::jsonb,
  ARRAY['家族葬対応', '駅近'],
  'セレモニーホール',
  3.9, 11
);

-- 80. メモリアルホール本宮
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'メモリアルホール本宮',
  'fukushima-motomiya-memorial',
  'private_hall',
  '本宮市郊外に位置するメモリアルホール。安達太良山を望む静かな環境で、心安らぐお別れの場を提供しています。大玉村からのアクセスも良好です。',
  '福島県本宮市高木字井戸上38',
  'fukushima', 'motomiya',
  37.518, 140.4,
  'JR東北本線 本宮駅',
  15,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}'::jsonb,
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]'::jsonb,
  ARRAY['家族葬対応'],
  'メモリアルホール',
  4.0, 13
);

