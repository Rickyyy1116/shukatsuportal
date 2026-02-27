-- =============================================
-- 斎場データ追加: 愛知県 バッチ2 155件
-- 名古屋市60件, 豊橋市7件, 岡崎市6件, 一宮市5件,
-- 豊田市5件, 春日井市3件, 他 各市2-4件
-- =============================================

-- 1. 平安会館江南斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館江南斎場',
  'konan-aichi-heian',
  'private_hall',
  '江南市に位置する平安会館の斎場。名鉄犬山線江南駅からアクセスしやすい立地。江南市・扶桑町・大口町エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '愛知県江南市古知野町千丸228',
  'aichi', 'konan-aichi',
  35.328, 136.868,
  '名鉄犬山線 江南駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 22
);

-- 2. ティア尾張旭
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア尾張旭',
  'owariasahi-tier',
  'private_hall',
  '尾張旭市に位置するティアの葬儀会館。尾張旭市・瀬戸市エリアの方に利用されています。家族葬に特化した温かみのある式場で、名鉄瀬戸線からアクセスしやすい立地です。',
  '愛知県尾張旭市南原山町赤土306',
  'aichi', 'owariasahi',
  35.212, 137.019,
  '名鉄瀬戸線 印場駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 25
);

-- 3. 紫雲殿稲沢斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿稲沢斎場',
  'inazawa-shiunden',
  'private_hall',
  '稲沢市に位置する紫雲殿の葬儀会館。稲沢市中心部に立地し、JR東海道線稲沢駅からアクセス可能。家族葬から一般葬まで対応。稲沢市・一宮市南部エリアの方に利用されています。',
  '愛知県稲沢市朝府町6-20',
  'aichi', 'inazawa',
  35.248, 136.782,
  'JR東海道線 稲沢駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 22
);

-- 4. イズモホール田原
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール田原',
  'tahara-izumo',
  'private_hall',
  '田原市に位置するイズモ葬祭の葬儀ホール。渥美半島エリアの方に利用されています。家族葬から一般葬まで対応可能で、地域に密着したサービスを提供しています。',
  '愛知県田原市田原町東山口6-1',
  'aichi', 'tahara',
  34.671, 137.268,
  '豊橋鉄道渥美線 三河田原駅',
  12,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['家族葬対応'],
  'イズモ葬祭',
  4.0, 18
);

-- 5. イズモホール高浜
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール高浜',
  'takahama-izumo',
  'private_hall',
  '高浜市に位置するイズモ葬祭の葬儀ホール。高浜市・碧南市エリアの方に利用されています。家族葬に特化した温かみのある式場で、少人数でのお別れに最適です。',
  '愛知県高浜市青木町6-2-3',
  'aichi', 'takahama',
  34.92, 136.993,
  '名鉄三河線 三河高浜駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '駅近'],
  'イズモ葬祭',
  4.0, 15
);

-- 6. 紫雲殿清須斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿清須斎場',
  'kiyosu-shiunden',
  'private_hall',
  '清須市に位置する紫雲殿の葬儀会館。清須市・あま市エリアの方に利用されています。名古屋市西部からもアクセスしやすい立地。家族葬から一般葬まで対応しています。',
  '愛知県清須市西枇杷島町芳野3-5',
  'aichi', 'kiyosu',
  35.193, 136.852,
  '名鉄名古屋本線 西枇杷島駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 20
);

-- 7. 紫雲殿あま斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿あま斎場',
  'ama-shiunden',
  'private_hall',
  'あま市に位置する紫雲殿の葬儀会館。あま市・津島市・稲沢市エリアの方に利用されています。落ち着いた雰囲気の式場で家族葬に最適な空間を提供しています。',
  '愛知県あま市甚目寺須原9',
  'aichi', 'ama',
  35.186, 136.819,
  '名鉄津島線 甚目寺駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  3.9, 18
);

-- 8. イズモホール瀬戸
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール瀬戸',
  'seto-izumo',
  'private_hall',
  '瀬戸市に位置するイズモ葬祭の葬儀ホール。瀬戸市中心部に立地し、名鉄瀬戸線尾張瀬戸駅からアクセス可能。家族葬に特化した温かみのある式場が特徴です。',
  '愛知県瀬戸市朝日町50',
  'aichi', 'seto',
  35.225, 137.082,
  '名鉄瀬戸線 尾張瀬戸駅',
  8,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '駅近'],
  'イズモ葬祭',
  4.1, 22
);

-- 9. ティア蒲郡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア蒲郡',
  'gamagori-tier',
  'private_hall',
  '蒲郡市に位置するティアの葬儀会館。蒲郡市中心部に立地し、JR東海道線蒲郡駅からアクセスしやすい。家族葬から一般葬まで対応可能です。',
  '愛知県蒲郡市八百富町8-28',
  'aichi', 'gamagori',
  34.825, 137.22,
  'JR東海道線 蒲郡駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 25
);

-- 10. ティア碧南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア碧南',
  'hekinan-tier',
  'private_hall',
  '碧南市に位置するティアの葬儀会館。碧南市・高浜市エリアの方に利用されています。家族葬に特化した温かみのある式場で、1日1組貸切制を採用しています。',
  '愛知県碧南市向陽町3-50',
  'aichi', 'hekinan',
  34.876, 136.994,
  '名鉄三河線 碧南中央駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '1日1組貸切', '駅近'],
  '株式会社ティア',
  4.2, 20
);

-- 11. 平安会館半田中央梅定ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館半田中央梅定ホール',
  'handa-heian-chuo-baitei',
  'private_hall',
  '半田市柊町に位置する平安会館の斎場（梅定ホール）。名鉄河和線知多半田駅から徒歩圏内。半田市中心部の方に利用されています。家族葬から一般葬まで対応可能です。',
  '愛知県半田市柊町5-5-1',
  'aichi', 'handa',
  34.887, 136.936,
  '名鉄河和線 知多半田駅',
  7,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.1, 30
);

-- 12. ティア犬山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア犬山',
  'inuyama-tier',
  'private_hall',
  '犬山市に位置するティアの葬儀会館。名鉄犬山線犬山駅からアクセスしやすい立地。犬山市・扶桑町エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '愛知県犬山市犬山愛宕15-2',
  'aichi', 'inuyama',
  35.381, 136.944,
  '名鉄犬山線 犬山駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 22
);

-- 13. 愛昇殿レクストの杜一宮松降
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜一宮松降',
  'ichinomiya-aishoden-matsufuri',
  'private_hall',
  '一宮市松降に位置する愛昇殿の葬儀会館。JR尾張一宮駅・名鉄一宮駅からアクセスしやすい市中心部に位置。一宮市全域の方に利用されています。',
  '愛知県一宮市松降2-18-12',
  'aichi', 'ichinomiya',
  35.3, 136.793,
  'JR東海道線 尾張一宮駅',
  10,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社レクスト',
  4.0, 25
);

-- 14. ティア瀬戸
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア瀬戸',
  'seto-tier',
  'private_hall',
  '瀬戸市に位置するティアの葬儀会館。瀬戸市中心部に立地し、名鉄瀬戸線尾張瀬戸駅からアクセスしやすい。家族葬から一般葬まで対応可能です。',
  '愛知県瀬戸市西山町2-260',
  'aichi', 'seto',
  35.22, 137.079,
  '名鉄瀬戸線 新瀬戸駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 25
);

-- 15. 紫雲殿岩倉斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿岩倉斎場',
  'iwakura-shiunden',
  'private_hall',
  '岩倉市に位置する紫雲殿の葬儀会館。名鉄犬山線岩倉駅から徒歩圏内。岩倉市・一宮市東部エリアの方に利用されています。家族葬に最適な落ち着いた式場です。',
  '愛知県岩倉市東町掛目1',
  'aichi', 'iwakura',
  35.277, 136.875,
  '名鉄犬山線 岩倉駅',
  7,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 18
);

-- 16. ティア千音寺
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア千音寺',
  'nagoya-tier-senonji',
  'private_hall',
  '名古屋市中川区千音寺エリアに2025年冬オープンの新しい葬儀会館。家族葬から一般葬まで対応可能な最新設備を備え、清潔感のある館内が特徴です。国道302号線沿いでアクセス良好、大型駐車場を完備しています。',
  '愛知県名古屋市中川区富田町千音寺東屋敷4401',
  'aichi', 'nagoya',
  35.158, 136.829,
  'あおなみ線 南荒子駅',
  20,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '新築会館', '大型駐車場', '名古屋市中川区'],
  '株式会社ティア',
  4.3, 15
);

-- 17. ティア名東
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア名東',
  'nagoya-tier-meito',
  'private_hall',
  '名古屋市名東区に位置する葬儀会館。地下鉄東山線一社駅から徒歩圏内の好立地で、名東区・長久手エリアの方に多く利用されています。木の温もりを感じる落ち着いた内装で、家族葬に最適な空間を提供しています。',
  '愛知県名古屋市名東区一社2-38',
  'aichi', 'nagoya',
  35.178, 136.988,
  '地下鉄東山線 一社駅',
  8,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市名東区'],
  '株式会社ティア',
  4.4, 72
);

-- 18. ティア西
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア西',
  'nagoya-tier-nishi',
  'private_hall',
  '名古屋市西区に位置する葬儀会館。庄内川沿いの閑静なエリアに立地し、家族葬から一般葬まで幅広く対応。地下鉄鶴舞線浄心駅からアクセス可能で、西区・北区エリアの方に利用されています。',
  '愛知県名古屋市西区浄心2-2-15',
  'aichi', 'nagoya',
  35.187, 136.892,
  '地下鉄鶴舞線 浄心駅',
  7,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市西区'],
  '株式会社ティア',
  4.2, 58
);

-- 19. 紫雲殿徳川斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿徳川斎場',
  'nagoya-shiunden-tokugawa',
  'private_hall',
  '名古屋市東区に位置する紫雲殿の葬儀会館。徳川園の近くに立地し、格式ある雰囲気で故人をお見送りできます。大ホールと小ホールを備え、一般葬から家族葬まで対応。名古屋市東区・千種区エリアの拠点斎場です。',
  '愛知県名古屋市東区徳川2-11-33',
  'aichi', 'nagoya',
  35.187, 136.937,
  'JR中央本線 大曽根駅',
  10,
  120, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '名古屋市東区'],
  '株式会社紫雲殿',
  4.1, 55
);

-- 20. 紫雲殿道徳斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿道徳斎場',
  'nagoya-shiunden-dotoku',
  'private_hall',
  '名古屋市南区道徳エリアに位置する葬儀会館。名鉄常滑線道徳駅から徒歩5分の好立地。家族葬専用の離宮も併設しており、少人数から中規模まで幅広い葬儀に対応。地域密着型の丁寧なサービスが好評です。',
  '愛知県名古屋市南区道徳新町5-48',
  'aichi', 'nagoya',
  35.103, 136.905,
  '名鉄常滑線 道徳駅',
  5,
  100, 3, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', '離宮併設', '名古屋市南区'],
  '株式会社紫雲殿',
  4.0, 48
);

-- 21. 紫雲殿くすのき斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿くすのき斎場',
  'nagoya-shiunden-kusunoki',
  'private_hall',
  '名古屋市北区に位置する紫雲殿の葬儀会館。楠インター近くでアクセス便利。落ち着いた雰囲気の式場は家族葬に最適で、少人数でのお別れを大切にした空間設計。北区・西区エリアの方に親しまれている施設です。',
  '愛知県名古屋市北区楠味鋺5-1624',
  'aichi', 'nagoya',
  35.222, 136.918,
  '名鉄小牧線 味鋺駅',
  10,
  60, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}]',
  ARRAY['家族葬対応', '少人数対応', '名古屋市北区'],
  '株式会社紫雲殿',
  3.9, 35
);

-- 22. 紫雲殿中川斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿中川斎場',
  'nagoya-shiunden-nakagawa',
  'private_hall',
  '名古屋市中川区に位置する紫雲殿の葬儀会館。国道1号線沿いでアクセスしやすく、車での来場に便利。150名収容の大ホールと家族葬向けの小ホールを備え、幅広い規模の葬儀に対応しています。',
  '愛知県名古屋市中川区小塚町96',
  'aichi', 'nagoya',
  35.139, 136.845,
  '近鉄名古屋線 戸田駅',
  15,
  150, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場', '名古屋市中川区'],
  '株式会社紫雲殿',
  4.0, 42
);

-- 23. 紫雲殿瑞穂斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿瑞穂斎場',
  'nagoya-shiunden-mizuho',
  'private_hall',
  '名古屋市瑞穂区に位置する紫雲殿の本社近くの葬儀会館。地下鉄名城線瑞穂運動場東駅から徒歩圏内。紫雲殿創業の地として長年の信頼と実績があり、地域に根差した丁寧なサービスを提供しています。',
  '愛知県名古屋市瑞穂区瑞穂通8-14',
  'aichi', 'nagoya',
  35.134, 136.933,
  '地下鉄名城線 瑞穂運動場東駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', '老舗葬儀社', '名古屋市瑞穂区'],
  '株式会社紫雲殿',
  4.2, 60
);

-- 24. 紫雲殿名東日進斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿名東日進斎場',
  'nagoya-shiunden-meitonisshin',
  'private_hall',
  '名古屋市名東区と日進市の境界エリアに位置する葬儀会館。名東区・日進市・長久手市の方に広く利用されています。緑豊かな閑静な環境で、落ち着いたお別れの時間を過ごせる施設です。大型駐車場を完備。',
  '愛知県名古屋市名東区勢子坊2-402',
  'aichi', 'nagoya',
  35.165, 137.008,
  '地下鉄東山線 上社駅',
  15,
  100, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '大型駐車場', '名古屋市名東区'],
  '株式会社紫雲殿',
  4.1, 45
);

-- 25. 紫雲殿緑斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿緑斎場',
  'nagoya-shiunden-midori',
  'private_hall',
  '名古屋市緑区に位置する紫雲殿の葬儀会館。緑区・南区エリアの方に多く利用されています。第二斎場にも近く、火葬場への移動がスムーズ。家族葬専用ホールと一般葬対応の大ホールを完備した充実の施設です。',
  '愛知県名古屋市緑区鳴海町字上汐田150',
  'aichi', 'nagoya',
  35.074, 136.948,
  '名鉄名古屋本線 鳴海駅',
  12,
  120, 2, false, 45,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '第二斎場近く', '名古屋市緑区'],
  '株式会社紫雲殿',
  4.0, 38
);

-- 26. 平安会館今池斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館今池斎場',
  'nagoya-heian-imaike',
  'private_hall',
  '名古屋市千種区今池に位置する平安会館の斎場。地下鉄東山線・桜通線今池駅から徒歩3分の抜群のアクセス。繁華街にありながらも落ち着いた雰囲気の式場で、千種区・東区エリアの方に便利です。',
  '愛知県名古屋市千種区内山1-19-22',
  'aichi', 'nagoya',
  35.169, 136.942,
  '地下鉄東山線 今池駅',
  3,
  100, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅徒歩3分', '名古屋市千種区'],
  '株式会社平安閣',
  4.2, 65
);

-- 27. 平安会館黒川斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館黒川斎場',
  'nagoya-heian-kurokawa',
  'private_hall',
  '名古屋市北区清水に位置する平安会館の斎場。地下鉄名城線黒川駅から徒歩圏内で公共交通でのアクセス良好。複数の式場を備え、家族葬から一般葬まで対応可能。北区エリアの拠点斎場として親しまれています。',
  '愛知県名古屋市北区清水4-16-13',
  'aichi', 'nagoya',
  35.195, 136.912,
  '地下鉄名城線 黒川駅',
  6,
  120, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市北区'],
  '株式会社平安閣',
  4.1, 58
);

-- 28. 平安会館志段味斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館志段味斎場',
  'nagoya-heian-shidami',
  'private_hall',
  '名古屋市守山区志段味に位置する平安会館の斎場。ゆとりーとライン終点近くのエリアで、守山区北部・春日井市南部の方に利用されています。緑に囲まれた静かな環境で、心穏やかにお別れの時間を過ごせます。',
  '愛知県名古屋市守山区下志段味二丁目112',
  'aichi', 'nagoya',
  35.213, 136.992,
  'ゆとりーとライン 小幡緑地駅',
  15,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駐車場完備', '名古屋市守山区'],
  '株式会社平安閣',
  4.0, 32
);

-- 29. 平安会館名東猪高斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館名東猪高斎場',
  'nagoya-heian-meito-itaka',
  'private_hall',
  '名古屋市名東区文教台に位置する平安会館の斎場。閑静な住宅街に立地し、名東区の方に多く利用されています。文教地区らしい落ち着いた雰囲気の館内で、ゆったりとしたお別れの時間を提供します。',
  '愛知県名古屋市名東区文教台1-610',
  'aichi', 'nagoya',
  35.172, 136.995,
  '地下鉄東山線 上社駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '閑静な住宅街', '名古屋市名東区'],
  '株式会社平安閣',
  4.3, 50
);

-- 30. 平安会館本山斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館本山斎場',
  'nagoya-heian-motoyama',
  'private_hall',
  '名古屋市千種区城山町に位置する平安会館の斎場。地下鉄東山線・名城線本山駅から徒歩圏内。名古屋大学近くの文教エリアに立地し、千種区・昭和区の方に利用されています。上品な内装の式場が特徴です。',
  '愛知県名古屋市千種区城山町3-13',
  'aichi', 'nagoya',
  35.161, 136.96,
  '地下鉄東山線 本山駅',
  8,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', '文教エリア', '名古屋市千種区'],
  '株式会社平安閣',
  4.2, 44
);

-- 31. 平安会館守山斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館守山斎場',
  'nagoya-heian-moriyama',
  'private_hall',
  '名古屋市守山区苗代に位置する平安会館の斎場。守山区中心部に立地し、守山区全域からアクセスしやすい場所にあります。駐車場を広く確保しており、車でのご来場に便利です。',
  '愛知県名古屋市守山区苗代2-1812',
  'aichi', 'nagoya',
  35.2, 136.968,
  '名鉄瀬戸線 小幡駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駐車場完備', '名古屋市守山区'],
  '株式会社平安閣',
  4.0, 38
);

-- 32. 愛昇殿レクストの杜太閤通
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜太閤通',
  'nagoya-aishoden-taikodori',
  'private_hall',
  '名古屋市中村区太閤通に位置する愛昇殿の葬儀会館。名古屋駅エリアからアクセスしやすい立地で、中村区の方を中心に利用されています。家族葬から一般葬まで対応し、温かみのある空間でお別れの時間を提供します。',
  '愛知県名古屋市中村区太閤通9-47',
  'aichi', 'nagoya',
  35.168, 136.871,
  '地下鉄桜通線 中村区役所駅',
  5,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市中村区'],
  '株式会社レクスト',
  4.1, 52
);

-- 33. 愛昇殿レクストの杜吹上
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜吹上',
  'nagoya-aishoden-fukiage',
  'private_hall',
  '名古屋市千種区に位置する愛昇殿の葬儀会館。地下鉄桜通線吹上駅から徒歩3分の好アクセス。自宅にいるような温もりを感じられる空間設計が特徴で、通夜・告別式・初七日法要まで手厚くサポートします。',
  '愛知県名古屋市千種区千種通7-25-1',
  'aichi', 'nagoya',
  35.156, 136.937,
  '地下鉄桜通線 吹上駅',
  3,
  70, 2, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅徒歩3分', '名古屋市千種区'],
  '株式会社レクスト',
  4.3, 68
);

-- 34. 愛昇殿レクストの杜東別院
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜東別院',
  'nagoya-aishoden-higashibetsuin',
  'private_hall',
  '名古屋市中区に位置する愛昇殿の葬儀会館。地下鉄名城線東別院駅から徒歩圏内。名古屋市中心部にありながら落ち着いた雰囲気を保つ式場で、中区・熱田区エリアの方に利用されています。',
  '愛知県名古屋市中区伊勢山2-7-23',
  'aichi', 'nagoya',
  35.153, 136.907,
  '地下鉄名城線 東別院駅',
  7,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 880000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市中区'],
  '株式会社レクスト',
  4.0, 45
);

-- 35. 愛昇殿レクストの杜堀田通
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜堀田通',
  'nagoya-aishoden-hottadori',
  'private_hall',
  '名古屋市瑞穂区堀田通に位置する愛昇殿の葬儀会館。名鉄名古屋本線堀田駅から徒歩圏内。瑞穂区・南区エリアの方に利用されています。少人数の家族葬から中規模の一般葬まで柔軟に対応できる式場を備えています。',
  '愛知県名古屋市瑞穂区堀田通8-21',
  'aichi', 'nagoya',
  35.122, 136.925,
  '名鉄名古屋本線 堀田駅',
  8,
  70, 2, false, 18,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市瑞穂区'],
  '株式会社レクスト',
  4.1, 40
);

-- 36. 愛昇殿レクストの杜道徳
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜道徳',
  'nagoya-aishoden-dotoku',
  'private_hall',
  '名古屋市南区道徳に位置する愛昇殿の葬儀会館。名鉄常滑線道徳駅から徒歩5分の好立地。南区エリアの方に多く利用されています。家族葬専用ホールを備え、少人数でのあたたかいお別れを実現します。',
  '愛知県名古屋市南区道徳通2-2',
  'aichi', 'nagoya',
  35.102, 136.906,
  '名鉄常滑線 道徳駅',
  5,
  60, 2, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市南区'],
  '株式会社レクスト',
  4.0, 38
);

-- 37. 愛昇殿レクストの杜小幡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜小幡',
  'nagoya-aishoden-obata',
  'private_hall',
  '名古屋市守山区に位置する愛昇殿の葬儀会館。名鉄瀬戸線小幡駅から徒歩圏内。守山区の方に多く利用されている地域密着型の式場で、アットホームな雰囲気が特徴です。',
  '愛知県名古屋市守山区小幡南3-20-28',
  'aichi', 'nagoya',
  35.198, 136.956,
  '名鉄瀬戸線 小幡駅',
  7,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市守山区'],
  '株式会社レクスト',
  4.2, 35
);

-- 38. 愛昇殿レクストの杜高畑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜高畑',
  'nagoya-aishoden-takabata',
  'private_hall',
  '名古屋市中川区高畑に位置する愛昇殿の葬儀会館。地下鉄東山線高畑駅から徒歩圏内。中川区西部エリアの方に利用されています。通夜から初七日法要までワンストップで対応する充実のサービスを提供しています。',
  '愛知県名古屋市中川区高畑4-91',
  'aichi', 'nagoya',
  35.154, 136.848,
  '地下鉄東山線 高畑駅',
  8,
  70, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市中川区'],
  '株式会社レクスト',
  4.0, 30
);

-- 39. イズモ葬祭名古屋貴賓館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモ葬祭名古屋貴賓館',
  'nagoya-izumo-kihinkan',
  'private_hall',
  '名古屋市中村区名駅南に位置するイズモ葬祭の旗艦式場。名古屋駅から徒歩圏内の好立地で、格式高い空間での葬儀を実現。300名収容の大ホールから家族葬専用ホールまで多彩な式場を完備しています。',
  '愛知県名古屋市中村区名駅南1-23-17',
  'aichi', 'nagoya',
  35.166, 136.885,
  'JR東海道本線 名古屋駅',
  10,
  300, 4, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true, "売店": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 450000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 750000}, {"type": "shaso", "label": "社葬プラン", "priceFrom": 1500000}]',
  ARRAY['家族葬対応', '一般葬対応', '社葬対応', '名古屋駅近く', '名古屋市中村区'],
  'イズモ葬祭',
  4.1, 78
);

-- 40. イズモホール中川野田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール中川野田',
  'nagoya-izumo-nakagawa-noda',
  'private_hall',
  '名古屋市中川区野田に位置するイズモ葬祭の葬儀ホール。家族葬専用の落ち着いた空間が特徴で、少人数でのお別れに最適。中川区・港区エリアの方に利用されています。清潔感のある新しい設備が好評です。',
  '愛知県名古屋市中川区野田3-213',
  'aichi', 'nagoya',
  35.143, 136.856,
  'あおなみ線 南荒子駅',
  12,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}]',
  ARRAY['家族葬専門', '少人数対応', '名古屋市中川区'],
  'イズモ葬祭',
  4.2, 42
);

-- 41. イズモホール桜山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール桜山',
  'nagoya-izumo-sakurayama',
  'private_hall',
  '名古屋市昭和区に位置するイズモ葬祭の葬儀ホール。地下鉄桜通線桜山駅から徒歩圏内の好立地。昭和区・瑞穂区エリアの方に利用されています。アットホームな雰囲気の式場で家族葬に特化しています。',
  '愛知県名古屋市昭和区若柳町2-2-1',
  'aichi', 'nagoya',
  35.142, 136.938,
  '地下鉄桜通線 桜山駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市昭和区'],
  'イズモ葬祭',
  4.3, 38
);

-- 42. イズモホール白川花音
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール白川花音',
  'nagoya-izumo-shirakawa-kanon',
  'private_hall',
  '名古屋市北区山田に位置するイズモ葬祭の葬儀ホール。花音（かのん）の名にふさわしい花に囲まれた温かな式場が特徴。北区エリアの方に親しまれています。1日1組貸切制で、プライベートな空間でのお別れを実現します。',
  '愛知県名古屋市北区山田1-6-35',
  'aichi', 'nagoya',
  35.204, 136.905,
  '地下鉄名城線 黒川駅',
  15,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 120000}]',
  ARRAY['家族葬専門', '1日1組貸切', '名古屋市北区'],
  'イズモ葬祭',
  4.4, 35
);

-- 43. イズモホール堀田追憶館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール堀田追憶館',
  'nagoya-izumo-hotta-tsuiokukan',
  'private_hall',
  '名古屋市瑞穂区堀田通に位置するイズモ葬祭の家族葬専用ホール。追憶館の名の通り、故人との思い出を大切にした空間設計。少人数のお別れに最適で、アットホームな雰囲気が好評です。',
  '愛知県名古屋市瑞穂区堀田通3-11',
  'aichi', 'nagoya',
  35.125, 136.921,
  '名鉄名古屋本線 堀田駅',
  5,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬専門', '少人数対応', '駅近', '名古屋市瑞穂区'],
  'イズモ葬祭',
  4.3, 30
);

-- 44. 家族葬のタクセル名古屋東
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋東',
  'nagoya-takusel-higashi',
  'private_hall',
  '名古屋市名東区に位置する家族葬専門の葬儀会館。2024年オープンの新しい施設で、最新設備を完備。1日1組完全貸切制でプライベートな空間を確保。家族葬に特化した温かみのある設計が特徴です。',
  '愛知県名古屋市名東区猪高台2-805',
  'aichi', 'nagoya',
  35.175, 136.998,
  '地下鉄東山線 上社駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}]',
  ARRAY['家族葬専門', '1日1組貸切', '新築会館', '名古屋市名東区'],
  '株式会社タクセル',
  4.5, 28
);

-- 45. 家族葬のタクセル名古屋港
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋港',
  'nagoya-takusel-minato',
  'private_hall',
  '名古屋市港区に位置する家族葬専門の葬儀会館。第二斎場に近い立地で火葬場への移動がスムーズ。1日1組完全貸切制で、少人数のお別れに最適な空間を提供しています。リーズナブルなプランが好評です。',
  '愛知県名古屋市港区当知1-1301',
  'aichi', 'nagoya',
  35.078, 136.867,
  'あおなみ線 荒子川公園駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '第二斎場近く', '名古屋市港区'],
  '株式会社タクセル',
  4.4, 22
);

-- 46. 家族葬のタクセル名古屋天白平針
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋天白平針',
  'nagoya-takusel-tenpaku-hirabari',
  'private_hall',
  '名古屋市天白区平針に位置する家族葬専門の葬儀会館。地下鉄鶴舞線平針駅から徒歩圏内。天白区・日進市エリアの方に利用されています。1日1組完全貸切制で温かいお別れの時間を提供します。',
  '愛知県名古屋市天白区平針3-1501',
  'aichi', 'nagoya',
  35.123, 136.976,
  '地下鉄鶴舞線 平針駅',
  8,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '駅近', '名古屋市天白区'],
  '株式会社タクセル',
  4.3, 25
);

-- 47. 家族葬のタクセル名古屋中村太閤通り
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋中村太閤通り',
  'nagoya-takusel-nakamura',
  'private_hall',
  '名古屋市中村区太閤通に位置する家族葬専門の葬儀会館。名古屋駅エリアからアクセスしやすく、中村区の方を中心に利用されています。リーズナブルな価格設定と丁寧なサービスが特徴の施設です。',
  '愛知県名古屋市中村区太閤通8-13',
  'aichi', 'nagoya',
  35.169, 136.869,
  '地下鉄桜通線 中村区役所駅',
  6,
  40, 1, false, 10,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '駅近', '名古屋市中村区'],
  '株式会社タクセル',
  4.2, 20
);

-- 48. 家族葬のタクセル名古屋西
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋西',
  'nagoya-takusel-nishi',
  'private_hall',
  '名古屋市西区に2025年オープンの家族葬専門葬儀会館。最新の設備とあたたかみのあるインテリアが特徴。西区・北区エリアの方に便利な立地で、少人数でのお別れに最適です。',
  '愛知県名古屋市西区浅間1-3-17',
  'aichi', 'nagoya',
  35.188, 136.881,
  '地下鉄鶴舞線 浅間町駅',
  5,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '新築会館', '駅近', '名古屋市西区'],
  '株式会社タクセル',
  4.5, 12
);

-- 49. 家族葬のタクセル名古屋中川荒子
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋中川荒子',
  'nagoya-takusel-nakagawa-arako',
  'private_hall',
  '名古屋市中川区荒子に位置する家族葬専門の葬儀会館。あおなみ線荒子駅から徒歩圏内で公共交通でのアクセスも便利。2025年オープンの新しい施設で、中川区エリアの方に利用されています。',
  '愛知県名古屋市中川区荒子4-225',
  'aichi', 'nagoya',
  35.15, 136.859,
  'あおなみ線 荒子駅',
  7,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '新築会館', '名古屋市中川区'],
  '株式会社タクセル',
  4.4, 15
);

-- 50. 家族葬のタクセル名古屋千種覚王山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋千種覚王山',
  'nagoya-takusel-chikusa-kakuozan',
  'private_hall',
  '名古屋市千種区覚王山エリアに位置する家族葬専門の葬儀会館。地下鉄東山線覚王山駅から徒歩圏内の好立地。閑静な住宅街に立地し、上品な雰囲気でお別れの時間を過ごせます。',
  '愛知県名古屋市千種区末盛通1-5',
  'aichi', 'nagoya',
  35.162, 136.956,
  '地下鉄東山線 覚王山駅',
  6,
  40, 1, false, 10,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '駅近', '名古屋市千種区'],
  '株式会社タクセル',
  4.5, 18
);

-- 51. 家族葬のタクセル名古屋瑞穂本願寺
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋瑞穂本願寺',
  'nagoya-takusel-mizuho-honganji',
  'private_hall',
  '名古屋市瑞穂区に位置する家族葬専門の葬儀会館。瑞穂区・昭和区エリアの方に利用されています。落ち着いた住宅街に立地し、静かな環境でお別れの時間を過ごせる施設です。',
  '愛知県名古屋市瑞穂区本願寺町2-51',
  'aichi', 'nagoya',
  35.131, 136.94,
  '地下鉄桜通線 瑞穂区役所駅',
  10,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '名古屋市瑞穂区'],
  '株式会社タクセル',
  4.3, 16
);

-- 52. 家族葬のタクセル名古屋昭和川名
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋昭和川名',
  'nagoya-takusel-showa-kawana',
  'private_hall',
  '名古屋市昭和区川名に位置する家族葬専門の葬儀会館。地下鉄鶴舞線川名駅から徒歩圏内。昭和区の閑静な住宅街に立地し、落ち着いた雰囲気でお別れの時間を提供しています。',
  '愛知県名古屋市昭和区川名本町4-37',
  'aichi', 'nagoya',
  35.147, 136.948,
  '地下鉄鶴舞線 川名駅',
  5,
  40, 1, false, 10,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '駅近', '名古屋市昭和区'],
  '株式会社タクセル',
  4.4, 14
);

-- 53. 家族葬のタクセル名古屋天白池場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋天白池場',
  'nagoya-takusel-tenpaku-ikeba',
  'private_hall',
  '名古屋市天白区池場に位置する家族葬専門の葬儀会館。地下鉄鶴舞線植田駅から徒歩圏内。天白区エリアの方に利用されています。2025年オープンの新しい施設です。',
  '愛知県名古屋市天白区池場5-1201',
  'aichi', 'nagoya',
  35.12, 136.965,
  '地下鉄鶴舞線 植田駅',
  10,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '新築会館', '名古屋市天白区'],
  '株式会社タクセル',
  4.5, 10
);

-- 54. 家族葬のタクセル名古屋高針原
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋高針原',
  'nagoya-takusel-takabariohara',
  'private_hall',
  '名古屋市名東区高針原に位置する家族葬専門の葬儀会館。名東区東部の閑静な住宅街に立地。2025年オープンの最新施設で、1日1組完全貸切のプライベート空間を提供しています。',
  '愛知県名古屋市名東区高針原2-1709',
  'aichi', 'nagoya',
  35.158, 137.005,
  '地下鉄東山線 星ヶ丘駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '新築会館', '1日1組貸切', '名古屋市名東区'],
  '株式会社タクセル',
  4.5, 8
);

-- 55. 家族葬のタクセル名古屋中川荒江
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル名古屋中川荒江',
  'nagoya-takusel-nakagawa-arae',
  'private_hall',
  '名古屋市中川区荒江に位置する家族葬専門の葬儀会館。中川区エリアの方に利用されています。2025年オープンの新しい施設で、落ち着いた内装と充実した設備が特徴です。',
  '愛知県名古屋市中川区荒江町3-35',
  'aichi', 'nagoya',
  35.146, 136.838,
  '近鉄名古屋線 伏屋駅',
  12,
  40, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '新築会館', '名古屋市中川区'],
  '株式会社タクセル',
  4.4, 10
);

-- 56. 紫雲殿千種斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿千種斎場',
  'nagoya-shiunden-chikusa',
  'private_hall',
  '名古屋市千種区に位置する紫雲殿の葬儀会館。千種区・東区エリアの方に多く利用されています。落ち着いた住宅街に立地し、静かな環境でお別れの時間を過ごせます。家族葬から一般葬まで対応可能です。',
  '愛知県名古屋市千種区仲田2-15-8',
  'aichi', 'nagoya',
  35.171, 136.935,
  '地下鉄東山線 池下駅',
  8,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市千種区'],
  '株式会社紫雲殿',
  4.1, 40
);

-- 57. 紫雲殿西斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿西斎場',
  'nagoya-shiunden-nishi',
  'private_hall',
  '名古屋市西区に位置する紫雲殿の葬儀会館。西区・北区エリアの方に利用されています。国道22号線沿いでアクセスしやすく、車での来場に便利。大型駐車場を完備しています。',
  '愛知県名古屋市西区上小田井2-247',
  'aichi', 'nagoya',
  35.202, 136.873,
  '名鉄犬山線 上小田井駅',
  10,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '大型駐車場', '名古屋市西区'],
  '株式会社紫雲殿',
  3.9, 33
);

-- 58. 紫雲殿天白斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿天白斎場',
  'nagoya-shiunden-tenpaku',
  'private_hall',
  '名古屋市天白区に位置する紫雲殿の葬儀会館。八事斎場に近い立地で、火葬場への移動がスムーズ。天白区・昭和区エリアの方に利用されています。緑豊かな環境で穏やかなお別れの時間を提供します。',
  '愛知県名古屋市天白区焼山1-320',
  'aichi', 'nagoya',
  35.119, 136.972,
  '地下鉄桜通線 相生山駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '八事斎場近く', '名古屋市天白区'],
  '株式会社紫雲殿',
  4.0, 36
);

-- 59. 紫雲殿熱田斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿熱田斎場',
  'nagoya-shiunden-atsuta',
  'private_hall',
  '名古屋市熱田区に位置する紫雲殿の葬儀会館。熱田神宮エリアの格式ある立地で、地下鉄名城線西高蔵駅から徒歩圏内。熱田区・中区エリアの方に利用されています。',
  '愛知県名古屋市熱田区西郷1-6-21',
  'aichi', 'nagoya',
  35.123, 136.896,
  '地下鉄名城線 西高蔵駅',
  7,
  80, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市熱田区'],
  '株式会社紫雲殿',
  4.0, 38
);

-- 60. 愛昇殿レクストの杜那古野
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜那古野',
  'nagoya-aishoden-nagono',
  'private_hall',
  '名古屋市西区那古野に位置する愛昇殿の葬儀会館。名古屋駅北エリアに位置し、アクセス便利。西区・北区の方に利用されています。モダンなデザインの式場と充実した設備が特徴です。',
  '愛知県名古屋市西区那古野2-23-21',
  'aichi', 'nagoya',
  35.178, 136.887,
  '地下鉄桜通線 国際センター駅',
  8,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '名古屋駅近く', '名古屋市西区'],
  '株式会社レクスト',
  4.1, 42
);

-- 61. 愛昇殿レクストの杜藤が丘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜藤が丘',
  'nagoya-aishoden-fujigaoka',
  'private_hall',
  '名古屋市名東区藤が丘に位置する愛昇殿の葬儀会館。地下鉄東山線藤が丘駅から徒歩圏内。名東区・長久手市エリアの方に利用されています。閑静な住宅街に立地し、落ち着いた環境での葬儀を実現します。',
  '愛知県名古屋市名東区藤が丘141',
  'aichi', 'nagoya',
  35.176, 137.01,
  '地下鉄東山線 藤が丘駅',
  8,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市名東区'],
  '株式会社レクスト',
  4.2, 38
);

-- 62. 愛昇殿レクストの杜鳴海
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜鳴海',
  'nagoya-aishoden-narumi',
  'private_hall',
  '名古屋市緑区鳴海に位置する愛昇殿の葬儀会館。名鉄名古屋本線鳴海駅から徒歩圏内。緑区エリアの方に利用されています。家族葬から一般葬まで対応可能な式場を備えています。',
  '愛知県名古屋市緑区鳴海町字向田95',
  'aichi', 'nagoya',
  35.073, 136.952,
  '名鉄名古屋本線 鳴海駅',
  8,
  70, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市緑区'],
  '株式会社レクスト',
  4.0, 32
);

-- 63. 愛昇殿レクストの杜六番町
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜六番町',
  'nagoya-aishoden-rokubancho',
  'private_hall',
  '名古屋市熱田区六番町に位置する愛昇殿の葬儀会館。地下鉄名港線六番町駅から徒歩5分の好立地。熱田区・港区エリアの方に利用されています。コンパクトながらも温かみのある式場が特徴です。',
  '愛知県名古屋市熱田区六番3-4-25',
  'aichi', 'nagoya',
  35.118, 136.893,
  '地下鉄名港線 六番町駅',
  5,
  50, 1, false, 12,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市熱田区'],
  '株式会社レクスト',
  4.0, 28
);

-- 64. 愛昇殿レクストの杜野並
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜野並',
  'nagoya-aishoden-nonami',
  'private_hall',
  '名古屋市天白区野並に位置する愛昇殿の葬儀会館。地下鉄桜通線野並駅から徒歩圏内。天白区・緑区エリアの方に利用されています。八事斎場への移動もスムーズな立地です。',
  '愛知県名古屋市天白区野並3-405',
  'aichi', 'nagoya',
  35.11, 136.958,
  '地下鉄桜通線 野並駅',
  7,
  60, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '八事斎場近く', '名古屋市天白区'],
  '株式会社レクスト',
  4.1, 30
);

-- 65. 愛昇殿レクストの杜徳重平手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜徳重平手',
  'nagoya-aishoden-tokushige-hirate',
  'private_hall',
  '名古屋市緑区徳重に位置する愛昇殿の葬儀会館。地下鉄桜通線徳重駅から徒歩圏内。緑区南部エリアの方に利用されています。新しい住宅地にふさわしい明るく清潔感のある式場が特徴です。',
  '愛知県名古屋市緑区平手南1-117',
  'aichi', 'nagoya',
  35.068, 136.968,
  '地下鉄桜通線 徳重駅',
  10,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市緑区'],
  '株式会社レクスト',
  4.2, 25
);

-- 66. イズモホール中川追憶館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール中川追憶館',
  'nagoya-izumo-nakagawa-tsuioku',
  'private_hall',
  '名古屋市中川区小碓通に位置するイズモ葬祭の家族葬専用ホール。追憶館シリーズとして故人を偲ぶ空間にこだわった設計。中川区・港区エリアの方に利用されています。',
  '愛知県名古屋市中川区小碓通1-23',
  'aichi', 'nagoya',
  35.125, 136.852,
  'あおなみ線 中島駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬専門', '少人数対応', '名古屋市中川区'],
  'イズモ葬祭',
  4.2, 28
);

-- 67. イズモホール守山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール守山',
  'nagoya-izumo-moriyama',
  'private_hall',
  '名古屋市守山区に位置するイズモ葬祭の葬儀ホール。守山区全域からアクセスしやすい立地にあり、家族葬から一般葬まで対応。落ち着いた雰囲気の式場と充実した駐車場が特徴です。',
  '愛知県名古屋市守山区大森3-1501',
  'aichi', 'nagoya',
  35.208, 136.978,
  '名鉄瀬戸線 大森・金城学院前駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '名古屋市守山区'],
  'イズモ葬祭',
  4.1, 35
);

-- 68. イズモホール緑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール緑',
  'nagoya-izumo-midori',
  'private_hall',
  '名古屋市緑区に位置するイズモ葬祭の葬儀ホール。緑区の閑静な住宅街に立地し、落ち着いた雰囲気でお別れの時間を提供。第二斎場への移動にも便利な立地です。',
  '愛知県名古屋市緑区大高町字田中18',
  'aichi', 'nagoya',
  35.058, 136.942,
  'JR東海道線 大高駅',
  10,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '第二斎場近く', '名古屋市緑区'],
  'イズモ葬祭',
  4.0, 30
);

-- 69. 愛昇殿レクストの杜南陽茶屋
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜南陽茶屋',
  'nagoya-aishoden-nanyo-chaya',
  'private_hall',
  '名古屋市港区南陽に位置する愛昇殿の葬儀会館。第二斎場に最も近い愛昇殿式場のひとつで、火葬場への移動がスムーズ。港区南部エリアの方に利用されています。',
  '愛知県名古屋市港区東茶屋1-158',
  'aichi', 'nagoya',
  35.065, 136.851,
  '名古屋市営バス 南陽大橋西',
  15,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '第二斎場近く', '名古屋市港区'],
  '株式会社レクスト',
  3.9, 22
);

-- 70. 愛昇殿レクストの杜太平通
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜太平通',
  'nagoya-aishoden-taiheidori',
  'private_hall',
  '名古屋市中川区太平通に位置する愛昇殿の葬儀会館。中川区中心部に位置し、アクセスしやすい立地。家族葬から中規模の葬儀まで対応可能な式場を備えています。',
  '愛知県名古屋市中川区太平通4-11',
  'aichi', 'nagoya',
  35.14, 136.865,
  'あおなみ線 荒子駅',
  10,
  70, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '名古屋市中川区'],
  '株式会社レクスト',
  4.0, 28
);

-- 71. 愛昇殿レクストの杜若葉通
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜若葉通',
  'nagoya-aishoden-wakabadori',
  'private_hall',
  '名古屋市北区若葉通に位置する愛昇殿の葬儀会館。地下鉄名城線志賀本通駅から徒歩圏内。北区エリアの方に多く利用されています。温かみのある内装と丁寧なスタッフ対応が好評です。',
  '愛知県名古屋市北区若葉通2-3',
  'aichi', 'nagoya',
  35.201, 136.915,
  '地下鉄名城線 志賀本通駅',
  7,
  60, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市北区'],
  '株式会社レクスト',
  4.1, 35
);

-- 72. 愛昇殿レクストの杜福徳
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜福徳',
  'nagoya-aishoden-fukutoku',
  'private_hall',
  '名古屋市北区福徳に位置する愛昇殿の葬儀会館。北区の閑静な住宅街に立地し、地域に根差した葬儀サービスを提供。少人数の家族葬に最適なコンパクトな式場が特徴です。',
  '愛知県名古屋市北区福徳町6-28',
  'aichi', 'nagoya',
  35.207, 136.928,
  '名鉄小牧線 上飯田駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '少人数対応', '名古屋市北区'],
  '株式会社レクスト',
  4.0, 22
);

-- 73. 愛昇殿レクストの杜自由ヶ丘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜自由ヶ丘',
  'nagoya-aishoden-jiyugaoka',
  'private_hall',
  '名古屋市千種区自由ヶ丘に位置する愛昇殿の葬儀会館。地下鉄名城線自由ヶ丘駅から徒歩圏内。千種区・名東区エリアの方に利用されています。閑静な住宅街に立地し上品な雰囲気の式場です。',
  '愛知県名古屋市千種区自由ヶ丘2-10-23',
  'aichi', 'nagoya',
  35.164, 136.972,
  '地下鉄名城線 自由ヶ丘駅',
  5,
  60, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市千種区'],
  '株式会社レクスト',
  4.2, 30
);

-- 74. 愛昇殿レクストの杜天白焼山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜天白焼山',
  'nagoya-aishoden-tenpaku-yakiyama',
  'private_hall',
  '名古屋市天白区焼山に位置する愛昇殿の葬儀会館。天白区南部エリアの方に利用されています。八事斎場への移動もスムーズで、落ち着いた環境での葬儀を実現します。',
  '愛知県名古屋市天白区焼山2-1514',
  'aichi', 'nagoya',
  35.117, 136.969,
  '地下鉄桜通線 相生山駅',
  15,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '八事斎場近く', '名古屋市天白区'],
  '株式会社レクスト',
  4.0, 25
);

-- 75. 愛昇殿レクストの杜本郷貴船
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜本郷貴船',
  'nagoya-aishoden-hongo-kifune',
  'private_hall',
  '名古屋市名東区本郷に位置する愛昇殿の葬儀会館。地下鉄東山線本郷駅から徒歩圏内。名東区・日進市方面の方に利用されています。アットホームな雰囲気で家族葬に適した式場です。',
  '愛知県名古屋市名東区本郷3-166',
  'aichi', 'nagoya',
  35.168, 137.002,
  '地下鉄東山線 本郷駅',
  7,
  60, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市名東区'],
  '株式会社レクスト',
  4.1, 28
);

-- 76. 瀬戸市斎苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '瀬戸市斎苑',
  'seto-shi-saien',
  'public_crematorium',
  '瀬戸市春雨町に位置する公営火葬場。火葬炉と式場を併設し、葬儀から火葬まで同じ場所で行えます。瀬戸市民は火葬料金が割引になります。自然に囲まれた静かな環境です。',
  '愛知県瀬戸市春雨町2',
  'aichi', 'seto',
  35.228, 137.087,
  '名鉄瀬戸線 尾張瀬戸駅',
  15,
  50, 1, true, 50,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '瀬戸市',
  3.7, 25
);

-- 77. 平安会館瀬戸斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館瀬戸斎場',
  'seto-heian-saijo',
  'private_hall',
  '瀬戸市に位置する平安会館の斎場。瀬戸市・尾張旭市エリアの方に利用されています。家族葬から一般葬まで対応可能な式場を備え、駐車場も充実しています。',
  '愛知県瀬戸市西追分町23',
  'aichi', 'seto',
  35.223, 137.075,
  '名鉄瀬戸線 瀬戸市役所前駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 28
);

-- 78. ティア津島
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア津島',
  'tsushima-tier',
  'private_hall',
  '津島市に位置するティアの葬儀会館。津島市・愛西市エリアの方に利用されています。家族葬に特化した温かみのある式場が特徴で、1日1組貸切制を採用しています。',
  '愛知県津島市中一色町市場128',
  'aichi', 'tsushima',
  35.178, 136.733,
  '名鉄津島線 津島駅',
  12,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '株式会社ティア',
  4.2, 30
);

-- 79. 碧南市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '碧南市斎場',
  'hekinan-shi-saijo',
  'public_crematorium',
  '碧南市に位置する公営火葬場。碧南市民は火葬料金が割引になります。式場も併設しており、葬儀から火葬まで同じ場所で行えます。閑静な環境に立地しています。',
  '愛知県碧南市伏見町5-50',
  'aichi', 'hekinan',
  34.874, 136.985,
  '名鉄三河線 北新川駅',
  15,
  40, 1, true, 40,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '碧南市',
  3.6, 18
);

-- 80. 蒲郡市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '蒲郡市斎場',
  'gamagori-shi-saijo',
  'public_crematorium',
  '蒲郡市に位置する公営火葬場。蒲郡市民は火葬料金が割引になります。三河湾を望む高台に立地し、静かな環境で故人をお見送りできます。式場を併設しています。',
  '愛知県蒲郡市竹谷町油井16-2',
  'aichi', 'gamagori',
  34.821, 137.218,
  'JR東海道線 蒲郡駅',
  20,
  40, 1, true, 40,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '蒲郡市',
  3.7, 20
);

-- 81. イズモホール蒲郡
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール蒲郡',
  'gamagori-izumo',
  'private_hall',
  '蒲郡市に位置するイズモ葬祭の葬儀ホール。蒲郡市中心部に立地し、家族葬から一般葬まで対応。蒲郡市・幸田町エリアの方に利用されています。',
  '愛知県蒲郡市神明町18-10',
  'aichi', 'gamagori',
  34.828, 137.223,
  'JR東海道線 蒲郡駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  'イズモ葬祭',
  4.1, 32
);

-- 82. 愛昇殿レクストの杜犬山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜犬山',
  'inuyama-aishoden',
  'private_hall',
  '犬山市に位置する愛昇殿の葬儀会館。犬山城下町エリアに立地し、犬山市・扶桑町の方に利用されています。温かみのある式場で家族葬に最適です。',
  '愛知県犬山市犬山東古券174',
  'aichi', 'inuyama',
  35.379, 136.941,
  '名鉄犬山線 犬山駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社レクスト',
  4.0, 22
);

-- 83. 常滑市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '常滑市斎場',
  'tokoname-shi-saijo',
  'public_crematorium',
  '常滑市に位置する公営火葬場。常滑市民は火葬料金が割引になります。知多半島の西海岸に位置し、静かな環境で故人をお見送りできます。',
  '愛知県常滑市大谷字浜条48',
  'aichi', 'tokoname',
  34.883, 136.838,
  '名鉄常滑線 常滑駅',
  20,
  40, 1, true, 30,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '常滑市',
  3.6, 15
);

-- 84. 紫雲殿東海斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿東海斎場',
  'tokai-shiunden',
  'private_hall',
  '東海市に位置する紫雲殿の葬儀会館。東海市・大府市エリアの方に利用されています。名鉄常滑線太田川駅からアクセス可能。家族葬から一般葬まで対応しています。',
  '愛知県東海市大田町後田60',
  'aichi', 'tokai',
  35.023, 136.851,
  '名鉄常滑線 太田川駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 28
);

-- 85. 紫雲殿大府斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿大府斎場',
  'obu-shiunden',
  'private_hall',
  '大府市に位置する紫雲殿の葬儀会館。JR東海道線大府駅からアクセスしやすく、大府市・東浦町の方に利用されています。落ち着いた雰囲気の式場が特徴です。',
  '愛知県大府市月見町6-113',
  'aichi', 'obu',
  35.008, 136.958,
  'JR東海道線 大府駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 25
);

-- 86. 平安会館知多中央斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館知多中央斎場',
  'chita-heian-chuo',
  'private_hall',
  '知多市にしの台に位置する平安会館の斎場。知多市・東海市エリアの方に利用されています。知多半島北部の拠点斎場として家族葬から一般葬まで対応しています。',
  '愛知県知多市にしの台4-1-17',
  'aichi', 'chita',
  34.978, 136.869,
  '名鉄常滑線 朝倉駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社平安閣',
  4.0, 28
);

-- 87. 愛昇殿レクストの杜知立
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜知立',
  'chiryu-aishoden',
  'private_hall',
  '知立市に位置する愛昇殿の葬儀会館。名鉄名古屋本線知立駅からアクセス可能。知立市・刈谷市エリアの方に利用されています。家族葬に最適な温かみのある式場です。',
  '愛知県知立市中町中128',
  'aichi', 'chiryu',
  35.0, 137.051,
  '名鉄名古屋本線 知立駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社レクスト',
  4.0, 22
);

-- 88. ティア知立
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア知立',
  'chiryu-tier',
  'private_hall',
  '知立市に位置するティアの葬儀会館。知立市中心部に立地し、家族葬から一般葬まで対応。清潔感のある新しい設備と丁寧なスタッフ対応が好評です。',
  '愛知県知立市新林町半場10',
  'aichi', 'chiryu',
  35.005, 137.045,
  '名鉄名古屋本線 知立駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社ティア',
  4.2, 30
);

-- 89. 紫雲殿豊明斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿豊明斎場',
  'toyoake-shiunden',
  'private_hall',
  '豊明市大久伝町に位置する紫雲殿の葬儀会館。豊明市・日進市エリアの方に利用されています。名鉄名古屋本線前後駅からアクセス可能。家族葬から一般葬まで対応しています。',
  '愛知県豊明市大久伝町西53',
  'aichi', 'toyoake',
  35.057, 136.982,
  '名鉄名古屋本線 前後駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.0, 25
);

-- 90. 平安会館豊明斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館豊明斎場',
  'toyoake-heian',
  'private_hall',
  '豊明市前後町に位置する平安会館の斎場。名鉄名古屋本線前後駅から徒歩圏内。豊明市・大府市エリアの方に利用されています。家族葬に最適な落ち着いた式場を備えています。',
  '愛知県豊明市前後町鎗ケ名1819-1',
  'aichi', 'toyoake',
  35.052, 136.974,
  '名鉄名古屋本線 前後駅',
  8,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.1, 30
);

-- 91. 平安会館日進斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館日進斎場',
  'nisshin-heian',
  'private_hall',
  '日進市浅田町に位置する平安会館の斎場。日進市・東郷町エリアの方に利用されています。閑静な住宅街に立地し、落ち着いた環境でのお別れを実現する施設です。',
  '愛知県日進市浅田町東田面63-6',
  'aichi', 'nisshin',
  35.122, 137.038,
  '名鉄豊田線 日進駅',
  12,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応'],
  '株式会社平安閣',
  4.1, 28
);

-- 92. 平安会館平針赤池斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館平針赤池斎場',
  'nisshin-heian-hirabari-akaike',
  'private_hall',
  '日進市赤池町に位置する平安会館の斎場。地下鉄鶴舞線赤池駅から徒歩圏内。日進市・名古屋市天白区エリアの方に利用されています。駅から近くアクセス便利です。',
  '愛知県日進市赤池町モチ口61-82',
  'aichi', 'nisshin',
  35.113, 137.013,
  '地下鉄鶴舞線 赤池駅',
  7,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.2, 32
);

-- 93. 紫雲殿北名古屋斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿北名古屋斎場',
  'kitanagoya-shiunden',
  'private_hall',
  '北名古屋市熊之庄に位置する紫雲殿の葬儀会館。北名古屋市・岩倉市エリアの方に利用されています。名鉄犬山線西春駅からアクセス可能。家族葬から一般葬まで対応しています。',
  '愛知県北名古屋市熊之庄八幡111',
  'aichi', 'kitanagoya',
  35.24, 136.871,
  '名鉄犬山線 西春駅',
  12,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社紫雲殿',
  4.0, 25
);

-- 94. ティア稲沢
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア稲沢',
  'inazawa-tier',
  'private_hall',
  '稲沢市に位置するティアの葬儀会館。稲沢市中心部に立地し、JR東海道線稲沢駅からアクセスしやすい。家族葬から一般葬まで対応可能で、稲沢市全域の方に利用されています。',
  '愛知県稲沢市駅前3-15-18',
  'aichi', 'inazawa',
  35.245, 136.787,
  'JR東海道線 稲沢駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 28
);

-- 95. ティア清須
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア清須',
  'kiyosu-tier',
  'private_hall',
  '清須市に位置するティアの葬儀会館。清須市・あま市エリアの方に利用されています。名鉄名古屋本線新清洲駅からアクセス可能。家族葬に特化した温かみのある式場です。',
  '愛知県清須市西枇杷島町花咲84',
  'aichi', 'kiyosu',
  35.197, 136.856,
  '名鉄名古屋本線 二ツ杁駅',
  8,
  60, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.2, 25
);

-- 96. 平安会館北名古屋斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館北名古屋斎場',
  'kitanagoya-heian',
  'private_hall',
  '北名古屋市に位置する平安会館の斎場。愛昇殿レクストの杜師勝としても知られ、北名古屋市・岩倉市エリアの方に利用されています。駐車場を広く確保しています。',
  '愛知県北名古屋市鹿田若宮3926-10',
  'aichi', 'kitanagoya',
  35.235, 136.863,
  '名鉄犬山線 西春駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 25
);

-- 97. 紫雲殿東郷斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿東郷斎場',
  'miyoshi-shiunden-togo',
  'private_hall',
  'みよし市に近い愛知郡東郷町に位置する紫雲殿の葬儀会館。みよし市・東郷町・日進市エリアの方に利用されています。国道153号線沿いでアクセスしやすい立地です。',
  '愛知県愛知郡東郷町春木白土2-114',
  'aichi', 'miyoshi',
  35.094, 137.042,
  '名鉄豊田線 日進駅',
  20,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '大型駐車場'],
  '株式会社紫雲殿',
  4.0, 22
);

-- 98. ティアあま
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティアあま',
  'ama-tier',
  'private_hall',
  'あま市に位置するティアの葬儀会館。あま市・津島市エリアの方に利用されています。家族葬に特化した温かみのある式場で、1日1組貸切制を採用。名古屋市西部からもアクセスしやすい立地です。',
  '愛知県あま市七宝町伊福壱之割97',
  'aichi', 'ama',
  35.172, 136.805,
  '名鉄津島線 七宝駅',
  10,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  '株式会社ティア',
  4.1, 22
);

-- 99. 平安会館尾張旭斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館尾張旭斎場',
  'owariasahi-heian',
  'private_hall',
  '尾張旭市に位置する平安会館の斎場。尾張旭市・瀬戸市エリアの方に利用されています。名鉄瀬戸線三郷駅から徒歩圏内。家族葬から一般葬まで対応可能です。',
  '愛知県尾張旭市三郷町中井田50',
  'aichi', 'owariasahi',
  35.217, 137.031,
  '名鉄瀬戸線 三郷駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 25
);

-- 100. ティア豊明
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア豊明',
  'toyoake-tier',
  'private_hall',
  '豊明市に位置するティアの葬儀会館。豊明市中心部に立地し、名鉄名古屋本線前後駅からアクセスしやすい。家族葬から一般葬まで対応可能で、豊明市全域の方に利用されています。',
  '愛知県豊明市前後町善江1630',
  'aichi', 'toyoake',
  35.048, 136.978,
  '名鉄名古屋本線 前後駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.2, 28
);

-- 101. ティア東海
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア東海',
  'tokai-tier',
  'private_hall',
  '東海市に位置するティアの葬儀会館。東海市中心部に立地し、名鉄常滑線太田川駅からアクセスしやすい。家族葬から一般葬まで対応可能です。',
  '愛知県東海市大田町汐田12',
  'aichi', 'tokai',
  35.019, 136.854,
  '名鉄常滑線 太田川駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 30
);

-- 102. 江南市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '江南市斎場',
  'konan-aichi-shi-saijo',
  'public_crematorium',
  '江南市に位置する公営火葬場。江南市・岩倉市エリアの方に利用されています。式場を併設し、葬儀から火葬まで同じ場所で行えます。市民は火葬料金が割引になります。',
  '愛知県江南市前飛保町河原65',
  'aichi', 'konan-aichi',
  35.331, 136.874,
  '名鉄犬山線 江南駅',
  15,
  40, 1, true, 40,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '江南市',
  3.6, 18
);

-- 103. 高浜市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '高浜市斎場',
  'takahama-shi-saijo',
  'public_crematorium',
  '高浜市に位置する公営火葬場。高浜市民は火葬料金が割引になります。コンパクトながらも必要な設備を備えた施設で、静かな環境で故人をお見送りできます。',
  '愛知県高浜市碧海町5-7-1',
  'aichi', 'takahama',
  34.916, 136.987,
  '名鉄三河線 高浜港駅',
  12,
  30, 1, true, 30,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '高浜市',
  3.5, 12
);

-- 104. 田原市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '田原市斎場',
  'tahara-shi-saijo',
  'public_crematorium',
  '田原市に位置する公営火葬場。渥美半島エリアの方に利用される唯一の公営火葬場です。田原市民は火葬料金が割引になります。式場を併設し葬儀から火葬まで対応可能。',
  '愛知県田原市田原町東山口20-2',
  'aichi', 'tahara',
  34.669, 137.265,
  '豊橋鉄道渥美線 三河田原駅',
  15,
  40, 1, true, 40,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '田原市',
  3.6, 15
);

-- 105. 紫雲殿長久手斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿長久手斎場',
  'nagakute-shiunden',
  'private_hall',
  '長久手市に位置する紫雲殿の葬儀会館。長久手市・名古屋市名東区エリアの方に利用されています。リニモ長久手古戦場駅からアクセス可能。新しい住宅地に立地し、清潔感のある設備が特徴です。',
  '愛知県長久手市前熊下田14',
  'aichi', 'nagakute',
  35.173, 137.048,
  'リニモ 長久手古戦場駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社紫雲殿',
  4.1, 20
);

-- 106. ティア小牧
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア小牧',
  'komaki-tier',
  'private_hall',
  '小牧市に位置するティアの葬儀会館。小牧市中心部に立地し、名鉄小牧線小牧駅からアクセスしやすい。家族葬から一般葬まで対応可能で、小牧市・春日井市北部の方に利用されています。',
  '愛知県小牧市中央5-270',
  'aichi', 'komaki',
  35.289, 136.918,
  '名鉄小牧線 小牧駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 35
);

-- 107. イズモホール小牧
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール小牧',
  'komaki-izumo',
  'private_hall',
  '小牧市に位置するイズモ葬祭の葬儀ホール。家族葬に特化した温かみのある式場が特徴。小牧市・岩倉市エリアの方に利用されています。1日1組貸切制を採用しています。',
  '愛知県小牧市北外山入鹿新田1090',
  'aichi', 'komaki',
  35.295, 136.934,
  '名鉄小牧線 間内駅',
  10,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  'イズモ葬祭',
  4.2, 25
);

-- 108. 平安会館半田乙川梅定ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館半田乙川梅定ホール',
  'handa-heian-otogawa',
  'private_hall',
  '半田市大池町に位置する平安会館の斎場（梅定ホール）。半田市・阿久比町エリアの方に利用されています。知多半島中部の拠点斎場として家族葬から一般葬まで対応しています。',
  '愛知県半田市大池町4-54-1',
  'aichi', 'handa',
  34.891, 136.932,
  '名鉄河和線 知多半田駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社平安閣',
  4.0, 28
);

-- 109. 平安会館半田花園梅定ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館半田花園梅定ホール',
  'handa-heian-hanazono',
  'private_hall',
  '半田市花園町に位置する平安会館の斎場（梅定ホール）。名鉄河和線住吉町駅から徒歩圏内。半田市南部エリアの方に利用されています。',
  '愛知県半田市花園町1-1-19',
  'aichi', 'handa',
  34.88, 136.938,
  '名鉄河和線 住吉町駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.1, 22
);

-- 110. イズモホール西尾
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール西尾',
  'nishio-izumo',
  'private_hall',
  '西尾市に位置するイズモ葬祭の葬儀ホール。西尾市中心部に立地し、家族葬から一般葬まで対応。西尾市全域の方に利用されています。清潔感のある設備が好評です。',
  '愛知県西尾市寄住町下田22',
  'aichi', 'nishio',
  34.864, 137.058,
  '名鉄西尾線 西尾駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  'イズモ葬祭',
  4.1, 30
);

-- 111. ティア西尾
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア西尾',
  'nishio-tier',
  'private_hall',
  '西尾市に位置するティアの葬儀会館。西尾市・幸田町エリアの方に利用されています。家族葬に特化した温かみのある式場で、少人数でのお別れに最適です。',
  '愛知県西尾市花ノ木町2-3-7',
  'aichi', 'nishio',
  34.858, 137.052,
  '名鉄西尾線 西尾口駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.2, 28
);

-- 112. イズモホール豊川
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール豊川',
  'toyokawa-izumo',
  'private_hall',
  '豊川市に位置するイズモ葬祭の葬儀ホール。豊川市中心部に立地し、家族葬から一般葬まで対応。豊川稲荷の門前町エリアに位置し、地域の方に親しまれています。',
  '愛知県豊川市豊川町仁保通26',
  'aichi', 'toyokawa',
  34.829, 137.371,
  'JR飯田線 豊川駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  'イズモ葬祭',
  4.0, 32
);

-- 113. ティア岩倉
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア岩倉',
  'iwakura-tier',
  'private_hall',
  '岩倉市に位置するティアの葬儀会館。名鉄犬山線岩倉駅から徒歩圏内。岩倉市・江南市エリアの方に利用されています。コンパクトながらも温かみのある式場が特徴です。',
  '愛知県岩倉市本町畑中22',
  'aichi', 'iwakura',
  35.28, 136.871,
  '名鉄犬山線 岩倉駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 20
);

-- 114. 愛昇殿レクストの杜豊明三崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜豊明三崎',
  'toyoake-aishoden-misaki',
  'private_hall',
  '豊明市三崎町に位置する愛昇殿の葬儀会館。豊明市・大府市エリアの方に利用されています。家族葬に最適なコンパクトな式場を備え、温かみのある内装が特徴です。',
  '愛知県豊明市三崎町中ノ坪15-1',
  'aichi', 'toyoake',
  35.043, 136.965,
  '名鉄名古屋本線 豊明駅',
  10,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 18
);

-- 115. 愛昇殿レクストの杜東郷
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜東郷',
  'miyoshi-aishoden-togo',
  'private_hall',
  'みよし市近郊の東郷町に位置する愛昇殿の葬儀会館。みよし市・東郷町・日進市エリアの方に利用されています。落ち着いた住宅街に立地し、家族葬に最適な式場です。',
  '愛知県愛知郡東郷町春木台3-1-7',
  'aichi', 'miyoshi',
  35.096, 137.035,
  '名鉄豊田線 日進駅',
  18,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 18
);

-- 116. ティア大府
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア大府',
  'obu-tier',
  'private_hall',
  '大府市に位置するティアの葬儀会館。JR東海道線大府駅からアクセスしやすい立地。大府市・東浦町エリアの方に利用されています。家族葬から一般葬まで対応可能です。',
  '愛知県大府市中央町1-204',
  'aichi', 'obu',
  35.012, 136.963,
  'JR東海道線 大府駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 28
);

-- 117. ティア知多
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア知多',
  'chita-tier',
  'private_hall',
  '知多市に位置するティアの葬儀会館。知多市中心部に立地し、名鉄常滑線朝倉駅からアクセス可能。知多市・東海市エリアの方に利用されています。',
  '愛知県知多市つつじが丘3-12-7',
  'aichi', 'chita',
  34.973, 136.875,
  '名鉄常滑線 朝倉駅',
  10,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応'],
  '株式会社ティア',
  4.0, 22
);

-- 118. 平安会館萩原斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館萩原斎場',
  'ichinomiya-heian-hagiwara',
  'private_hall',
  '一宮市萩原町に位置する平安会館の斎場。一宮市西部・稲沢市エリアの方に利用されています。落ち着いた雰囲気の式場が特徴で、家族葬に最適な空間を提供しています。',
  '愛知県一宮市萩原町戸苅字上畑247',
  'aichi', 'ichinomiya',
  35.287, 136.768,
  '名鉄尾西線 二子駅',
  10,
  60, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応'],
  '株式会社平安閣',
  3.9, 20
);

-- 119. イズモホール犬山
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール犬山',
  'inuyama-izumo',
  'private_hall',
  '犬山市に位置するイズモ葬祭の葬儀ホール。犬山市・扶桑町エリアの方に利用されています。家族葬に特化した温かみのある式場で、1日1組貸切制を採用しています。',
  '愛知県犬山市五郎丸東3-73',
  'aichi', 'inuyama',
  35.372, 136.948,
  '名鉄犬山線 犬山口駅',
  10,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  'イズモ葬祭',
  4.1, 20
);

-- 120. イズモホール常滑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール常滑',
  'tokoname-izumo',
  'private_hall',
  '常滑市に位置するイズモ葬祭の葬儀ホール。常滑市・知多市南部エリアの方に利用されています。知多半島の伝統的な雰囲気を活かした落ち着いた式場が特徴です。',
  '愛知県常滑市飛香台3-8-10',
  'aichi', 'tokoname',
  34.892, 136.848,
  '名鉄常滑線 常滑駅',
  12,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応'],
  'イズモ葬祭',
  4.0, 18
);

-- 121. イズモホール碧南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール碧南',
  'hekinan-izumo',
  'private_hall',
  '碧南市に位置するイズモ葬祭の葬儀ホール。碧南市・高浜市エリアの方に利用されています。家族葬専用のホールを備え、少人数でのお別れに最適な空間を提供しています。',
  '愛知県碧南市松本町152',
  'aichi', 'hekinan',
  34.881, 136.992,
  '名鉄三河線 碧南駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '駅近'],
  'イズモ葬祭',
  4.0, 18
);

-- 122. イズモホール蒲郡形原
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール蒲郡形原',
  'gamagori-izumo-katahara',
  'private_hall',
  '蒲郡市形原町に位置するイズモ葬祭の葬儀ホール。蒲郡市南部エリアの方に利用されています。家族葬に特化した落ち着いた式場が特徴です。',
  '愛知県蒲郡市形原町東中畑22-1',
  'aichi', 'gamagori',
  34.795, 137.218,
  '名鉄蒲郡線 形原駅',
  8,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '駅近'],
  'イズモ葬祭',
  4.0, 15
);

-- 123. ティア長久手
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア長久手',
  'nagakute-tier',
  'private_hall',
  '長久手市に位置するティアの葬儀会館。リニモ杁ケ池公園駅からアクセスしやすい立地。長久手市・名東区東部エリアの方に利用されています。新しい住宅地の方に人気です。',
  '愛知県長久手市杁ケ池108',
  'aichi', 'nagakute',
  35.166, 137.052,
  'リニモ 杁ケ池公園駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.2, 22
);

-- 124. ティア日進
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア日進',
  'nisshin-tier',
  'private_hall',
  '日進市に位置するティアの葬儀会館。名鉄豊田線日進駅からアクセスしやすい立地。日進市・東郷町エリアの方に利用されています。家族葬に最適な温かみのある式場です。',
  '愛知県日進市栄3-1113',
  'aichi', 'nisshin',
  35.127, 137.028,
  '名鉄豊田線 日進駅',
  8,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.1, 25
);

-- 125. ティアみよし
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティアみよし',
  'miyoshi-tier',
  'private_hall',
  'みよし市に位置するティアの葬儀会館。みよし市中心部に立地し、豊田市南部エリアの方にも利用されています。家族葬から一般葬まで対応可能な式場を備えています。',
  '愛知県みよし市三好町蜂ケ池27-1',
  'aichi', 'miyoshi',
  35.083, 137.066,
  '名鉄豊田線 三好ヶ丘駅',
  12,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社ティア',
  4.1, 25
);

-- 126. 愛昇殿レクストの杜北岡崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜北岡崎',
  'okazaki-aishoden-kitaokazaki',
  'private_hall',
  '岡崎市に位置する愛昇殿の葬儀会館。名鉄名古屋本線北岡崎駅から徒歩圏内。岡崎市北部の方に利用されています。家族葬に最適なコンパクトな式場が特徴です。',
  '愛知県岡崎市葵町2-10',
  'aichi', 'okazaki',
  34.963, 137.153,
  '名鉄名古屋本線 北岡崎駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社レクスト',
  4.0, 25
);

-- 127. イズモホール岡崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール岡崎',
  'okazaki-izumo',
  'private_hall',
  '岡崎市に位置するイズモ葬祭の葬儀ホール。家族葬から一般葬まで対応可能な複数の式場を備え、岡崎市全域の方に利用されています。清潔感のある館内と丁寧な対応が好評です。',
  '愛知県岡崎市竜美南2-1-13',
  'aichi', 'okazaki',
  34.946, 137.175,
  '名鉄名古屋本線 東岡崎駅',
  12,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  'イズモ葬祭',
  4.1, 45
);

-- 128. 家族葬のタクセル岡崎
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル岡崎',
  'okazaki-takusel',
  'private_hall',
  '岡崎市に位置する家族葬専門の葬儀会館。1日1組完全貸切制で、プライベートな空間でのお別れを実現。リーズナブルな料金で質の高い葬儀サービスを提供しています。',
  '愛知県岡崎市矢作町字西河原137-2',
  'aichi', 'okazaki',
  34.938, 137.142,
  '名鉄名古屋本線 矢作橋駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '低価格'],
  '株式会社タクセル',
  4.3, 22
);

-- 129. 平安会館一宮中央斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館一宮中央斎場',
  'ichinomiya-heian-chuo',
  'private_hall',
  '一宮市真清田に位置する平安会館の斎場。一宮市中心部に立地し、一宮駅からのアクセスも良好。150名収容の大ホールから家族葬専用ホールまで備えた充実の施設です。',
  '愛知県一宮市真清田1-1-4',
  'aichi', 'ichinomiya',
  35.304, 136.797,
  'JR東海道線 尾張一宮駅',
  10,
  150, 3, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '大ホール完備', '駅近'],
  '株式会社平安閣',
  4.1, 52
);

-- 130. 平安会館木曽川斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館木曽川斎場',
  'ichinomiya-heian-kisogawa',
  'private_hall',
  '一宮市木曽川町に位置する平安会館の斎場。木曽川エリアの方に利用されています。落ち着いた雰囲気の式場で家族葬から一般葬まで対応可能。充実した駐車場を完備しています。',
  '愛知県一宮市木曽川町黒田二ノ通り12',
  'aichi', 'ichinomiya',
  35.327, 136.781,
  '名鉄名古屋本線 新木曽川駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 30
);

-- 131. 平安会館今伊勢斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館今伊勢斎場',
  'ichinomiya-heian-imaise',
  'private_hall',
  '一宮市今伊勢町に位置する平安会館の斎場。名鉄名古屋本線今伊勢駅から徒歩圏内。一宮市南部エリアの方に利用されています。アットホームな雰囲気の式場が特徴です。',
  '愛知県一宮市今伊勢町新神戸字九反野40-1',
  'aichi', 'ichinomiya',
  35.292, 136.803,
  '名鉄名古屋本線 今伊勢駅',
  7,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 25
);

-- 132. 愛昇殿レクストの杜一宮奥町
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜一宮奥町',
  'ichinomiya-aishoden-okumachi',
  'private_hall',
  '一宮市奥町に位置する愛昇殿の葬儀会館。一宮市北部エリアの方に利用されています。国道22号線からのアクセスが良好で、車での来場に便利です。',
  '愛知県一宮市奥町字六丁山26-5',
  'aichi', 'ichinomiya',
  35.318, 136.807,
  '名鉄尾西線 奥町駅',
  10,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 22
);

-- 133. 愛昇殿レクストの杜一宮朝日
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜一宮朝日',
  'ichinomiya-aishoden-asahi',
  'private_hall',
  '一宮市朝日に位置する愛昇殿の葬儀会館。一宮市西部エリアの方に利用されています。温かみのある内装と落ち着いた雰囲気で、家族葬に最適な空間を提供しています。',
  '愛知県一宮市朝日2-6-12',
  'aichi', 'ichinomiya',
  35.298, 136.787,
  'JR東海道線 尾張一宮駅',
  15,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.1, 20
);

-- 134. 平安会館豊田土橋斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館豊田土橋斎場',
  'toyota-heian-dobashi',
  'private_hall',
  '豊田市寿町に位置する平安会館の斎場。名鉄三河線土橋駅から徒歩圏内。豊田市中心部に位置し、豊田市全域からアクセスしやすい場所にあります。家族葬から一般葬まで幅広く対応しています。',
  '愛知県豊田市寿町7-94-3',
  'aichi', 'toyota',
  35.068, 137.158,
  '名鉄三河線 土橋駅',
  8,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  '株式会社平安閣',
  4.2, 48
);

-- 135. 平安会館猿投駅前斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館猿投駅前斎場',
  'toyota-heian-sanage',
  'private_hall',
  '豊田市井上町に位置する平安会館の斎場。名鉄三河線猿投駅から徒歩すぐの好立地。豊田市北部・東部エリアの方に利用されています。落ち着いた雰囲気の式場が特徴です。',
  '愛知県豊田市井上町5-74-5',
  'aichi', 'toyota',
  35.114, 137.173,
  '名鉄三河線 猿投駅',
  3,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅徒歩3分'],
  '株式会社平安閣',
  4.0, 30
);

-- 136. 家族葬ホール喪安豊橋
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬ホール喪安豊橋',
  'toyohashi-moan',
  'private_hall',
  '豊橋市に位置する家族葬専門の葬儀ホール。少人数でのお別れに特化した落ち着いた空間が特徴。1日1組貸切制で、プライベートな空間での葬儀を実現します。リーズナブルな料金設定が好評です。',
  '愛知県豊橋市東小田原町27-1',
  'aichi', 'toyohashi',
  34.769, 137.392,
  'JR東海道線 豊橋駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '少人数対応'],
  '家族葬ホール喪安',
  4.3, 28
);

-- 137. イズモホール豊橋貴賓館
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール豊橋貴賓館',
  'toyohashi-izumo-kihinkan',
  'private_hall',
  '豊橋市に位置するイズモ葬祭の旗艦式場。200名収容の大ホールから家族葬専用ホールまで多彩な式場を完備。豊橋市内最大級の葬儀会館として格式高い葬儀から家族葬まで幅広く対応しています。',
  '愛知県豊橋市前田南町2-16-12',
  'aichi', 'toyohashi',
  34.758, 137.378,
  'JR東海道線 豊橋駅',
  20,
  200, 3, false, 80,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true, "売店": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]',
  ARRAY['家族葬対応', '一般葬対応', '大ホール完備', '大型駐車場'],
  'イズモ葬祭',
  4.1, 55
);

-- 138. イズモホール豊橋桜丘
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール豊橋桜丘',
  'toyohashi-izumo-sakuragaoka',
  'private_hall',
  '豊橋市桜丘に位置するイズモ葬祭の葬儀ホール。閑静な住宅街に立地し、家族葬に特化した温かみのある式場。桜丘地区・向山地区の方に利用されています。',
  '愛知県豊橋市桜丘町14',
  'aichi', 'toyohashi',
  34.752, 137.399,
  '豊橋鉄道渥美線 柳生橋駅',
  10,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '少人数対応'],
  'イズモ葬祭',
  4.2, 32
);

-- 139. イズモホール豊橋西幸
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール豊橋西幸',
  'toyohashi-izumo-nishisaiwai',
  'private_hall',
  '豊橋市西幸町に位置するイズモ葬祭の葬儀ホール。豊橋市西部エリアの方に利用されています。家族葬専用ホールを備え、少人数でのお別れに最適な空間を提供します。',
  '愛知県豊橋市西幸町字浜池47-3',
  'aichi', 'toyohashi',
  34.761, 137.355,
  'JR東海道線 二川駅',
  20,
  50, 1, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '少人数対応'],
  'イズモ葬祭',
  4.0, 25
);

-- 140. 家族葬のトワーズ豊橋
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のトワーズ豊橋',
  'toyohashi-towas',
  'private_hall',
  '豊橋市に位置する家族葬のトワーズの葬儀会館。家族葬専門で低価格を実現。シンプルで清潔感のある式場が特徴で、1日1組貸切制のプライベート空間を提供しています。',
  '愛知県豊橋市牟呂町字大西72',
  'aichi', 'toyohashi',
  34.773, 137.36,
  'JR東海道線 豊橋駅',
  25,
  30, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['家族葬専門', '低価格', '1日1組貸切'],
  '家族葬のトワーズ',
  4.2, 20
);

-- 141. ティア豊橋南
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア豊橋南',
  'toyohashi-tier-minami',
  'private_hall',
  '豊橋市南部に位置するティアの葬儀会館。豊橋市南部・田原市エリアの方に利用されています。家族葬から一般葬まで対応可能な式場を備え、充実した駐車場を完備しています。',
  '愛知県豊橋市大岩町字岩田21-3',
  'aichi', 'toyohashi',
  34.735, 137.384,
  '豊橋鉄道渥美線 老津駅',
  15,
  80, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場'],
  '株式会社ティア',
  4.1, 35
);

-- 142. 平安会館豊橋斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館豊橋斎場',
  'toyohashi-heian-saijo',
  'private_hall',
  '豊橋市に位置する平安会館の斎場。豊橋市中心部に立地し、JR豊橋駅からのアクセスも良好。家族葬から一般葬まで幅広く対応し、三河地区の方に信頼されている葬儀会館です。',
  '愛知県豊橋市花田町字西宿75',
  'aichi', 'toyohashi',
  34.765, 137.385,
  'JR東海道線 豊橋駅',
  12,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  '株式会社平安閣',
  4.0, 42
);

-- 143. 愛昇殿レクストの杜岡崎洞
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜岡崎洞',
  'okazaki-aishoden-hora',
  'private_hall',
  '岡崎市洞町に位置する愛昇殿の葬儀会館。岡崎市北部エリアの方に利用されています。家族葬から一般葬まで対応可能で、充実した設備と丁寧なスタッフ対応が好評です。',
  '愛知県岡崎市洞町字的場17-1',
  'aichi', 'okazaki',
  34.972, 137.165,
  '名鉄名古屋本線 男川駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 880000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社レクスト',
  4.1, 38
);

-- 144. 愛昇殿レクストの杜岡崎欠町
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜岡崎欠町',
  'okazaki-aishoden-kakemachi',
  'private_hall',
  '岡崎市欠町に位置する愛昇殿の葬儀会館。名鉄名古屋本線東岡崎駅から車で5分の好立地。岡崎市中心部の方に利用されています。温かみのある式場でお別れの時間を提供します。',
  '愛知県岡崎市欠町字鳥居戸15-4',
  'aichi', 'okazaki',
  34.95, 137.17,
  '名鉄名古屋本線 東岡崎駅',
  15,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 30
);

-- 145. 愛昇殿レクストの杜岡崎上和田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜岡崎上和田',
  'okazaki-aishoden-kamiwada',
  'private_hall',
  '岡崎市上和田町に位置する愛昇殿の葬儀会館。JR岡崎駅からのアクセスが便利で、岡崎市南部エリアの方に利用されています。清潔感のある新しい設備が好評の式場です。',
  '愛知県岡崎市上和田町字南天白24-3',
  'aichi', 'okazaki',
  34.928, 137.158,
  'JR東海道線 岡崎駅',
  12,
  70, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社レクスト',
  4.1, 28
);

-- 146. 平安会館豊田藤岡さとび斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '平安会館豊田藤岡さとび斎場',
  'toyota-heian-fujioka-satobi',
  'private_hall',
  '豊田市藤岡飯野町に位置する平安会館の斎場。豊田市北西部・藤岡地区の方に利用されています。自然に囲まれた静かな環境で、穏やかなお別れの時間を提供する施設です。',
  '愛知県豊田市藤岡飯野町辻戸907-1',
  'aichi', 'toyota',
  35.138, 137.105,
  '愛知環状鉄道 四郷駅',
  25,
  60, 1, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '自然に囲まれた環境'],
  '株式会社平安閣',
  3.9, 20
);

-- 147. イズモホール豊田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール豊田',
  'toyota-izumo',
  'private_hall',
  '豊田市に位置するイズモ葬祭の葬儀ホール。豊田市中心部に立地し、家族葬から一般葬まで対応。家族葬専用ホールを完備し、温かみのある空間でお別れの時間を提供しています。',
  '愛知県豊田市小坂本町5-8-1',
  'aichi', 'toyota',
  35.083, 137.156,
  '名鉄三河線 豊田市駅',
  10,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  'イズモ葬祭',
  4.1, 40
);

-- 148. 家族葬のタクセル豊田
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '家族葬のタクセル豊田',
  'toyota-takusel',
  'private_hall',
  '豊田市に位置する家族葬専門の葬儀会館。1日1組完全貸切制でプライベートな空間を確保。リーズナブルな料金と丁寧なサービスが好評の施設です。',
  '愛知県豊田市御幸本町3-179',
  'aichi', 'toyota',
  35.078, 137.148,
  '名鉄三河線 豊田市駅',
  12,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '低価格'],
  '株式会社タクセル',
  4.3, 18
);

-- 149. 紫雲殿春日井朝宮斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '紫雲殿春日井朝宮斎場',
  'kasugai-shiunden-asamiya',
  'private_hall',
  '春日井市高山町に位置する紫雲殿の葬儀会館。春日井市中心部からアクセスしやすい立地。家族葬から一般葬まで対応可能で、落ち着いた雰囲気の式場が特徴です。',
  '愛知県春日井市高山町2-10-23',
  'aichi', 'kasugai',
  35.257, 136.969,
  'JR中央本線 春日井駅',
  15,
  80, 2, false, 35,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応'],
  '株式会社紫雲殿',
  4.0, 35
);

-- 150. ティア春日井中央
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア春日井中央',
  'kasugai-tier-chuo',
  'private_hall',
  '春日井市中心部に位置するティアの葬儀会館。春日井市全域からアクセスしやすい立地。家族葬から一般葬まで幅広く対応し、清潔感のある新しい設備が好評です。',
  '愛知県春日井市中央通1-38',
  'aichi', 'kasugai',
  35.247, 136.972,
  'JR中央本線 春日井駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  '株式会社ティア',
  4.2, 42
);

-- 151. イズモホール春日井
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'イズモホール春日井',
  'kasugai-izumo',
  'private_hall',
  '春日井市に位置するイズモ葬祭の葬儀ホール。家族葬に特化した温かみのある式場が特徴。春日井市・小牧市エリアの方に利用されています。1日1組貸切制を採用しています。',
  '愛知県春日井市鳥居松町5-78',
  'aichi', 'kasugai',
  35.251, 136.958,
  'JR中央本線 春日井駅',
  12,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬対応', '1日1組貸切'],
  'イズモ葬祭',
  4.1, 28
);

-- 152. ティア安城
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア安城',
  'anjo-tier',
  'private_hall',
  '安城市に位置するティアの葬儀会館。JR東海道線安城駅からアクセスしやすい立地。家族葬から一般葬まで対応可能な式場を備え、安城市全域の方に利用されています。',
  '愛知県安城市三河安城南町1-14-2',
  'aichi', 'anjo',
  34.954, 137.075,
  'JR東海道線 三河安城駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近'],
  '株式会社ティア',
  4.1, 35
);

-- 153. 愛昇殿レクストの杜安城
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜安城',
  'anjo-aishoden',
  'private_hall',
  '安城市に位置する愛昇殿の葬儀会館。安城市中心部に立地し、家族葬に最適なコンパクトな式場を備えています。温かみのある内装と丁寧な対応が好評です。',
  '愛知県安城市安城町庄司作25-1',
  'aichi', 'anjo',
  34.959, 137.084,
  'JR東海道線 安城駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 25
);

-- 154. ティア刈谷
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  'ティア刈谷',
  'kariya-tier-kariya',
  'private_hall',
  '刈谷市に位置するティアの葬儀会館。JR東海道線刈谷駅からアクセスしやすく、刈谷市全域の方に利用されています。家族葬から一般葬まで対応し、充実した設備が特徴です。',
  '愛知県刈谷市東刈谷町1-12-7',
  'aichi', 'kariya',
  34.982, 137.019,
  'JR東海道線 東刈谷駅',
  8,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近'],
  '株式会社ティア',
  4.2, 38
);

-- 155. 愛昇殿レクストの杜刈谷
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES (
  '愛昇殿レクストの杜刈谷',
  'kariya-aishoden',
  'private_hall',
  '刈谷市に位置する愛昇殿の葬儀会館。刈谷市中心部に立地し、家族葬に最適な温かみのある式場を備えています。刈谷市・知立市エリアの方に利用されています。',
  '愛知県刈谷市御幸町2-108',
  'aichi', 'kariya',
  34.989, 137.003,
  'JR東海道線 刈谷駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 594000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 288000}]',
  ARRAY['家族葬対応'],
  '株式会社レクスト',
  4.0, 22
);
