-- =============================================
-- 斎場データ追加: ishikawa batch2 (19件)
-- =============================================

-- 1. サンレー金沢紫雲閣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サンレー金沢紫雲閣',
  'sunray-kanazawa-shiunkan',
  'private_hall',
  'サンレーが運営する金沢市の大型葬儀会館。JR金沢駅から徒歩5分と抜群のアクセス。大規模な一般葬から少人数の家族葬まで幅広く対応し、北陸地方で多数の実績を持つ施設です。',
  '石川県金沢市広岡1-4-20',
  'ishikawa', 'kanazawa',
  36.577, 136.647,
  'JR北陸新幹線 金沢駅',
  5,
  150, 3, false, 80,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社サンレー',
  4.3, 42
);

-- 2. 家族葬のゆうか金沢藤江
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のゆうか金沢藤江',
  'yuuka-kanazawa-fujie',
  'private_hall',
  '「家族葬のゆうか」金沢藤江ホール。金沢駅からバス16分の立地。家族葬に特化した温かみのある空間で、少人数でのお別れに最適。1日1組完全貸切で、プライバシーが守られています。',
  '石川県金沢市藤江北3-95-1',
  'ishikawa', 'kanazawa',
  36.588, 136.62,
  'JR北陸本線 金沢駅',
  25,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社ゆうか',
  4.5, 28
);

-- 3. 家族葬のゆうか金沢西念
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のゆうか金沢西念',
  'yuuka-kanazawa-sainen',
  'private_hall',
  '金沢市西念にある「家族葬のゆうか」ホール。金沢駅から車で約6分のアクセス。家族葬に特化した設計で、リビングのような落ち着いた空間を提供しています。24時間対応可能です。',
  '石川県金沢市西念4-11-14',
  'ishikawa', 'kanazawa',
  36.575, 136.64,
  'JR北陸本線 金沢駅',
  15,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応'],
  '株式会社ゆうか',
  4.4, 25
);

-- 4. 小さなお葬式 金沢寺地ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 金沢寺地ホール',
  'chiisana-ososhiki-kanazawa-teraji',
  'private_hall',
  '全国展開の「小さなお葬式」提携ホール。金沢市寺地に位置し、低価格ながら質の高いサービスを提供。火葬式から家族葬まで明朗会計のプランが揃い、追加料金なしの安心感が好評です。',
  '石川県金沢市寺地1-178',
  'ishikawa', 'kanazawa',
  36.555, 136.625,
  '北陸鉄道 押野駅',
  18,
  40, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '低価格', '明朗会計', 'バリアフリー'],
  '株式会社ユニクエスト',
  4.0, 15
);

-- 5. 小さなお葬式 金沢長土塀ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 金沢長土塀ホール',
  'chiisana-ososhiki-kanazawa-nagatsubei',
  'private_hall',
  '金沢市長土塀にある「小さなお葬式」提携ホール。金沢駅から徒歩14分と中心部からアクセスが良い立地。少人数向けの温かみのある空間で、シンプルながら心のこもったお見送りができます。',
  '石川県金沢市長土塀1-16-7',
  'ishikawa', 'kanazawa',
  36.572, 136.652,
  'JR北陸本線 金沢駅',
  14,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['駅近', '家族葬対応', '低価格', '明朗会計'],
  '株式会社ユニクエスト',
  3.9, 12
);

-- 6. 金沢市営斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '金沢市営斎場',
  'kanazawa-shiei-saijo',
  'public_crematorium',
  '金沢市が運営する公営の火葬場。金沢市民は火葬料の優遇措置があります。式場は併設されていませんが、火葬式の利用が可能です。静かな環境の中で故人をお見送りできる施設です。',
  '石川県金沢市大桑町平10',
  'ishikawa', 'kanazawa',
  36.54, 136.65,
  '北陸鉄道 野町駅',
  25,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '金沢市',
  3.7, 25
);

-- 7. セレモニーホール金沢東
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール金沢東',
  'ceremony-hall-kanazawa-higashi',
  'private_hall',
  '金沢市東部にある総合葬儀会館。東金沢駅からのアクセスが良く、家族葬から大規模な一般葬まで幅広く対応。充実した設備と丁寧なスタッフの対応が評判の施設です。',
  '石川県金沢市神宮寺1-16-23',
  'ishikawa', 'kanazawa',
  36.585, 136.678,
  'JR北陸本線 東金沢駅',
  15,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 375000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 555000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '金沢セレモニー株式会社',
  4.1, 25
);

-- 8. 家族葬のゆうか新神田入江
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のゆうか新神田入江',
  'yuuka-kanazawa-shinkanda',
  'private_hall',
  '金沢市入江にある「家族葬のゆうか」ホール。西金沢駅からバス22分の立地。家族葬専用の落ち着いた空間で、少人数でゆっくりとお別れの時間を過ごせます。安置室も完備。',
  '石川県金沢市入江1-136',
  'ishikawa', 'kanazawa',
  36.56, 136.63,
  'JR北陸本線 西金沢駅',
  25,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応'],
  '株式会社ゆうか',
  4.3, 20
);

-- 9. 小松加賀斎場さざなみ
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小松加賀斎場さざなみ',
  'komatsu-kaga-saijo-sazanami',
  'public_crematorium',
  '小松市と加賀市が共同で運営する公営斎場。JR粟津駅からタクシー13分の立地。火葬施設と式場を備え、通夜から火葬まで一貫して対応可能。広い敷地と充実した設備が特長です。',
  '石川県小松市波佐谷町カ54',
  'ishikawa', 'komatsu',
  36.37, 136.435,
  'JR北陸本線 粟津駅',
  25,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 82000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 235000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '小松加賀広域事務組合',
  3.8, 28
);

-- 10. サンレー小松紫雲閣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サンレー小松紫雲閣',
  'sunray-komatsu-shiunkan',
  'private_hall',
  'サンレーが運営する小松市の葬儀会館。JR小松駅から車で約3分の好立地。北陸地方で多数の式場を展開するサンレーの施設で、家族葬から一般葬まで幅広く対応しています。',
  '石川県小松市城南町134',
  'ishikawa', 'komatsu',
  36.399, 136.448,
  'JR北陸本線 小松駅',
  8,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 262000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社サンレー',
  4.2, 22
);

-- 11. 家族葬のゆうか小松
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のゆうか小松',
  'yuuka-komatsu',
  'private_hall',
  '小松市にある「家族葬のゆうか」ホール。家族葬に特化した空間で、少人数でのお別れに最適。24時間対応可能で、急なご依頼にも丁寧に対応します。',
  '石川県小松市今江町7-520',
  'ishikawa', 'komatsu',
  36.388, 136.46,
  'JR北陸本線 小松駅',
  15,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応'],
  '株式会社ゆうか',
  4.3, 18
);

-- 12. サンレー松任紫雲閣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サンレー松任紫雲閣',
  'sunray-matto-shiunkan',
  'private_hall',
  'サンレーが運営する白山市（旧松任市）の葬儀会館。JR松任駅から車で約5分のアクセス。家族葬から一般葬まで対応し、地域に根ざしたサービスを提供。落ち着いた雰囲気の館内が好評です。',
  '石川県白山市五歩市町404',
  'ishikawa', 'hakusan',
  36.528, 136.57,
  'JR北陸本線 松任駅',
  12,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社サンレー',
  4.1, 22
);

-- 13. 白山市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '白山市斎場',
  'hakusan-shi-saijo',
  'public_crematorium',
  '白山市が運営する公営斎場。白山の麓に位置し、自然に囲まれた静かな環境で故人をお見送りできます。白山市民は火葬料の優遇があり、広い駐車場を完備しています。',
  '石川県白山市鶴来大国町ロ97',
  'ishikawa', 'hakusan',
  36.48, 136.598,
  '北陸鉄道 鶴来駅',
  15,
  60, 1, true, 35,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 325000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '白山市',
  3.7, 18
);

-- 14. ななか斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ななか斎場',
  'nanaka-saijo-nanao',
  'public_crematorium',
  '七尾鹿島広域圏事務組合が運営する公営斎場。JR七尾線徳田駅からタクシー4分のアクセス。七尾市・中能登町の住民が利用可能。火葬施設と式場を備え、通夜から火葬まで一貫して対応できます。',
  '石川県七尾市田鶴浜町ち1-6',
  'ishikawa', 'nanao',
  36.975, 136.91,
  'JR七尾線 徳田駅',
  10,
  80, 2, true, 50,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 495000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '家族葬対応', 'バリアフリー'],
  '七尾鹿島広域圏事務組合',
  3.8, 22
);

-- 15. サンレー七尾紫雲閣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サンレー七尾紫雲閣',
  'sunray-nanao-shiunkan',
  'private_hall',
  'サンレーが運営する七尾市の葬儀会館。七尾市中心部に位置し、家族葬から一般葬まで対応。能登半島の玄関口として、地域の皆様に親しまれている施設です。',
  '石川県七尾市藤橋町丑58-1',
  'ishikawa', 'nanao',
  36.96, 136.968,
  'JR七尾線 七尾駅',
  12,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社サンレー',
  4.0, 20
);

-- 16. 輪島市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '輪島市斎場',
  'wajima-shi-saijo',
  'public_crematorium',
  '輪島市が運営する公営斎場。輪島塗の街として知られる輪島市に位置し、能登の伝統を感じる静かな環境です。輪島市民は火葬料の優遇があります。',
  '石川県輪島市山岸町ヘ62',
  'ishikawa', 'wajima',
  37.39, 136.9,
  'のと鉄道 穴水駅（バス）',
  40,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '輪島市',
  3.5, 10
);

-- 17. 珠洲市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '珠洲市斎場',
  'suzu-shi-saijo',
  'public_crematorium',
  '珠洲市が運営する公営斎場。能登半島の先端に位置する珠洲市にあり、自然に囲まれた穏やかな環境です。珠洲市民は火葬料の優遇措置があります。',
  '石川県珠洲市上戸町北方ア4-1',
  'ishikawa', 'suzu',
  37.435, 137.26,
  '珠洲市内（バス利用）',
  30,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '珠洲市',
  3.5, 6
);

-- 18. 家族葬のゆうか野々市押野
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のゆうか野々市押野',
  'yuuka-nonoichi-oshino',
  'private_hall',
  '野々市市にある「家族葬のゆうか」ホール。野々市駅から徒歩10分の好立地。金沢市に隣接する野々市市で、家族葬に特化したサービスを提供しています。24時間対応可能です。',
  '石川県野々市市押野2-248',
  'ishikawa', 'nonoichi',
  36.535, 136.615,
  '北陸鉄道 野々市駅',
  10,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '株式会社ゆうか',
  4.4, 22
);

-- 19. サンレー加賀紫雲閣
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'サンレー加賀紫雲閣',
  'sunray-kaga-shiunkan',
  'private_hall',
  'サンレーが運営する加賀市の葬儀会館。温泉と伝統工芸の街・加賀市で、家族葬から一般葬まで対応。落ち着いた雰囲気の中で、心のこもったお見送りをサポートします。',
  '石川県加賀市大聖寺敷地ル41-1',
  'ishikawa', 'kaga',
  36.302, 136.315,
  'JR北陸本線 大聖寺駅',
  10,
  70, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 255000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 365000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '株式会社サンレー',
  4.0, 18
);

