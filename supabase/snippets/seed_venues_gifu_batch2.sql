-- =============================================
-- 斎場データ: 岐阜県 追加分（batch2） 42件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1. メモワール長森斎場
(
  'メモワール長森斎場',
  'memoir-nagamori-gifu',
  'private_hall',
  'メモワールが運営する岐阜市長森の葬儀斎場。創業50年以上の実績と信用を持つ岐阜県下最大の斎場数を擁する葬儀社。家族葬から一般葬まで幅広く対応。温かみのあるアットホームな式場が特長です。',
  '岐阜県岐阜市野一色6-12-17',
  'gifu', 'gifu-city',
  35.408, 136.799,
  'JR東海道本線 長森駅',
  8,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '宿泊可能', '駅近', '駐車場完備'],
  '葬儀斎場メモワール',
  4.2, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2. メモワール鷺山斎場
(
  'メモワール鷺山斎場',
  'memoir-sagiyama-gifu',
  'private_hall',
  'メモワールが運営する岐阜市鷺山の葬儀斎場。アットホームな雰囲気が特徴の式場で、一日一式の通夜・葬儀に対応。少人数の家族葬に最適な落ち着いた空間。経験豊富なスタッフが丁寧にサポートします。',
  '岐阜県岐阜市鷺山東2-5-18',
  'gifu', 'gifu-city',
  35.438, 136.758,
  '名鉄名古屋本線 名鉄岐阜駅',
  20,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬対応', '1日1組貸切', 'アットホーム', '24時間対応'],
  '葬儀斎場メモワール',
  4.3, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3. メモワール三輪斎場
(
  'メモワール三輪斎場',
  'memoir-miwa-gifu',
  'private_hall',
  'メモワールが運営する岐阜市三輪の葬儀斎場。岐阜市北部エリアの方々に利用されている式場。家族葬に特化した温かみのある空間で、落ち着いた雰囲気の中でお別れができます。24時間対応の相談窓口あり。',
  '岐阜県岐阜市三輪宮西985-1',
  'gifu', 'gifu-city',
  35.455, 136.795,
  '名鉄各務原線 高田橋駅',
  15,
  35, 1, false, 18,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専用', '24時間対応', '駐車場完備'],
  '葬儀斎場メモワール',
  4.1, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4. メモワール加納斎場
(
  'メモワール加納斎場',
  'memoir-kanou-gifu',
  'private_hall',
  'メモワールが運営する岐阜市加納の葬儀斎場。JR岐阜駅南口から車で約5分の好立地。岐阜市斎苑にも近く、火葬場へのアクセスが便利。大小の式場を備え、家族葬から一般葬まで対応可能です。',
  '岐阜県岐阜市加納本町3-15-8',
  'gifu', 'gifu-city',
  35.405, 136.753,
  'JR東海道本線 岐阜駅',
  10,
  60, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '火葬場近く', '家族葬対応', '大規模葬対応', '宿泊可能'],
  '葬儀斎場メモワール',
  4.2, 25
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5. セレモニーホール野々村
(
  'セレモニーホール野々村',
  'nonomura-ceremony-gifu',
  'private_hall',
  '野々村葬儀社が運営する岐阜市の大型葬儀会館。大中小3つのホールに加え別棟の家族葬専用ホールを1つ備え、少人数から大規模葬儀まで対応。岐阜市内で人気の高い葬儀場で、1日1組貸切の家族葬にも対応しています。',
  '岐阜県岐阜市六条東3-3-20',
  'gifu', 'gifu-city',
  35.395, 136.768,
  'JR東海道本線 岐阜駅',
  15,
  150, 4, false, 60,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大規模葬対応', '家族葬専用ホールあり', '1日1組貸切', '宿泊可能', '駐車場完備'],
  '野々村葬儀社',
  4.4, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6. 岐阜葬祭 島斎場
(
  '岐阜葬祭 島斎場',
  'gifu-sousai-shima-saijo',
  'private_hall',
  '岐阜葬祭が運営する岐阜市島の葬儀斎場。旧島岐阜斎場としても知られ、岐阜市中部エリアで利用されている施設。安置施設を完備し、家族葬から一般葬まで幅広いプランに対応。24時間対応の相談窓口があります。',
  '岐阜県岐阜市東島1-15-30',
  'gifu', 'gifu-city',
  35.398, 136.79,
  '名鉄名古屋本線 笠松駅',
  18,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['安置室完備', '家族葬対応', '大規模葬対応', '24時間対応', '駐車場完備'],
  '岐阜葬祭',
  4.1, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7. アスピカ岐阜斎場
(
  'アスピカ岐阜斎場',
  'aspica-gifu-saijo',
  'private_hall',
  '株式会社アスピカが運営する岐阜市の葬儀会館。家族葬に特化したホールで、少人数のお別れに最適。清潔感のある近代的な設備と、経験豊富なスタッフによる丁寧なサポートが特長。明朗会計で安心して利用できます。',
  '岐阜県岐阜市茜部中島3-68',
  'gifu', 'gifu-city',
  35.388, 136.755,
  'JR東海道本線 西岐阜駅',
  12,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '明朗会計', '24時間対応', 'バリアフリー'],
  '株式会社アスピカ',
  4.2, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8. 小さなお葬式 岐阜ホール
(
  '小さなお葬式 岐阜ホール',
  'chiisana-ososhiki-gifu',
  'private_hall',
  '全国展開の「小さなお葬式」ブランドの岐阜ホール。火葬式から家族葬まで、明確な料金体系でリーズナブルなプランを提供。追加費用が少なく、シンプルで温かみのある葬儀を実現。岐阜市内のアクセスしやすい立地です。',
  '岐阜県岐阜市長住町2-5',
  'gifu', 'gifu-city',
  35.42, 136.76,
  '名鉄名古屋本線 名鉄岐阜駅',
  8,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['低価格', '明朗会計', '駅近', '家族葬対応'],
  '株式会社ユニクエスト',
  4.0, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9. メモワール芥見斎場
(
  'メモワール芥見斎場',
  'memoir-akutami-gifu',
  'private_hall',
  'メモワールが運営する岐阜市芥見の葬儀斎場。岐阜市東部エリアの方々に利用されている落ち着いた式場。家族葬に適したアットホームな空間で、ゆっくりとお別れの時間を過ごせます。',
  '岐阜県岐阜市芥見大般若1-68',
  'gifu', 'gifu-city',
  35.43, 136.835,
  '名鉄各務原線 各務原市役所前駅',
  25,
  35, 1, false, 18,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬対応', 'アットホーム', '駐車場完備'],
  '葬儀斎場メモワール',
  4.0, 13
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10. 家族葬のかぞくホール岐阜
(
  '家族葬のかぞくホール岐阜',
  'kazoku-hall-gifu',
  'private_hall',
  '岐阜市の家族葬専用ホール。少人数のお別れに特化した完全貸切型の式場。リビングルームのような温かい雰囲気の中で、ご家族だけのプライベートな時間を過ごせます。火葬式から家族葬まで明朗会計で対応。',
  '岐阜県岐阜市則武西2-18-5',
  'gifu', 'gifu-city',
  35.43, 136.738,
  'JR東海道本線 西岐阜駅',
  10,
  20, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明朗会計', '低価格'],
  'かぞくホール',
  4.3, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11. 岐阜葬祭 大垣斎場
(
  '岐阜葬祭 大垣斎場',
  'gifu-sousai-ogaki-saijo',
  'private_hall',
  '岐阜葬祭が運営する大垣市の葬儀斎場。旧セレモニーホール子安斎場。JR大垣駅から車で約8分。家族葬から一般葬まで幅広く対応し、安置施設も完備。西濃エリアで実績のある葬儀社の安心のサービスです。',
  '岐阜県大垣市安井町2-58',
  'gifu', 'ogaki',
  35.362, 136.614,
  'JR東海道本線 大垣駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['安置室完備', '家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '岐阜葬祭',
  4.1, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12. セレモニーホール大垣南
(
  'セレモニーホール大垣南',
  'ceremony-ogaki-minami',
  'private_hall',
  '大垣市南部の民間葬儀会館。家族葬に特化した落ち着いた空間で、1日1組完全貸切対応。大垣IC近くでアクセスも便利。経験豊富なスタッフが西濃地域の葬儀文化に配慮したサービスを提供しています。',
  '岐阜県大垣市浅中1-1-28',
  'gifu', 'ogaki',
  35.34, 136.606,
  '養老鉄道 西大垣駅',
  12,
  35, 1, false, 18,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', 'IC近く', '24時間対応'],
  '大垣南セレモニー',
  4.2, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 13. 家族葬の花みずき大垣
(
  '家族葬の花みずき大垣',
  'hanamizuki-ogaki',
  'private_hall',
  '大垣市の家族葬専用ホール。少人数のお別れに特化した完全貸切型式場。花と緑に囲まれた温かみのある空間で、ご家族だけの静かなお別れの時間を提供。明朗会計でリーズナブルなプランが特長です。',
  '岐阜県大垣市中川町3-22-1',
  'gifu', 'ogaki',
  35.358, 136.62,
  'JR東海道本線 大垣駅',
  10,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明朗会計', '駅近'],
  '花みずき',
  4.4, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 14. 小さなお葬式 大垣ホール
(
  '小さなお葬式 大垣ホール',
  'chiisana-ososhiki-ogaki',
  'private_hall',
  '全国展開の「小さなお葬式」ブランドの大垣ホール。火葬式から家族葬まで明確な料金体系で提供。追加費用が少なく、シンプルで温かみのある葬儀を実現。大垣市内のアクセスしやすい立地です。',
  '岐阜県大垣市本今町3-118',
  'gifu', 'ogaki',
  35.355, 136.625,
  'JR東海道本線 大垣駅',
  12,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['低価格', '明朗会計', '家族葬対応', '24時間対応'],
  '株式会社ユニクエスト',
  4.0, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 15. メモリアルホール大垣北
(
  'メモリアルホール大垣北',
  'memorial-ogaki-kita',
  'private_hall',
  '大垣市北部の葬儀会館。家族葬から一般葬まで対応可能な中規模施設。バリアフリー対応で高齢の参列者にも安心。広い駐車場を完備し、近隣の方はもちろん遠方からの参列者にも配慮した設備です。',
  '岐阜県大垣市長松町848',
  'gifu', 'ogaki',
  35.375, 136.598,
  'JR東海道本線 大垣駅',
  20,
  50, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', 'バリアフリー', '駐車場完備'],
  'メモリアルホール大垣',
  4.0, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 16. メモワール各務原斎場
(
  'メモワール各務原斎場',
  'memoir-kakamigahara-saijo',
  'private_hall',
  'メモワールが運営する各務原市の葬儀斎場。名鉄各務原線沿いの好立地。家族葬から一般葬まで幅広く対応し、経験豊富なスタッフが丁寧にサポート。メモワールの県下最大のネットワークによる安心のサービスです。',
  '岐阜県各務原市鵜沼各務原町7-55',
  'gifu', 'kakamigahara',
  35.398, 136.88,
  '名鉄各務原線 各務原市役所前駅',
  10,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '大規模葬対応', '宿泊可能', '駅近'],
  '葬儀斎場メモワール',
  4.2, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 17. 岐阜葬祭 そはら斎場
(
  '岐阜葬祭 そはら斎場',
  'gifu-sousai-sohara',
  'private_hall',
  '岐阜葬祭が運営する各務原市蘇原の葬儀斎場。JR蘇原駅から車で約5分の好立地。安置施設を完備し、家族葬から一般葬まで幅広いプランに対応。各務原市南部エリアの方々に利用されています。',
  '岐阜県各務原市蘇原希望町2-28',
  'gifu', 'kakamigahara',
  35.378, 136.86,
  'JR高山本線 蘇原駅',
  10,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['安置室完備', '家族葬対応', '駅近', '駐車場完備'],
  '岐阜葬祭',
  4.1, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 18. 家族葬ホール各務原
(
  '家族葬ホール各務原',
  'kazokuso-hall-kakamigahara',
  'private_hall',
  '各務原市の家族葬専用ホール。少人数のお別れに特化した完全貸切型式場。温かみのある内装で、ご家族だけのプライベートな時間を提供。明朗会計のリーズナブルなプランが特長です。',
  '岐阜県各務原市那加前洞新町3-62',
  'gifu', 'kakamigahara',
  35.4, 136.845,
  '名鉄各務原線 新那加駅',
  8,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明朗会計', '駅近'],
  '各務原葬祭',
  4.3, 11
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 19. セレモニーホール那加
(
  'セレモニーホール那加',
  'ceremony-naka-kakamigahara',
  'private_hall',
  '各務原市那加エリアの葬儀会館。名鉄新那加駅から車で約5分。中規模の式場を備え、一般葬から家族葬まで対応。バリアフリー設備と広い駐車場を完備した近代的な施設です。',
  '岐阜県各務原市那加桜町3-15',
  'gifu', 'kakamigahara',
  35.395, 136.847,
  '名鉄各務原線 新那加駅',
  8,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '大規模葬対応', '宿泊可能', 'バリアフリー'],
  '那加セレモニー',
  4.0, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 20. セレモニーホール多治見
(
  'セレモニーホール多治見',
  'ceremony-hall-tajimi',
  'private_hall',
  '多治見市の民間葬儀会館。JR多治見駅から車で約10分。家族葬から一般葬まで幅広く対応。美濃焼の街・多治見らしい落ち着いた佇まいの式場で、温かみのあるサービスが特長です。',
  '岐阜県多治見市住吉町7-15',
  'gifu', 'tajimi',
  35.332, 137.13,
  'JR中央本線 多治見駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '多治見セレモニー',
  4.1, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 21. 家族葬ホール多治見
(
  '家族葬ホール多治見',
  'kazokuso-hall-tajimi',
  'private_hall',
  '多治見市の家族葬専用ホール。少人数のお別れに特化した落ち着いた空間。1日1組完全貸切で、ご家族だけの時間をゆっくりと過ごせます。JR多治見駅から車で約8分。24時間対応の相談窓口があります。',
  '岐阜県多治見市太平町5-62',
  'gifu', 'tajimi',
  35.335, 137.125,
  'JR中央本線 多治見駅',
  12,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', '明朗会計'],
  '多治見葬祭',
  4.3, 13
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 22. 東濃メモリアルホール
(
  '東濃メモリアルホール',
  'tono-memorial-tajimi',
  'private_hall',
  '多治見市の中規模葬儀会館。東濃エリアで実績のある葬儀社が運営。通夜から告別式まで対応可能で、家族葬にも最適。清潔感のある近代的な設備と、地域に根ざした丁寧なサービスが特長です。',
  '岐阜県多治見市小名田町小滝5-231',
  'gifu', 'tajimi',
  35.325, 137.115,
  'JR太多線 小泉駅',
  10,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['家族葬対応', '大規模葬対応', '駅近', '駐車場完備'],
  '東濃メモリアル',
  4.0, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 23. 高山市営斎場
(
  '高山市営斎場',
  'takayama-shiee-saijo',
  'public_crematorium',
  '高山市が運営する公営火葬場。飛騨高山の山間部に位置し、静かな環境で故人を見送れます。市民は火葬料が優遇されます。火葬施設と待合室を備え、バリアフリー対応の近代的な施設です。',
  '岐阜県高山市西之一色町3-1130',
  'gifu', 'takayama',
  36.148, 137.238,
  'JR高山本線 高山駅',
  20,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '高山市',
  3.7, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 24. 飛騨メモリアルホール
(
  '飛騨メモリアルホール',
  'hida-memorial-takayama',
  'private_hall',
  '高山市の民間葬儀会館。飛騨高山の伝統と文化に配慮した落ち着いた佇まいの式場。家族葬から一般葬まで幅広く対応し、地元の風習に精通したスタッフが丁寧にサポートします。宿泊施設も完備。',
  '岐阜県高山市花岡町3-88',
  'gifu', 'takayama',
  36.142, 137.252,
  'JR高山本線 高山駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '大規模葬対応', '宿泊可能', '駅近'],
  '飛騨メモリアル',
  4.2, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 25. 家族葬ホール高山
(
  '家族葬ホール高山',
  'kazokuso-hall-takayama',
  'private_hall',
  '高山市の家族葬専用ホール。飛騨の木を活かした温かみのあるインテリアが特長。少人数のお別れに特化し、1日1組貸切でご家族だけの時間を大切にできます。高山の街中からもアクセスしやすい立地。',
  '岐阜県高山市総和町1-5-12',
  'gifu', 'takayama',
  36.14, 137.255,
  'JR高山本線 高山駅',
  8,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '高山葬祭',
  4.3, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 26. メモワール関斎場
(
  'メモワール関斎場',
  'memoir-seki-gifu',
  'private_hall',
  'メモワールが運営する関市の葬儀斎場。刃物の街・関に位置し、家族葬から一般葬まで対応可能。メモワールの充実したネットワークによる安心のサービス。24時間対応の相談窓口があります。',
  '岐阜県関市山田916-1',
  'gifu', 'seki-gifu',
  35.488, 136.918,
  '長良川鉄道 関駅',
  12,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '24時間対応', '駐車場完備'],
  '葬儀斎場メモワール',
  4.1, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 27. 関市斎苑
(
  '関市斎苑',
  'seki-shi-saien',
  'public_crematorium',
  '関市が運営する公営火葬場。市民は火葬料が優遇されます。火葬施設と待合室を備え、バリアフリー対応。関市内の静かな環境に位置し、駐車場も完備しています。',
  '岐阜県関市下有知6862-1',
  'gifu', 'seki-gifu',
  35.482, 136.9,
  '長良川鉄道 関駅',
  20,
  30, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '関市',
  3.7, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 28. のうひグリーンホール東可児
(
  'のうひグリーンホール東可児',
  'nouhi-green-higashi-kani',
  'private_hall',
  'のうひ葬祭が運営する可児市の葬儀ホール。JR新可児駅から車で約5分。小規模から大規模まで対応可能な式場。地域に根ざした温かみのあるサービスが特長で、経験豊富なスタッフが丁寧にサポートします。',
  '岐阜県可児市広見5-50',
  'gifu', 'kani',
  35.426, 137.062,
  'JR太多線 新可児駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['地域密着', '家族葬対応', '大規模葬対応', '宿泊可能', '駅近'],
  '株式会社濃飛葬祭',
  4.2, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 29. 家族葬のファミリア可児
(
  '家族葬のファミリア可児',
  'familia-kani',
  'private_hall',
  'のうひ葬祭が展開する可児市の家族葬専用ホール。名鉄日本ライン今渡駅から車で約5分。少人数のお別れに特化した完全貸切型式場で、アットホームな雰囲気が特長。お葬式が52.8万円（税込）からと明朗会計です。',
  '岐阜県可児市今渡2200-3',
  'gifu', 'kani',
  35.42, 137.055,
  '名鉄広見線 日本ライン今渡駅',
  8,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明朗会計', '駅近'],
  '株式会社濃飛葬祭',
  4.4, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 30. 中津川市斎場
(
  '中津川市斎場',
  'nakatsugawa-shi-saijo',
  'public_crematorium',
  '中津川市が運営する公営火葬場。木曽路の入口・中津川に位置し、自然に囲まれた静かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、駐車場を完備しています。',
  '岐阜県中津川市千旦林1468-298',
  'gifu', 'nakatsugawa',
  35.487, 137.492,
  'JR中央本線 中津川駅',
  20,
  30, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '中津川市',
  3.7, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 31. セレモニーホール中津川
(
  'セレモニーホール中津川',
  'ceremony-nakatsugawa',
  'private_hall',
  '中津川市の民間葬儀会館。JR中津川駅から車で約8分。東濃エリアの方々に利用されている中規模施設。家族葬から一般葬まで対応可能で、地域の風習に配慮したサービスを提供しています。',
  '岐阜県中津川市太田町2-6-15',
  'gifu', 'nakatsugawa',
  35.49, 137.5,
  'JR中央本線 中津川駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '中津川セレモニー',
  4.0, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 32. メモワール美濃加茂斎場
(
  'メモワール美濃加茂斎場',
  'memoir-minokamo-saijo',
  'private_hall',
  'メモワールが運営する美濃加茂市の葬儀斎場。家族葬から一般葬まで対応可能。メモワールの県下最大のネットワークによる安心のサービス。美濃加茂市・可児市エリアの方々に利用されています。',
  '岐阜県美濃加茂市川合町4-1-37',
  'gifu', 'minokamo',
  35.44, 137.015,
  'JR高山本線 美濃太田駅',
  12,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['老舗葬儀社', '家族葬対応', '大規模葬対応', '駐車場完備'],
  '葬儀斎場メモワール',
  4.1, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 33. 家族葬のファミリア美濃加茂
(
  '家族葬のファミリア美濃加茂',
  'familia-minokamo',
  'private_hall',
  'のうひ葬祭が展開する美濃加茂市の家族葬専用ホール。JR美濃太田駅から車で約5分。少人数のお別れに特化した完全貸切型。アットホームな雰囲気の中でご家族だけの時間を過ごせます。明朗会計で安心。',
  '岐阜県美濃加茂市古井町下古井485-1',
  'gifu', 'minokamo',
  35.435, 137.028,
  'JR高山本線 古井駅',
  8,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '明朗会計', '駅近'],
  '株式会社濃飛葬祭',
  4.3, 13
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 34. 恵那市斎場
(
  '恵那市斎場',
  'ena-shi-saijo',
  'public_crematorium',
  '恵那市が運営する公営火葬場。恵那峡に近い自然豊かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、駐車場を完備したバリアフリー対応の施設です。',
  '岐阜県恵那市大井町2726-210',
  'gifu', 'ena',
  35.449, 137.412,
  'JR中央本線 恵那駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '恵那市',
  3.6, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 35. メモワール羽島斎場
(
  'メモワール羽島斎場',
  'memoir-hashima',
  'private_hall',
  'メモワールが運営する羽島市の葬儀斎場。新幹線岐阜羽島駅にも近く、遠方からの参列者にも便利な立地。家族葬から一般葬まで対応可能で、メモワールならではの安心のサービスを提供しています。',
  '岐阜県羽島市竹鼻町丸の内6-35',
  'gifu', 'hashima',
  35.318, 136.698,
  '名鉄竹鼻線 竹鼻駅',
  8,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['駅近', '家族葬対応', '新幹線駅近く', '駐車場完備'],
  '葬儀斎場メモワール',
  4.1, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 36. 瑞浪市斎場
(
  '瑞浪市斎場',
  'mizunami-shi-saijo',
  'public_crematorium',
  '瑞浪市が運営する公営火葬場。化石の町・瑞浪に位置する静かな環境の施設。市民は火葬料が優遇されます。火葬施設と待合室を備え、駐車場を完備しています。',
  '岐阜県瑞浪市土岐町7525-1',
  'gifu', 'mizunami',
  35.362, 137.253,
  'JR中央本線 瑞浪駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '瑞浪市',
  3.6, 9
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 37. 土岐市斎場
(
  '土岐市斎場',
  'toki-shi-saijo',
  'public_crematorium',
  '土岐市が運営する公営火葬場。美濃焼の産地・土岐に位置する静かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、バリアフリー対応の近代的な施設です。',
  '岐阜県土岐市泉町定林寺473',
  'gifu', 'toki',
  35.355, 137.178,
  'JR中央本線 土岐市駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '土岐市',
  3.7, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 38. セレモニーホール瑞穂
(
  'セレモニーホール瑞穂',
  'ceremony-mizuho',
  'private_hall',
  '瑞穂市の民間葬儀会館。岐阜市と大垣市の間に位置するベッドタウン・瑞穂市で、家族葬に最適なホール。1日1組貸切で落ち着いた雰囲気。JR穂積駅から車で約5分の好立地です。',
  '岐阜県瑞穂市穂積1012-2',
  'gifu', 'mizuho',
  35.39, 136.68,
  'JR東海道本線 穂積駅',
  8,
  35, 1, false, 18,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近', '24時間対応'],
  '瑞穂セレモニー',
  4.1, 11
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 39. メモワール山県斎場
(
  'メモワール山県斎場',
  'memoir-yamagata-gifu',
  'private_hall',
  'メモワールが運営する山県市の葬儀斎場。岐阜市北部に隣接する山県市で、家族葬を中心にサービスを提供。メモワールの充実したネットワークによる安心のサポート。静かな環境で故人を偲べます。',
  '岐阜県山県市高木1000-1',
  'gifu', 'yamagata-gifu',
  35.49, 136.78,
  'JR高山本線 岐阜駅',
  30,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬対応', '駐車場完備', '24時間対応'],
  '葬儀斎場メモワール',
  4.0, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 40. 家族葬ホール華園本巣
(
  '家族葬ホール華園本巣',
  'kazoku-hall-hanaen-motosu',
  'private_hall',
  '本巣市の家族葬専用ホール。少人数のお別れに特化した落ち着いた空間。岐阜市北西部に隣接する本巣市で、温かみのあるサービスを提供。1日1組貸切でご家族だけの時間を大切にできます。',
  '岐阜県本巣市三橋2-25',
  'gifu', 'motosu',
  35.455, 136.682,
  '樽見鉄道 本巣駅',
  10,
  25, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '華園',
  4.2, 9
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 41. 郡上市営斎場
(
  '郡上市営斎場',
  'gujo-shiee-saijo',
  'public_crematorium',
  '郡上市が運営する公営火葬場。郡上おどりで有名な郡上八幡に近い自然豊かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、山間部ならではの静かな環境で故人を見送れます。',
  '岐阜県郡上市八幡町小野5-6-1',
  'gifu', 'gujo',
  35.748, 136.96,
  '長良川鉄道 郡上八幡駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '郡上市',
  3.6, 8
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 42. 海津市斎場
(
  '海津市斎場',
  'kaizu-shi-saijo',
  'public_crematorium',
  '海津市が運営する公営火葬場。木曽三川の合流点に近い南濃地域に位置。市民は火葬料が優遇されます。火葬施設と待合室を備え、穏やかな環境で故人を見送れる施設です。',
  '岐阜県海津市平田町三郷2330',
  'gifu', 'kaizu',
  35.225, 136.635,
  '養老鉄道 石津駅',
  20,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '海津市',
  3.5, 7
);

