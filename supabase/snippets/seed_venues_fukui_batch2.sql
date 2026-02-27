-- =============================================
-- 斎場データ追加: fukui batch2 (14件)
-- =============================================

-- 1. 福井市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '福井市斎場',
  'fukui-shi-saijo',
  'public_crematorium',
  '福井市が運営する公営の火葬場。福井市民は火葬料の優遇措置があります。市街地から車で約15分のアクセスで、静かな環境の中で故人をお見送りできます。待合室も完備しています。',
  '福井県福井市西谷1-1020',
  'fukui', 'fukui-city',
  36.065, 136.198,
  'JR北陸本線 福井駅',
  30,
  60, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '福井市',
  3.7, 25
);

-- 2. セレモニー福井ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニー福井ホール',
  'ceremony-fukui-hall',
  'private_hall',
  '福井市高木中央にある総合葬儀会館。福井市中心部からのアクセスが良好で、大規模な一般葬から少人数の家族葬まで幅広く対応。福井県内で長年の実績を持つ地域密着型の施設です。',
  '福井県福井市高木中央3-501',
  'fukui', 'fukui-city',
  36.05, 136.225,
  '福井鉄道 花堂駅',
  12,
  100, 3, false, 60,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備', 'バリアフリー'],
  '株式会社セレモニー福井',
  4.2, 30
);

-- 3. ホームセレモニー福井
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'ホームセレモニー福井',
  'home-ceremony-fukui',
  'private_hall',
  '福井市にある家族葬向けの葬儀ホール。「自宅のような温かさ」をコンセプトに、少人数でゆっくりとお別れの時間を過ごせる空間を提供。地域に根ざしたきめ細かいサービスが評判です。',
  '福井県福井市問屋町3-815',
  'fukui', 'fukui-city',
  36.058, 136.215,
  'JR北陸本線 福井駅',
  15,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬対応', '24時間対応', '地域密着', 'バリアフリー'],
  '有限会社ホームセレモニー',
  4.3, 22
);

-- 4. 小さなお葬式 福井ホール
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小さなお葬式 福井ホール',
  'chiisana-ososhiki-fukui',
  'private_hall',
  '全国展開の「小さなお葬式」提携ホール。福井市内に位置し、低価格ながら質の高いサービスを提供。追加料金なしの明朗会計プランが好評で、火葬式から家族葬まで対応しています。',
  '福井県福井市西開発1-2510',
  'fukui', 'fukui-city',
  36.048, 136.23,
  '福井鉄道 ベル前駅',
  10,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['家族葬対応', '低価格', '明朗会計', 'バリアフリー'],
  '株式会社ユニクエスト',
  4.0, 14
);

-- 5. 家族葬のファミーユ福井
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ福井',
  'familyu-fukui',
  'private_hall',
  '「家族葬のファミーユ」福井ホール。家族葬に特化した温かみのある空間で、少人数でのお別れに最適。1日1組完全貸切で、リビング感覚の内装が好評です。24時間365日対応可能。',
  '福井県福井市文京6-2-15',
  'fukui', 'fukui-city',
  36.068, 136.222,
  'JR北陸本線 福井駅',
  18,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社家族葬のファミーユ',
  4.4, 18
);

-- 6. 敦賀市斎苑
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '敦賀市斎苑',
  'tsuruga-shi-saien',
  'public_crematorium',
  '敦賀市が運営する公営斎場。敦賀湾を望む静かな環境に位置し、火葬施設と式場を備えています。敦賀市民は火葬料の優遇があり、通夜から火葬まで一貫して対応可能です。',
  '福井県敦賀市沓見143-25',
  'fukui', 'tsuruga',
  35.648, 136.075,
  'JR北陸本線 敦賀駅',
  25,
  60, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 232000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 335000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '敦賀市',
  3.7, 20
);

-- 7. セレモニーホール敦賀
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'セレモニーホール敦賀',
  'ceremony-hall-tsuruga',
  'private_hall',
  '敦賀市にある民間葬儀会館。北陸新幹線敦賀駅開業で交通の要衝となった敦賀市で、家族葬から一般葬まで幅広く対応。地域に密着した丁寧なサービスを提供しています。',
  '福井県敦賀市中央町2-15-18',
  'fukui', 'tsuruga',
  35.645, 136.062,
  'JR北陸新幹線 敦賀駅',
  12,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '駐車場完備'],
  '敦賀セレモニー株式会社',
  4.1, 22
);

-- 8. 家族葬のファミーユ敦賀
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '家族葬のファミーユ敦賀',
  'familyu-tsuruga',
  'private_hall',
  '敦賀市にある家族葬専用ホール。「家族葬のファミーユ」として展開する施設で、少人数でのお別れに特化。リビングルームのような温かい空間が特長で、24時間対応可能です。',
  '福井県敦賀市呉竹町1-32-8',
  'fukui', 'tsuruga',
  35.65, 136.058,
  'JR北陸本線 敦賀駅',
  15,
  30, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'バリアフリー'],
  '株式会社家族葬のファミーユ',
  4.3, 15
);

-- 9. 鯖江市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '鯖江市斎場',
  'sabae-shi-saijo',
  'public_crematorium',
  '鯖江市が運営する公営火葬場。めがねの街・鯖江に位置し、鯖江市民は火葬料の優遇措置があります。コンパクトながら必要な設備を備えた施設です。',
  '福井県鯖江市上野田町41-20',
  'fukui', 'sabae',
  35.955, 136.195,
  'JR北陸本線 鯖江駅',
  15,
  40, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 315000}]',
  ARRAY['火葬場併設', '公営斎場', 'バリアフリー'],
  '鯖江市',
  3.6, 14
);

-- 10. 越前市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '越前市斎場',
  'echizen-shi-saijo',
  'public_crematorium',
  '越前市が運営する公営斎場。越前和紙の産地として知られる越前市に位置し、静かな環境で故人をお見送りできます。越前市民は火葬料の優遇があります。',
  '福井県越前市白崎町68-52',
  'fukui', 'echizen',
  35.898, 136.175,
  'JR北陸本線 武生駅',
  20,
  50, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '越前市',
  3.7, 16
);

-- 11. 小浜市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '小浜市斎場',
  'obama-shi-saijo',
  'public_crematorium',
  '小浜市が運営する公営斎場。若狭湾に面した小浜市にあり、海を望む静かな環境です。「御食国」として知られる歴史ある街で、小浜市民は火葬料の優遇があります。',
  '福井県小浜市府中9-16',
  'fukui', 'obama',
  35.495, 135.752,
  'JR小浜線 小浜駅',
  15,
  40, 1, true, 20,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 310000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '小浜市',
  3.5, 10
);

-- 12. 大野市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '大野市斎場',
  'ono-fukui-shi-saijo',
  'public_crematorium',
  '大野市が運営する公営斎場。「天空の城」越前大野城で知られる大野市に位置し、山々に囲まれた自然豊かな環境です。大野市民は火葬料の優遇があります。',
  '福井県大野市南新在家16-30',
  'fukui', 'ono-fukui',
  35.975, 136.488,
  'JR越美北線 越前大野駅',
  18,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '大野市',
  3.5, 8
);

-- 13. 勝山市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  '勝山市斎場',
  'katsuyama-shi-saijo',
  'public_crematorium',
  '勝山市が運営する公営火葬場。恐竜博物館で有名な勝山市にあり、九頭竜川沿いの静かな環境に位置します。勝山市民は火葬料の優遇措置があります。',
  '福井県勝山市遅羽町比島38-2',
  'fukui', 'katsuyama',
  36.06, 136.505,
  'えちぜん鉄道 勝山駅',
  20,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場'],
  '勝山市',
  3.5, 8
);

-- 14. あわら市斎場
INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES
(
  'あわら市斎場',
  'awara-shi-saijo',
  'public_crematorium',
  'あわら市が運営する公営斎場。あわら温泉で知られる街にあり、温泉街とは異なる静かな環境に位置しています。あわら市民は火葬料の優遇があります。',
  '福井県あわら市柿原52-11',
  'fukui', 'awara',
  36.195, 136.228,
  'えちぜん鉄道 あわら湯のまち駅',
  15,
  30, 1, true, 15,
  '{"霊安室": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 76000}]',
  ARRAY['火葬場併設', '公営斎場'],
  'あわら市',
  3.5, 8
);

