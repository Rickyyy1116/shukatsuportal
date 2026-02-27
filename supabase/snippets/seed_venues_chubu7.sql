-- =============================================
-- 斎場データ: 中部7県（愛知・静岡を除く） 約50件
-- 新潟県・長野県・岐阜県・富山県・石川県・福井県・山梨県
-- =============================================

-- =============================================
-- 新潟県 (niigata) — 10件
-- =============================================

-- 新潟市 (niigata-city) — 5件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1. 新潟市青山斎場
(
  '新潟市青山斎場',
  'niigata-aoyama-saijo',
  'public_crematorium',
  '新潟市が運営する公営斎場で、西区青山に位置します。火葬棟と式場を同一敷地内に備え、通夜から火葬まで一貫して執り行えます。JR越後線「青山駅」から徒歩16分。新潟市民は火葬料無料で利用でき、駐車場36台完備。日本海を望む静かな環境です。',
  '新潟県新潟市西区青山1436-1209',
  'niigata', 'niigata-city',
  37.887, 138.996,
  'JR越後線 青山駅',
  16,
  80, 2, true, 36,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '新潟市',
  4.0, 62
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2. 新潟市亀田斎場
(
  '新潟市亀田斎場',
  'niigata-kameda-saijo',
  'public_crematorium',
  '新潟市江南区にある公営火葬場。火葬炉3基を備え、新潟市民は火葬料無料で利用可能です。JR信越本線「亀田駅」からタクシー約10分。落ち着いた住宅街の中に位置し、静かな環境で故人を見送れます。待合室も完備しています。',
  '新潟県新潟市江南区亀田中島2-6-1',
  'niigata', 'niigata-city',
  37.881, 139.103,
  'JR信越本線 亀田駅',
  20,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['火葬場併設', '公営斎場', '家族葬対応', 'バリアフリー'],
  '新潟市',
  3.8, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3. セレモニーホール新潟
(
  'セレモニーホール新潟',
  'ceremony-hall-niigata',
  'private_hall',
  'アークベルが運営する新潟市中央区の大型葬儀会館。JR新潟駅南口から徒歩8分と抜群のアクセス。大規模な一般葬から少人数の家族葬まで幅広く対応。ホール内に調理場を備え、温かい料理を提供できるのが特長です。',
  '新潟県新潟市中央区南笹口1-1-38',
  'niigata', 'niigata-city',
  37.909, 139.057,
  'JR上越新幹線 新潟駅',
  8,
  150, 3, false, 80,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アークベル',
  4.3, 45
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4. 家族葬のダビアス新潟中央
(
  '家族葬のダビアス新潟中央',
  'davius-niigata-chuo',
  'private_hall',
  '家族葬専用の温かみのあるホール。新潟市中央区に位置し、少人数でゆっくりとお別れできる空間を提供。リビングルームのような落ち着いた内装で、1日1組完全貸切対応。24時間365日相談可能です。',
  '新潟県新潟市中央区女池上山2-15-6',
  'niigata', 'niigata-city',
  37.895, 139.039,
  'JR越後線 新潟駅',
  20,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社ダビアス新潟',
  4.5, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5. 青山セレモニーホール
(
  '青山セレモニーホール',
  'aoyama-ceremony-hall-niigata',
  'private_hall',
  'アークベルが運営する新潟市西区青山のセレモニーホール。新潟市青山斎場に近く、火葬場へのアクセスが便利です。メモリアルルームを備え、少人数の家族葬にも対応。落ち着いた雰囲気の中でお別れの時間を過ごせます。',
  '新潟県新潟市西区青山7-9-1',
  'niigata', 'niigata-city',
  37.888, 138.998,
  'JR越後線 青山駅',
  10,
  60, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['火葬場近隣', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社アークベル',
  4.2, 38
);

-- 長岡市 (nagaoka) — 2件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6. 長岡市斎場
(
  '長岡市斎場',
  'nagaoka-shi-saijo',
  'public_crematorium',
  '長岡市が運営する公営斎場。敷地内に葬儀式場と火葬施設を備え、通夜から火葬まで一貫して対応可能。長岡市民は火葬料が優遇されます。広い駐車場と充実した待合室を完備しており、大規模な葬儀にも対応できます。',
  '新潟県長岡市寺泊野積8092-1',
  'niigata', 'nagaoka',
  37.628, 138.782,
  'JR越後線 寺泊駅',
  25,
  100, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '長岡市',
  3.9, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7. VIPシティホール長岡
(
  'VIPシティホール長岡',
  'vip-city-hall-nagaoka',
  'private_hall',
  '長岡市内で実績のある民間葬儀会館。JR長岡駅から車で約10分の好立地。家族葬から一般葬まで幅広いプランに対応し、充実した控室と宿泊施設を完備。スタッフの丁寧な対応が評判の施設です。',
  '新潟県長岡市喜多町707',
  'niigata', 'nagaoka',
  37.456, 138.853,
  'JR信越本線 長岡駅',
  20,
  80, 2, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', '24時間対応'],
  'VIPシティホール',
  4.1, 27
);

-- 上越市 (joetsu) — 2件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8. 上越斎場
(
  '上越斎場',
  'joetsu-saijo',
  'public_crematorium',
  '上越市が運営する公営斎場。日本海ひすいライン直江津駅からタクシー約6分の好アクセス。火葬施設と式場を備え、通夜から火葬まで対応可能。上越市民は火葬料が優遇されます。広い駐車場とバリアフリー設備を完備しています。',
  '新潟県上越市大字居多776',
  'niigata', 'joetsu',
  37.129, 138.231,
  '日本海ひすいライン 直江津駅',
  15,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '上越市',
  3.8, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9. セレモニーホール上越
(
  'セレモニーホール上越',
  'ceremony-hall-joetsu',
  'private_hall',
  '上越市内の民間葬儀会館。JR高田駅から車で約10分。家族葬から大規模な一般葬まで対応可能な複数のホールを備えています。24時間対応の相談窓口があり、急な場合にも安心。充実した控室と宿泊設備も完備。',
  '新潟県上越市春日野1-2-5',
  'niigata', 'joetsu',
  37.1, 138.245,
  'えちごトキめき鉄道 高田駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '宿泊可能', '24時間対応', '駐車場完備'],
  '上越セレモニー',
  4.0, 18
);

-- 三条市 (sanjo) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10. 三条市槻の森斎苑
(
  '三条市槻の森斎苑',
  'sanjo-tsukinomori-saien',
  'public_crematorium',
  '三条市が運営する公営の火葬場。三条市月岡に位置し、緑豊かな環境の中で故人を見送れます。火葬炉を完備し、待合室も備えています。三条市民は火葬料が優遇されます。広い駐車場を備え、アクセスも良好です。',
  '新潟県三条市月岡3722',
  'niigata', 'sanjo',
  37.607, 138.957,
  'JR弥彦線 燕三条駅',
  20,
  50, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '三条市',
  3.7, 15
);

-- =============================================
-- 長野県 (nagano) — 8件
-- =============================================

-- 長野市 (nagano-city) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11. 長野市大峰斎場
(
  '長野市大峰斎場',
  'nagano-omine-saijo',
  'public_crematorium',
  '長野市が運営する公営火葬場。箱清水の高台に位置し、善光寺を見下ろす静かな環境です。JR信越本線「長野駅」からタクシー約20分。火葬炉を備えた市内最大の火葬場で、長野市民は火葬料が優遇されます。式場は併設されていないため、近隣のセレモニーホールとの併用が一般的です。',
  '新潟県長野市大字長野箱清水1612-1',
  'nagano', 'nagano-city',
  36.669, 138.186,
  'JR北陸新幹線 長野駅',
  30,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '長野市',
  3.7, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12. ベルホール吉池 長野本店
(
  'ベルホール吉池 長野本店',
  'bellhall-yoshiike-nagano',
  'private_hall',
  '長野市の老舗葬儀社・吉池が運営する葬儀ホール。JR長野駅から車で約10分。大規模な一般葬から少人数の家族葬まで対応可能。経験豊富なスタッフによる丁寧なサポートが特長で、地元で高い信頼を得ています。宿泊施設も完備。',
  '長野県長野市大字鶴賀権堂町2201',
  'nagano', 'nagano-city',
  36.655, 138.191,
  '長野電鉄 権堂駅',
  5,
  100, 3, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '老舗葬儀社'],
  '株式会社吉池',
  4.4, 52
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 13. 家族葬ホールSHION若槻
(
  '家族葬ホールSHION若槻',
  'shion-wakatsuki-nagano',
  'private_hall',
  '長野市若槻エリアの家族葬専用ホール。少人数の家族葬に特化した温かみのある空間。1日1組完全貸切で、ご家族だけの時間をゆっくりと過ごせます。24時間365日対応の相談窓口があり、急な場合にも安心です。',
  '長野県長野市若槻東条812-1',
  'nagano', 'nagano-city',
  36.681, 138.202,
  '長野電鉄 信濃吉田駅',
  15,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  'SHION',
  4.5, 25
);

-- 松本市 (matsumoto) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 14. 松本市営葬祭センター
(
  '松本市営葬祭センター',
  'matsumoto-shiee-sousai-center',
  'public_crematorium',
  '松本市が運営する公営の葬祭センター。北アルプス線「北松本駅」から徒歩13分と駅近の好立地。火葬施設と式場を備え、通夜から火葬まで一貫して対応可能。松本市民は利用料が優遇されます。北アルプスを望む静かな環境です。',
  '長野県松本市蟻ケ崎4-10-1',
  'nagano', 'matsumoto',
  36.248, 137.958,
  'アルピコ交通上高地線 北松本駅',
  13,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '駅近', '駐車場完備', 'バリアフリー'],
  '松本市',
  4.0, 40
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 15. コスモール・コイデ松本
(
  'コスモール・コイデ松本',
  'cosmall-koide-matsumoto',
  'private_hall',
  '松本市内で人気の高い民間葬儀会館。家族葬から一般葬まで幅広く対応し、モダンで温かみのある空間が特長です。充実した控室と宿泊設備を完備。経験豊富なスタッフが24時間体制でサポートします。',
  '長野県松本市渚3-8-25',
  'nagano', 'matsumoto',
  36.232, 137.962,
  'JR篠ノ井線 松本駅',
  12,
  60, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '24時間対応', '駐車場完備'],
  'コスモール・コイデ',
  4.3, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 16. セレモニーホール松本南
(
  'セレモニーホール松本南',
  'ceremony-hall-matsumoto-minami',
  'private_hall',
  '松本市南部の家族葬対応ホール。JR南松本駅から車で約5分の好立地。少人数の家族葬に特化した落ち着いた空間で、1日1組貸切対応。安置室も備え、ご家族だけのプライベートな時間を大切にできます。',
  '長野県松本市南松本1-3-12',
  'nagano', 'matsumoto',
  36.222, 137.97,
  'JR篠ノ井線 南松本駅',
  10,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', 'バリアフリー'],
  '松本南セレモニー',
  4.2, 18
);

-- 上田市 (ueda) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 17. 上田地域広域連合大星斎場
(
  '上田地域広域連合大星斎場',
  'ueda-ooboshi-saijo',
  'public_crematorium',
  '上田地域広域連合が運営する公営火葬場。しなの鉄道線「上田駅」からタクシー約10分。火葬炉を備え、上田市民は利用料が優遇されます。広い待合室と駐車場を完備し、落ち着いた環境で故人を見送れる施設です。',
  '長野県上田市大字上田2548-2',
  'nagano', 'ueda',
  36.401, 138.249,
  'しなの鉄道線 上田駅',
  20,
  50, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '上田地域広域連合',
  3.8, 20
);

-- 飯田市 (iida) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 18. 飯田市斎苑
(
  '飯田市斎苑',
  'iida-shi-saien',
  'public_crematorium',
  '飯田市が運営する公営の斎場。南アルプスを望む静かな環境に位置し、火葬施設と待合室を備えています。飯田市民は火葬料が優遇されます。伊那谷の自然に囲まれた穏やかな場所で、故人を静かに見送れる施設です。',
  '長野県飯田市上郷別府3507-1',
  'nagano', 'iida',
  35.495, 137.831,
  'JR飯田線 元善光寺駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '飯田市',
  3.8, 16
);

-- =============================================
-- 岐阜県 (gifu) — 8件
-- =============================================

-- 岐阜市 (gifu-city) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 19. 岐阜市斎苑
(
  '岐阜市斎苑',
  'gifu-shi-saien',
  'public_crematorium',
  '岐阜市が運営する公営の総合斎場。火葬棟・待合棟・斎場棟が回廊で結ばれた近代的な施設です。1階に大・小2つの式場を備え、通夜から火葬まで対応可能。2階には有料の待合室もあります。名鉄岐阜駅から車で約5分の好立地です。',
  '岐阜県岐阜市上加納山4717-4',
  'gifu', 'gifu-city',
  35.421, 136.768,
  '名鉄各務原線 田神駅',
  16,
  100, 2, true, 80,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '岐阜市',
  4.1, 55
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 20. メモリア岐阜東
(
  'メモリア岐阜東',
  'memoria-gifu-higashi',
  'private_hall',
  'メモリアグループが運営する岐阜市東部の家族葬対応ホール。少人数からの家族葬に特化し、温かみのある空間を提供。1日1組完全貸切で、プライベートな時間を大切にできます。24時間365日相談可能です。',
  '岐阜県岐阜市日野東3-13-20',
  'gifu', 'gifu-city',
  35.398, 136.802,
  '名鉄名古屋本線 名鉄岐阜駅',
  25,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  'メモリアホールディングス',
  4.4, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 21. 葬儀斎場メモワール岐阜
(
  '葬儀斎場メモワール岐阜',
  'memoir-gifu',
  'private_hall',
  'メモワールが運営する岐阜市の葬儀会館。岐阜市斎苑の近くに位置し、火葬場へのアクセスが便利です。大規模な一般葬から家族葬まで幅広く対応。モダンなデザインの式場と充実した設備が特長の施設です。',
  '岐阜県岐阜市加納上本町4-1-1',
  'gifu', 'gifu-city',
  35.408, 136.758,
  'JR東海道本線 岐阜駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['火葬場近隣', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社メモワール',
  4.2, 38
);

-- 大垣市 (ogaki) — 2件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 22. 大垣市鶴見斎場
(
  '大垣市鶴見斎場',
  'ogaki-tsurumi-saijo',
  'public_crematorium',
  '大垣市が運営する公営斎場。JR大垣駅からタクシー約10分。火葬施設と式場を備え、通夜から火葬まで一貫して対応可能。大垣市民は火葬料が優遇されます。広い駐車場を完備し、バリアフリーにも対応しています。',
  '岐阜県大垣市鶴見町581',
  'gifu', 'ogaki',
  35.364, 136.612,
  'JR東海道本線 大垣駅',
  20,
  80, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '大垣市',
  4.0, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 23. メモリア大垣
(
  'メモリア大垣',
  'memoria-ogaki',
  'private_hall',
  'メモリアグループが運営する大垣市の家族葬対応ホール。JR大垣駅から車で約8分。家族葬から一般葬まで幅広いプランに対応。温かみのあるモダンな内装と充実した設備が特長。24時間対応の相談窓口があります。',
  '岐阜県大垣市林町5-80-2',
  'gifu', 'ogaki',
  35.358, 136.625,
  'JR東海道本線 大垣駅',
  15,
  50, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['家族葬対応', '24時間対応', 'バリアフリー', '駐車場完備'],
  'メモリアホールディングス',
  4.3, 22
);

-- 各務原市 (kakamigahara) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 24. 各務原市斎場
(
  '各務原市斎場',
  'kakamigahara-saijo',
  'public_crematorium',
  '各務原市が運営する公営火葬場。JR高山本線「那加駅」からタクシー約10分。火葬施設を備え、各務原市民は火葬料が優遇されます。静かな環境に位置し、待合室と駐車場を完備。バリアフリー対応の施設です。',
  '岐阜県各務原市鵜沼朝日町7-55',
  'gifu', 'kakamigahara',
  35.405, 136.879,
  'JR高山本線 那加駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '各務原市',
  3.8, 18
);

-- 多治見市 (tajimi) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 25. 多治見市営斎場
(
  '多治見市営斎場',
  'tajimi-shiee-saijo',
  'public_crematorium',
  '多治見市が運営する公営火葬場。JR中央本線「多治見駅」からタクシー約15分。火葬炉を備え、多治見市民は火葬料が優遇されます。焼き物の街・多治見らしい落ち着いた佇まいの施設で、待合室と駐車場を完備しています。',
  '岐阜県多治見市廿原町232-1',
  'gifu', 'tajimi',
  35.323, 137.132,
  'JR中央本線 多治見駅',
  25,
  40, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '多治見市',
  3.7, 14
);

-- 高山市 (takayama) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 26. フローラメモリアルホール高山
(
  'フローラメモリアルホール高山',
  'flora-memorial-takayama',
  'private_hall',
  '飛騨高山エリアの民間葬儀会館。JR高山本線「高山駅」から車で約10分。飛騨の伝統に配慮した落ち着いた佇まいの式場で、家族葬から一般葬まで幅広く対応。地元の風習に精通したスタッフが丁寧にサポートします。',
  '岐阜県高山市花里町5-18',
  'gifu', 'takayama',
  36.144, 137.251,
  'JR高山本線 高山駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', '地域密着'],
  'JAグリーン株式会社',
  4.1, 20
);

-- =============================================
-- 富山県 (toyama) — 6件
-- =============================================

-- 富山市 (toyama-city) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 27. 富山市北斎場
(
  '富山市北斎場',
  'toyama-kita-saijo',
  'public_crematorium',
  '富山市が運営する北部地区の公営火葬場。あいの風とやま鉄道「富山駅」からタクシー約15分。火葬炉を備え、富山市民は火葬料が優遇されます。近代的な設備と広い駐車場を完備。立山連峰を望む静かな環境にある施設です。',
  '富山県富山市古沢501',
  'toyama', 'toyama-city',
  36.702, 137.168,
  'あいの風とやま鉄道 富山駅',
  25,
  60, 1, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '富山市',
  3.9, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 28. ティア富山大泉
(
  'ティア富山大泉',
  'tear-toyama-oizumi',
  'private_hall',
  'ティアが運営する富山市の家族葬専用ホール。富山地方鉄道「大泉駅」から徒歩7分と駅近の好立地。少人数の家族葬に特化した温かみのある空間で、1日1組完全貸切対応。コンパクトながら充実した設備を備えています。',
  '富山県富山市大泉東町1-9-5',
  'toyama', 'toyama-city',
  36.685, 137.218,
  '富山地方鉄道 大泉駅',
  7,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '家族葬専用', '1日1組貸切', 'バリアフリー'],
  '株式会社ティア',
  4.5, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 29. オークスセレモニーホール富山
(
  'オークスセレモニーホール富山',
  'oarks-ceremony-toyama',
  'private_hall',
  'オークスが運営する富山市の大型葬儀会館。家族葬から大規模な一般葬まで対応可能な複数のホールを備え、充実した設備と宿泊施設を完備。経験豊富なスタッフによる丁寧なサポートが評判です。駐車場も十分に確保しています。',
  '富山県富山市新庄町2-6-33',
  'toyama', 'toyama-city',
  36.692, 137.229,
  '富山地方鉄道 東新庄駅',
  8,
  100, 3, false, 60,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備', '駅近'],
  'オークス株式会社',
  4.2, 42
);

-- 高岡市 (takaoka) — 2件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 30. 高岡斎場
(
  '高岡斎場',
  'takaoka-saijo',
  'public_crematorium',
  '高岡市が運営する公営の総合斎場。グリーンパーク内に位置し、広大な敷地と充実した駐車スペースを誇ります。乗用車210台・バス10台の駐車が可能。火葬場と式場を備え、通夜から火葬まで一貫対応。バリアフリー設計で安心です。',
  '富山県高岡市グリーンパーク1',
  'toyama', 'takaoka',
  36.758, 137.013,
  'JR城端線 新高岡駅',
  30,
  120, 3, true, 210,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '大規模葬対応', 'バリアフリー'],
  '高岡市',
  4.1, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 31. オークスセレモニーホール高岡
(
  'オークスセレモニーホール高岡',
  'oarks-ceremony-takaoka',
  'private_hall',
  'オークスが運営する高岡市の葬儀会館。JR高岡駅から車で約8分。家族葬から一般葬まで対応可能な式場を備え、充実した控室と宿泊設備を完備。地元に根差した丁寧なサービスで、高岡市民に親しまれています。',
  '富山県高岡市中曽根2208',
  'toyama', 'takaoka',
  36.742, 137.026,
  'JR北陸新幹線 新高岡駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  'オークス株式会社',
  4.2, 25
);

-- 射水市 (imizu) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 32. 射水市斎場
(
  '射水市斎場',
  'imizu-shi-saijo',
  'public_crematorium',
  '射水市が運営する公営火葬場。JR「越中大門駅」からタクシー約10分。火葬炉を備え、射水市民は火葬料が優遇されます。静かな環境に位置し、待合室と駐車場を完備。バリアフリー対応の近代的な施設です。',
  '富山県射水市沖塚原128-1',
  'toyama', 'imizu',
  36.721, 137.083,
  'あいの風とやま鉄道 越中大門駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '射水市',
  3.8, 15
);

-- =============================================
-- 石川県 (ishikawa) — 6件
-- =============================================

-- 金沢市 (kanazawa) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 33. 金沢市東斎場
(
  '金沢市東斎場',
  'kanazawa-higashi-saijo',
  'public_crematorium',
  '金沢市が運営する東部地区の公営斎場。鳴和台に位置し、火葬施設と待合室を備えています。金沢市民は火葬料が優遇されます。火葬から収骨まで約2時間。近代的な設備とバリアフリー対応で、安心して利用できる施設です。',
  '石川県金沢市鳴和台360',
  'ishikawa', 'kanazawa',
  36.584, 136.678,
  'JR北陸本線 金沢駅',
  20,
  60, 1, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '金沢市',
  3.9, 40
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 34. 金沢市南斎場
(
  '金沢市南斎場',
  'kanazawa-minami-saijo',
  'public_crematorium',
  '金沢市が運営する南部地区の公営斎場。西泉に位置し、金沢西ICからのアクセスが便利です。火葬施設を備え、金沢市民は火葬料が優遇されます。近代的な設備と充実した待合室を完備。落ち着いた環境で故人を見送れます。',
  '石川県金沢市西泉6-64',
  'ishikawa', 'kanazawa',
  36.555, 136.631,
  '北陸鉄道石川線 野町駅',
  15,
  60, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '金沢市',
  3.9, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 35. セレモニーハウス金沢神宮寺
(
  'セレモニーハウス金沢神宮寺',
  'ceremony-house-kanazawa-jinguji',
  'private_hall',
  'らくおう・セレモニーハウスが運営する金沢市の家族葬対応ホール。金沢市神宮寺に位置し、少人数の家族葬に特化。1日1組完全貸切で、プライベートな空間でお別れの時間を過ごせます。24時間365日相談可能です。',
  '石川県金沢市神宮寺1-16-23',
  'ishikawa', 'kanazawa',
  36.571, 136.645,
  'JR北陸本線 金沢駅',
  15,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '家族葬のらくおう・セレモニーハウス',
  4.4, 22
);

-- 白山市 (hakusan) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 36. 白山市松任斎場
(
  '白山市松任斎場',
  'hakusan-mattou-saijo',
  'public_crematorium',
  '白山市が運営する公営火葬場。JR北陸本線「松任駅」からタクシー約10分。火葬施設を備え、白山市民は火葬料が優遇されます。白山の麓に位置する静かな環境で、広い駐車場と待合室を完備しています。',
  '石川県白山市幸明町280',
  'ishikawa', 'hakusan',
  36.525, 136.568,
  'JR北陸本線 松任駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '白山市',
  3.8, 18
);

-- 小松市 (komatsu) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 37. 小松加賀斎場さざなみ
(
  '小松加賀斎場さざなみ',
  'komatsu-kaga-sazanami',
  'public_crematorium',
  '小松市・加賀市・能美市・川北町の広域で運営される公営斎場。近代的な設備を備えた火葬場で、地域住民は火葬料が優遇されます。広い駐車場と充実した待合室を完備。バリアフリー対応で安心して利用できます。',
  '石川県小松市長谷町ヨ75',
  'ishikawa', 'komatsu',
  36.392, 136.445,
  'JR北陸本線 小松駅',
  25,
  80, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー', '広域利用可能'],
  '小松加賀広域事務組合',
  4.0, 25
);

-- 加賀市 (kaga) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 38. 加賀市セレモニーホール
(
  '加賀市セレモニーホール',
  'kaga-ceremony-hall',
  'private_hall',
  '加賀温泉郷に近い民間葬儀会館。JR北陸本線「加賀温泉駅」から車で約8分。家族葬から一般葬まで対応可能な式場を備え、充実した控室と駐車場を完備。温泉街の落ち着いた雰囲気の中、丁寧なサービスを提供しています。',
  '石川県加賀市山代温泉18-120',
  'ishikawa', 'kaga',
  36.298, 136.362,
  'JR北陸本線 加賀温泉駅',
  15,
  50, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '駐車場完備', 'バリアフリー', '24時間対応'],
  '加賀セレモニー',
  4.0, 12
);

-- =============================================
-- 福井県 (fukui) — 6件
-- =============================================

-- 福井市 (fukui-city) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 39. 福井市聖苑
(
  '福井市聖苑',
  'fukui-shi-seien',
  'public_crematorium',
  '福井市が運営する公営の火葬場。火葬棟に火葬炉10基・小型炉1基を備え、待合棟には複数の和室・洋室と待合ロビーを完備。えちぜん鉄道「日華化学前駅」からタクシー約16分。福井市民は火葬料が優遇されます。喫茶コーナーもあります。',
  '福井県福井市安田町11-1',
  'fukui', 'fukui-city',
  36.072, 136.185,
  'えちぜん鉄道 日華化学前駅',
  25,
  60, 1, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '福井市',
  3.9, 38
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 40. オームラ福井ホール
(
  'オームラ福井ホール',
  'oomura-fukui-hall',
  'private_hall',
  '福井の老舗葬儀社・オームラが運営する葬儀会館。JR福井駅から車で約10分。家族葬から一般葬まで幅広く対応。安置室・宿泊施設を完備し、付き添いも可能。地元で長年の実績を持つ信頼の葬儀社です。',
  '福井県福井市花堂南1-1-20',
  'fukui', 'fukui-city',
  36.046, 136.218,
  'JR北陸本線 福井駅',
  20,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['家族葬対応', '宿泊可能', '安置付添い可', '駐車場完備', '老舗葬儀社'],
  '株式会社オームラ',
  4.3, 32
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 41. セレモニー福井会館
(
  'セレモニー福井会館',
  'ceremony-fukui-kaikan',
  'private_hall',
  '福井市内の民間葬儀会館。JR福井駅から車で約8分の好立地。モダンな内装の式場を備え、少人数の家族葬から大規模な一般葬まで対応。24時間対応の相談窓口があり、急な場合にも安心です。',
  '福井県福井市文京4-15-22',
  'fukui', 'fukui-city',
  36.058, 136.208,
  'JR北陸本線 福井駅',
  15,
  50, 1, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['家族葬対応', '24時間対応', '駐車場完備', 'バリアフリー'],
  '株式会社セレモニー福井',
  4.1, 20
);

-- 坂井市 (sakai-fukui) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 42. 赤坂聖苑
(
  '赤坂聖苑',
  'akasaka-seien-sakai',
  'public_crematorium',
  '坂井市が運営する公営の火葬場。坂井市丸岡に位置し、北陸自動車道丸岡ICからのアクセスが便利。火葬炉を備え、坂井市民は火葬料が優遇されます。静かな環境で、待合室と広い駐車場を完備しています。',
  '福井県坂井市丸岡町山口60-8',
  'fukui', 'sakai-fukui',
  36.151, 136.265,
  'JR北陸本線 丸岡駅',
  25,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '坂井市',
  3.7, 14
);

-- 越前市 (echizen) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 43. 越前市斎場
(
  '越前市斎場',
  'echizen-shi-saijo',
  'public_crematorium',
  '越前市が運営する公営火葬場。JR北陸本線「武生駅」からタクシー約15分。火葬施設と待合室を備え、越前市民は火葬料が優遇されます。越前の自然に囲まれた静かな環境で、故人を穏やかに見送れる施設です。',
  '福井県越前市余田町52-25-1',
  'fukui', 'echizen',
  35.902, 136.169,
  'JR北陸本線 武生駅',
  25,
  40, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 288000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '越前市',
  3.7, 12
);

-- 敦賀市 (tsuruga) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 44. 敦賀斎苑
(
  '敦賀斎苑',
  'tsuruga-saien',
  'public_crematorium',
  '敦賀市が運営する公営の火葬場。北陸新幹線「敦賀駅」からタクシー約10分。火葬施設と待合室を備え、敦賀市民は火葬料が優遇されます。敦賀湾を望む丘の上に位置し、穏やかな雰囲気の中で故人を見送れます。',
  '福井県敦賀市沓見71-7',
  'fukui', 'tsuruga',
  35.655, 136.072,
  '北陸新幹線 敦賀駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '敦賀市',
  3.8, 16
);

-- =============================================
-- 山梨県 (yamanashi) — 6件
-- =============================================

-- 甲府市 (kofu) — 3件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 45. 甲府市斎場
(
  '甲府市斎場',
  'kofu-shi-saijo',
  'public_crematorium',
  '甲府市が運営する公営の火葬場。JR中央本線「甲府駅」からタクシー約7分の好アクセス。火葬施設と待合室を備え、甲府市民は火葬料が優遇されます。富士山と南アルプスを望む静かな環境で、故人を穏やかに見送れる施設です。',
  '山梨県甲府市古府中町5079-6',
  'yamanashi', 'kofu',
  35.675, 138.559,
  'JR中央本線 甲府駅',
  15,
  60, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '甲府市',
  3.9, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 46. アピオセレモニーホール天昇殿
(
  'アピオセレモニーホール天昇殿',
  'apio-tensyouden-kofu',
  'private_hall',
  '甲府市の老舗葬儀会館。JR身延線「南甲府駅」から徒歩1分と抜群のアクセス。大規模な一般葬から少人数の家族葬まで幅広く対応。モダンな内装と充実した設備が特長で、経験豊富なスタッフが丁寧にサポートします。',
  '山梨県甲府市住吉5-20-1',
  'yamanashi', 'kofu',
  35.644, 138.571,
  'JR身延線 南甲府駅',
  1,
  100, 3, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  'アピオ株式会社',
  4.4, 48
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 47. ささごん中央ホール
(
  'ささごん中央ホール',
  'sasagon-chuo-hall-kofu',
  'private_hall',
  '甲府市中心部の民間葬儀会館。JR甲府駅から車で約8分。家族葬に特化した温かみのある空間で、少人数でゆっくりとお別れの時間を過ごせます。安置室と控室を完備し、24時間365日対応の相談窓口があります。',
  '山梨県甲府市中央4-7-15',
  'yamanashi', 'kofu',
  35.66, 138.568,
  'JR中央本線 甲府駅',
  12,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['家族葬専用', '24時間対応', '駐車場完備', 'バリアフリー'],
  '株式会社ささごん',
  4.2, 22
);

-- 甲斐市 (kai) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 48. やすらぎ聖苑
(
  'やすらぎ聖苑',
  'yasuragi-seien-kai',
  'public_crematorium',
  '甲斐市が運営する公営の火葬場。甲斐市竜王に位置し、JR中央本線「竜王駅」からタクシー約10分。火葬施設と待合室を備え、甲斐市民は火葬料が優遇されます。富士山を望む静かな環境の近代的な施設です。',
  '山梨県甲斐市竜王新町2028',
  'yamanashi', 'kai',
  35.653, 138.523,
  'JR中央本線 竜王駅',
  20,
  50, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '甲斐市',
  3.8, 18
);

-- 南アルプス市 (minami-alps) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 49. ふじかわ聖苑
(
  'ふじかわ聖苑',
  'fujikawa-seien-minami-alps',
  'public_crematorium',
  '三郡衛生組合が運営する公営の火葬場。南アルプス市・中央市・昭和町の住民が利用可能。南アルプスの山々を望む静かな環境に位置し、近代的な火葬施設と充実した待合室を備えています。広い駐車場も完備。',
  '山梨県南アルプス市小笠原1310',
  'yamanashi', 'minami-alps',
  35.609, 138.482,
  'JR身延線 東花輪駅',
  30,
  50, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '広域利用可能', 'バリアフリー'],
  '三郡衛生組合',
  3.8, 15
);

-- 富士吉田市 (fujiyoshida) — 1件

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 50. シティホール富士吉田
(
  'シティホール富士吉田',
  'city-hall-fujiyoshida',
  'private_hall',
  '富士吉田市の民間葬儀会館。富士急行線「富士山駅」から車で約5分。富士山の麓に位置する落ち着いた雰囲気の式場で、家族葬から一般葬まで対応。地元の風習に精通したスタッフが丁寧にサポートします。',
  '山梨県富士吉田市上吉田5521',
  'yamanashi', 'fujiyoshida',
  35.487, 138.798,
  '富士急行線 富士山駅',
  10,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', '地域密着'],
  'シティホール',
  4.1, 20
);

