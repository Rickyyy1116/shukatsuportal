-- =============================================
-- 斎場データ: 長野県 追加分（batch2） 43件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1. 松代斎場
(
  '松代斎場',
  'nagano-matsushiro-saijo',
  'public_crematorium',
  '長野市松代町にある公営火葬場。長野市が管理運営し、市民は火葬料が優遇されます。JR今井駅からタクシー約18分。火葬のみの施設で式場は併設されていませんが、近隣の葬儀会館と併用して利用されます。静かな環境の中で故人を見送れます。',
  '長野県長野市松代町東寺尾3333-1',
  'nagano', 'nagano-city',
  36.562, 138.205,
  'JR信越本線 今井駅',
  30,
  30, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '長野市',
  3.5, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2. ハクゼンホール安茂里会館
(
  'ハクゼンホール安茂里会館',
  'hakuzen-amori-nagano',
  'private_hall',
  '博善社が運営する長野市安茂里の葬儀会館。JR長野駅からタクシー約10分のアクセス。火葬式から少人数の家族葬まで対応し、全ホールに安置室を完備。地域密着型の温かいサービスが特長で、スタッフの丁寧な対応に定評があります。',
  '長野県長野市差出南1-9-24',
  'nagano', 'nagano-city',
  36.636, 138.17,
  'JR北陸新幹線 長野駅',
  20,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['安置室完備', '家族葬対応', '宿泊可能', '24時間対応', '駐車場完備'],
  '株式会社博善社',
  4.3, 28
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3. ハクゼンホール篠ノ井会館
(
  'ハクゼンホール篠ノ井会館',
  'hakuzen-shinonoi-nagano',
  'private_hall',
  '博善社が運営する長野市篠ノ井の葬儀会館。JR篠ノ井駅から車で約5分。家族葬から一般葬まで対応可能な中規模ホール。安置室完備で、ご家族のご要望に柔軟に対応。地元・篠ノ井エリアで長年の実績を持つ信頼の葬儀社です。',
  '長野県長野市篠ノ井布施高田826-1',
  'nagano', 'nagano-city',
  36.576, 138.155,
  'JR篠ノ井線 篠ノ井駅',
  10,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '安置室完備', '家族葬対応', '駐車場完備'],
  '株式会社博善社',
  4.2, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4. 家族葬ホールSHION桐原
(
  '家族葬ホールSHION桐原',
  'shion-kirihara-nagano',
  'private_hall',
  '長野市桐原にある家族葬専用ホール。1日1家族貸切で、ご家族だけのプライベートな空間を提供。リビングルームのような温かみのある内装で、少人数のお別れに最適。24時間365日相談対応で、急なご不幸にも安心です。',
  '長野県長野市桐原1-22-15',
  'nagano', 'nagano-city',
  36.662, 138.209,
  '長野電鉄 桐原駅',
  5,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  'SHION',
  4.5, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5. JA虹のホール松代
(
  'JA虹のホール松代',
  'ja-niji-matsushiro-nagano',
  'private_hall',
  'JA長野県グループが運営する松代地区の葬儀会館。地域に根ざしたサービスを提供し、JA組合員は割引が適用されます。通夜から告別式まで対応可能で、広い駐車場を完備。農村部の方にも利用しやすい立地です。',
  '長野県長野市松代町松代587',
  'nagano', 'nagano-city',
  36.56, 138.198,
  'JR信越本線 篠ノ井駅',
  30,
  80, 2, false, 50,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['JA組合員割引', '大規模葬対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  'JA長野県グループ',
  4.0, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6. セレモニーホール信濃長野
(
  'セレモニーホール信濃長野',
  'ceremony-shinano-nagano',
  'private_hall',
  '長野市中心部に位置する民間葬儀会館。長野駅から車で約7分と好アクセス。大小2つのホールを備え、少人数の家族葬から大規模な一般葬まで幅広く対応。モダンな設備と温かみのあるサービスが評判です。',
  '長野県長野市南長野南石堂町1282',
  'nagano', 'nagano-city',
  36.642, 138.188,
  'JR北陸新幹線 長野駅',
  10,
  120, 2, false, 45,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '信濃セレモニー株式会社',
  4.1, 24
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7. 小さなお葬式 長野ホール
(
  '小さなお葬式 長野ホール',
  'chiisana-ososhiki-nagano',
  'private_hall',
  '全国展開の「小さなお葬式」ブランドの長野ホール。JR長野駅から車で約12分。火葬式から家族葬まで、明確な料金体系でリーズナブルなプランを提供。追加費用が少なく、予算を抑えたい方に選ばれています。',
  '長野県長野市三輪6-15-8',
  'nagano', 'nagano-city',
  36.667, 138.208,
  '長野電鉄 本郷駅',
  8,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['低価格', '明朗会計', '家族葬専用', '24時間対応'],
  '株式会社ユニクエスト',
  4.0, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8. 安楽院会館
(
  '安楽院会館',
  'anrakuin-kaikan-nagano',
  'temple_hall',
  '安楽院が運営する長野市の寺院式場。長野市・須坂市で葬儀サービスを展開し、家族葬に特化した落ち着いた空間を提供。宗旨宗派を問わず利用可能で、寺院ならではの厳かな雰囲気の中でお別れができます。',
  '長野県長野市西和田1-28-8',
  'nagano', 'nagano-city',
  36.645, 138.213,
  '長野電鉄 市役所前駅',
  12,
  50, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['寺院式場', '宗派不問', '家族葬対応', '24時間対応'],
  '安楽院',
  4.2, 19
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9. 広域豊科葬祭センター
(
  '広域豊科葬祭センター',
  'koiki-toyoshina-sousai',
  'public_crematorium',
  '松本広域連合が運営する公営火葬場・葬祭センター。安曇野市豊科に位置し、松本市・安曇野市の住民が利用可能。火葬施設と式場を備え、通夜から火葬まで一貫対応。広い駐車場とバリアフリー設備を完備した近代的な施設です。',
  '長野県安曇野市豊科4956-2',
  'nagano', 'matsumoto',
  36.302, 137.906,
  'JR大糸線 豊科駅',
  15,
  80, 2, true, 60,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 78000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 478000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー', '家族葬対応'],
  '松本広域連合',
  3.9, 35
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10. エンディングハウスあかり松本
(
  'エンディングハウスあかり松本',
  'ending-house-akari-matsumoto',
  'private_hall',
  '松本市内の家族葬専用ホール。少人数のお別れに特化した落ち着いた空間で、1日1組完全貸切対応。リビングルームのような温かみのあるインテリアが特長。24時間対応の相談窓口を設けており、急なご不幸にも迅速に対応します。',
  '長野県松本市征矢野2-5-15',
  'nagano', 'matsumoto',
  36.225, 137.965,
  'JR篠ノ井線 南松本駅',
  8,
  25, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '株式会社エンディングハウス',
  4.4, 17
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11. 大妻ホール松本
(
  '大妻ホール松本',
  'otsuma-hall-matsumoto',
  'private_hall',
  '松本市で長年の実績を持つ大妻が運営する葬儀会館。家族葬から一般葬まで幅広い葬儀スタイルに対応。経験豊富なスタッフによるきめ細やかなサービスが評判で、地元の方々から高い信頼を得ています。宿泊施設も完備。',
  '長野県松本市巾上3-18',
  'nagano', 'matsumoto',
  36.238, 137.966,
  'JR篠ノ井線 松本駅',
  10,
  80, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['老舗葬儀社', '大規模葬対応', '家族葬対応', '宿泊可能', '駅近'],
  '株式会社大妻',
  4.2, 30
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12. 縁サービスホール松本
(
  '縁サービスホール松本',
  'en-service-hall-matsumoto',
  'private_hall',
  '松本市の葬儀社・縁サービスが運営する家族葬対応ホール。JR松本駅から車で約8分。少人数の家族葬に特化し、アットホームな雰囲気の中でお別れができます。明朗会計で追加費用が少なく、安心して利用できると好評です。',
  '長野県松本市白板1-6-12',
  'nagano', 'matsumoto',
  36.24, 137.955,
  'JR篠ノ井線 松本駅',
  12,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['明朗会計', '家族葬対応', '低価格', '24時間対応'],
  '縁サービス',
  4.3, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 13. 盛泉寺ホール
(
  '盛泉寺ホール',
  'seisenji-hall-matsumoto',
  'temple_hall',
  '松本市の盛泉寺に併設された寺院式場。静かな境内の中で厳かなお別れができます。宗旨宗派を問わず利用可能で、少人数の家族葬から法事まで対応。寺院ならではの落ち着いた雰囲気が特長で、故人を偲ぶにふさわしい空間です。',
  '長野県松本市大村681',
  'nagano', 'matsumoto',
  36.218, 137.975,
  'JR篠ノ井線 村井駅',
  15,
  40, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "僧侶控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['寺院式場', '宗派不問', '家族葬対応', '駐車場完備'],
  '盛泉寺',
  4.1, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 14. メモリアルホール松本北
(
  'メモリアルホール松本北',
  'memorial-hall-matsumoto-kita',
  'private_hall',
  '松本市北部に位置する中規模葬儀会館。家族葬から一般葬まで幅広く対応し、バリアフリー完備の近代的な施設。充実した控室と駐車場を備え、遠方からの参列者にも配慮した設備が整っています。',
  '長野県松本市島内4462-3',
  'nagano', 'matsumoto',
  36.258, 137.948,
  'JR大糸線 島内駅',
  8,
  70, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '大規模葬対応', '家族葬対応', '宿泊可能', 'バリアフリー'],
  'メモリアルホール松本',
  4.0, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 15. 小さなお葬式 松本ホール
(
  '小さなお葬式 松本ホール',
  'chiisana-ososhiki-matsumoto',
  'private_hall',
  '全国展開の「小さなお葬式」ブランドの松本ホール。火葬式から家族葬まで明確な料金体系で提供。追加費用が少なく、シンプルで温かみのある葬儀を実現。松本市内のアクセスしやすい場所に位置しています。',
  '長野県松本市中央2-1-18',
  'nagano', 'matsumoto',
  36.234, 137.97,
  'JR篠ノ井線 松本駅',
  7,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['低価格', '明朗会計', '駅近', '家族葬対応'],
  '株式会社ユニクエスト',
  4.0, 13
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 16. 松本葬祭ホール梓
(
  '松本葬祭ホール梓',
  'matsumoto-sousai-azusa',
  'private_hall',
  '松本市西部の葬儀ホール。北アルプスを望むロケーションで、家族葬に最適な落ち着いた空間を提供。1日1組貸切で、ご家族のペースでお別れの時間を過ごせます。経験豊富なスタッフが細やかにサポートします。',
  '長野県松本市波田5215-3',
  'nagano', 'matsumoto',
  36.218, 137.88,
  'アルピコ交通上高地線 波田駅',
  10,
  35, 1, false, 20,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['1日1組貸切', '家族葬対応', '自然環境', '駐車場完備'],
  '松本葬祭',
  4.1, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 17. 上田法事センター
(
  '上田法事センター',
  'ueda-houji-center',
  'private_hall',
  '上田市の葬儀・法事専用ホール。しなの鉄道「上田駅」から車で約8分。家族葬から一般葬まで対応可能で、法事にも利用される多目的施設。地域密着型のサービスと丁寧な対応で、地元の方々に親しまれています。',
  '長野県上田市住吉306-9',
  'nagano', 'ueda',
  36.398, 138.26,
  'しなの鉄道線 上田駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 508000}]',
  ARRAY['法事対応', '家族葬対応', '宿泊可能', '駐車場完備'],
  '上田法事センター',
  4.0, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 18. 家族葬のSHION上田
(
  '家族葬のSHION上田',
  'shion-ueda',
  'private_hall',
  'SHIONが展開する上田市の家族葬専用ホール。少人数のお別れに特化した落ち着いた空間で、1日1組完全貸切。24時間365日対応で、急な場合にも安心。上田市内の住宅街に位置し、静かな環境でゆっくりとお別れができます。',
  '長野県上田市中央北1-8-15',
  'nagano', 'ueda',
  36.403, 138.252,
  'しなの鉄道線 上田駅',
  10,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  'SHION',
  4.4, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 19. ベルホール吉池 上田店
(
  'ベルホール吉池 上田店',
  'bellhall-yoshiike-ueda',
  'private_hall',
  '長野県の老舗葬儀社・吉池が運営する上田市の葬儀ホール。家族葬から一般葬まで幅広く対応し、経験豊富なスタッフが丁寧にサポート。上田市内のアクセスしやすい立地で、広い駐車場を完備しています。',
  '長野県上田市天神3-5-1',
  'nagano', 'ueda',
  36.4, 138.245,
  'しなの鉄道線 上田駅',
  12,
  80, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 115000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 388000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['老舗葬儀社', '大規模葬対応', '家族葬対応', '宿泊可能'],
  '株式会社吉池',
  4.3, 22
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 20. メモリアルホール上田
(
  'メモリアルホール上田',
  'memorial-hall-ueda',
  'private_hall',
  '上田市の中規模葬儀会館。通夜から告別式まで対応可能で、家族葬にも最適。清潔感のある近代的な設備とバリアフリー対応が特長。遠方からの参列者向けの宿泊施設も備えています。',
  '長野県上田市材木町2-3-20',
  'nagano', 'ueda',
  36.405, 138.255,
  'しなの鉄道線 上田駅',
  8,
  60, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', 'バリアフリー'],
  'メモリアルホール上田',
  4.1, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 21. 伊那谷セレモニーホール
(
  '伊那谷セレモニーホール',
  'inatani-ceremony-iida',
  'private_hall',
  '飯田市の民間葬儀会館。南信州エリアで実績のある葬儀社が運営。家族葬から一般葬まで対応可能で、南アルプスを望む自然豊かな環境。地域の風習に精通したスタッフが丁寧にサポートします。',
  '長野県飯田市鼎上山2877',
  'nagano', 'iida',
  35.51, 137.824,
  'JR飯田線 鼎駅',
  10,
  80, 2, false, 40,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '伊那谷セレモニー',
  4.1, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 22. 家族葬ホール飯田
(
  '家族葬ホール飯田',
  'kazokuso-hall-iida',
  'private_hall',
  '飯田市の家族葬専用ホール。少人数のお別れに最適な落ち着いた空間。1日1組貸切で、ご家族のペースでゆっくりとお別れができます。飯田IC近くでアクセスも便利。24時間対応の相談窓口があります。',
  '長野県飯田市座光寺3256',
  'nagano', 'iida',
  35.5, 137.842,
  'JR飯田線 元善光寺駅',
  8,
  25, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['家族葬専用', '1日1組貸切', '24時間対応', 'IC近く'],
  '飯田葬祭',
  4.3, 11
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 23. セレモニーホール南信
(
  'セレモニーホール南信',
  'ceremony-hall-nanshin',
  'private_hall',
  '飯田市中心部の葬儀会館。JR飯田駅から車で約5分。中規模の式場を備え、一般葬から家族葬まで幅広く対応。南信地域で長年の実績を持ち、地域の葬儀文化に精通したスタッフが丁寧にサポートします。',
  '長野県飯田市本町3-15',
  'nagano', 'iida',
  35.515, 137.821,
  'JR飯田線 飯田駅',
  10,
  60, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['老舗葬儀社', '大規模葬対応', '家族葬対応', '宿泊可能'],
  '南信セレモニー',
  4.0, 17
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 24. 諏訪市斎場
(
  '諏訪市斎場',
  'suwa-shi-saijo',
  'public_crematorium',
  '諏訪市が運営する公営火葬場。諏訪湖を望む高台に位置し、静かな環境で故人を見送れます。火葬施設を備え、諏訪市民は利用料が優遇されます。待合室と駐車場を完備したバリアフリー対応の施設です。',
  '長野県諏訪市大字中洲5386',
  'nagano', 'suwa',
  36.038, 138.115,
  'JR中央本線 上諏訪駅',
  20,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '諏訪市',
  3.7, 18
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 25. えこうホール諏訪
(
  'えこうホール諏訪',
  'ekou-hall-suwa',
  'private_hall',
  '諏訪市の民間葬儀会館。JR上諏訪駅からタクシー約8分。家族葬から一般葬まで対応可能で、落ち着いた雰囲気の式場を備えています。諏訪湖周辺エリアで実績のある葬儀社が運営し、地域の風習に配慮したサービスを提供。',
  '長野県諏訪市四賀赤沼1545-1',
  'nagano', 'suwa',
  36.045, 138.098,
  'JR中央本線 上諏訪駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '株式会社えこう',
  4.2, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 26. セイ・ホール諏訪
(
  'セイ・ホール諏訪',
  'sei-hall-suwa',
  'private_hall',
  '諏訪市の家族葬対応ホール。「ふれ愛空間」をコンセプトに、温かみのあるサービスを提供。少人数のお別れに適した落ち着いた空間で、1日1組貸切対応。上諏訪エリアからアクセスしやすい立地です。',
  '長野県諏訪市大字上諏訪12-8',
  'nagano', 'suwa',
  36.043, 138.113,
  'JR中央本線 上諏訪駅',
  10,
  30, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 92000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '株式会社セイホール',
  4.3, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 27. 佐久斎場
(
  '佐久斎場',
  'saku-saijo',
  'public_crematorium',
  '佐久広域連合が運営する公営火葬場。佐久市・小諸市・軽井沢町など広域の住民が利用可能。火葬施設と待合室を備え、広い駐車場を完備。浅間山を望む静かな環境で、故人を厳かに見送れる施設です。',
  '長野県佐久市大字岩村田3162-1',
  'nagano', 'saku',
  36.249, 138.475,
  'JR小海線 佐久平駅',
  20,
  50, 1, true, 40,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 75000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '佐久広域連合',
  3.8, 20
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 28. セレモニーホール佐久
(
  'セレモニーホール佐久',
  'ceremony-hall-saku',
  'private_hall',
  '佐久市の民間葬儀会館。JR佐久平駅から車で約10分。家族葬から一般葬まで対応可能な充実した施設。経験豊富なスタッフが東信エリアの葬儀文化に配慮したサービスを提供しています。',
  '長野県佐久市猿久保28-1',
  'nagano', 'saku',
  36.251, 138.468,
  'JR小海線 佐久平駅',
  15,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '佐久セレモニー',
  4.1, 16
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 29. 安曇野セレモニーホール
(
  '安曇野セレモニーホール',
  'azumino-ceremony-hall',
  'private_hall',
  '安曇野市の民間葬儀会館。北アルプスを望む自然豊かな環境に位置。家族葬から一般葬まで幅広く対応し、温かみのあるサービスが特長。広い駐車場を完備し、遠方からの参列者にも配慮しています。',
  '長野県安曇野市穂高5156-2',
  'nagano', 'azumino',
  36.338, 137.883,
  'JR大糸線 穂高駅',
  10,
  60, 2, false, 35,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['自然環境', '家族葬対応', '宿泊可能', '駐車場完備'],
  '安曇野セレモニー',
  4.2, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 30. 家族葬ホール安曇野
(
  '家族葬ホール安曇野',
  'kazokuso-hall-azumino',
  'private_hall',
  '安曇野市の家族葬専用ホール。少人数のお別れに特化した落ち着いた空間で、1日1組完全貸切。北アルプスの眺望が美しい立地で、穏やかな雰囲気の中お別れの時間を過ごせます。',
  '長野県安曇野市三郷明盛2815',
  'nagano', 'azumino',
  36.29, 137.868,
  'JR大糸線 一日市場駅',
  12,
  25, 1, false, 15,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 90000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['家族葬専用', '1日1組貸切', '自然環境', '24時間対応'],
  '安曇野葬祭',
  4.3, 11
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 31. ハクゼンホール須坂会館
(
  'ハクゼンホール須坂会館',
  'hakuzen-suzaka',
  'private_hall',
  '博善社が運営する須坂市の葬儀会館。家族葬から一般葬まで対応可能。安置室完備で、須坂市・中野市エリアの方々に利用されています。地域に根ざした丁寧なサービスが特長です。',
  '長野県須坂市大字須坂1239-1',
  'nagano', 'suzaka',
  36.651, 138.307,
  '長野電鉄 須坂駅',
  10,
  50, 2, false, 25,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 105000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['安置室完備', '家族葬対応', '駅近', '駐車場完備'],
  '株式会社博善社',
  4.1, 14
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 32. 小諸市営火葬場
(
  '小諸市営火葬場',
  'komoro-shiee-kasoba',
  'public_crematorium',
  '小諸市が運営する公営火葬場。浅間山の麓に位置し、自然に囲まれた静かな環境。市民は利用料が優遇されます。待合室と駐車場を完備し、バリアフリーにも対応しています。',
  '長野県小諸市大字諸198-2',
  'nagano', 'komoro',
  36.325, 138.425,
  'しなの鉄道線 小諸駅',
  20,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '小諸市',
  3.6, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 33. 伊那市火葬場
(
  '伊那市火葬場',
  'ina-shi-kasoba',
  'public_crematorium',
  '伊那市が運営する公営火葬場。南アルプスと中央アルプスに挟まれた伊那谷の自然豊かな環境。市民は利用料が優遇されます。火葬施設と待合室を備え、穏やかな場所で故人を見送れます。',
  '長野県伊那市大字伊那3556',
  'nagano', 'ina',
  35.832, 137.954,
  'JR飯田線 伊那市駅',
  20,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '伊那市',
  3.7, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 34. セレモニーホール伊那
(
  'セレモニーホール伊那',
  'ceremony-hall-ina',
  'private_hall',
  '伊那市の民間葬儀会館。JR伊那市駅から車で約8分。上伊那エリアで実績のある葬儀社が運営し、家族葬から一般葬まで幅広く対応。アルプスの眺望が美しい立地で、落ち着いた雰囲気の中お別れができます。',
  '長野県伊那市荒井3413-1',
  'nagano', 'ina',
  35.84, 137.958,
  'JR飯田線 伊那市駅',
  12,
  60, 2, false, 30,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 95000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['家族葬対応', '大規模葬対応', '宿泊可能', '駐車場完備'],
  '伊那セレモニー',
  4.1, 17
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 35. 駒ヶ根市斎場
(
  '駒ヶ根市斎場',
  'komagane-shi-saijo',
  'public_crematorium',
  '駒ヶ根市が運営する公営火葬場。中央アルプス千畳敷を望む自然豊かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、静かな場所で故人を見送れます。駐車場完備でバリアフリー対応です。',
  '長野県駒ヶ根市赤穂8118',
  'nagano', 'komagane',
  35.729, 137.932,
  'JR飯田線 駒ヶ根駅',
  15,
  30, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '駒ヶ根市',
  3.7, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 36. 中野市斎場
(
  '中野市斎場',
  'nakano-nagano-saijo',
  'public_crematorium',
  '中野市が運営する公営火葬場。北信濃の自然に囲まれた静かな環境。市民は利用料が優遇されます。火葬施設と待合室を備え、駐車場を完備。バリアフリー対応で安心して利用できます。',
  '長野県中野市大字岩船316-1',
  'nagano', 'nakano-nagano',
  36.742, 138.368,
  '長野電鉄 信州中野駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '中野市',
  3.6, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 37. 茅野市営火葬場
(
  '茅野市営火葬場',
  'chino-shiee-kasoba',
  'public_crematorium',
  '茅野市が運営する公営火葬場。八ヶ岳の麓に位置し、自然豊かな環境。市民は利用料が優遇されます。火葬施設と待合室を備え、静かな場所で故人を見送れます。蓼科高原エリアからのアクセスも良好です。',
  '長野県茅野市宮川2581-1',
  'nagano', 'chino',
  35.995, 138.155,
  'JR中央本線 茅野駅',
  15,
  30, 1, true, 25,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '茅野市',
  3.7, 12
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 38. 塩尻市斎場
(
  '塩尻市斎場',
  'shiojiri-shi-saijo',
  'public_crematorium',
  '塩尻市が運営する公営火葬場。松本盆地南部に位置し、アルプスを望む静かな環境。市民は火葬料が優遇されます。火葬施設と待合室を備え、バリアフリー対応。近代的な設備で安心して利用できます。',
  '長野県塩尻市大字広丘吉田880-1',
  'nagano', 'shiojiri',
  36.107, 137.955,
  'JR篠ノ井線 塩尻駅',
  15,
  40, 1, true, 30,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 72000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', 'バリアフリー'],
  '塩尻市',
  3.8, 15
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 39. 家族葬ホール塩尻
(
  '家族葬ホール塩尻',
  'kazokuso-hall-shiojiri',
  'private_hall',
  '塩尻市の家族葬専用ホール。少人数のお別れに最適な落ち着いた空間。1日1組貸切で、ご家族のペースでゆっくりとお別れができます。JR塩尻駅から車で約5分の好立地。24時間対応の相談窓口があります。',
  '長野県塩尻市大門一番町9-5',
  'nagano', 'shiojiri',
  36.111, 137.953,
  'JR篠ノ井線 塩尻駅',
  8,
  25, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 88000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['家族葬専用', '1日1組貸切', '駅近', '24時間対応'],
  '塩尻葬祭',
  4.2, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 40. 千曲市営斎場
(
  '千曲市営斎場',
  'chikuma-shiee-saijo',
  'public_crematorium',
  '千曲市が運営する公営火葬場。善光寺平を望む高台に位置し、静かな環境。市民は火葬料が優遇されます。しなの鉄道「屋代駅」からタクシー約10分。待合室と駐車場を完備したバリアフリー対応施設です。',
  '長野県千曲市大字屋代2251-1',
  'nagano', 'chikuma',
  36.53, 138.128,
  'しなの鉄道線 屋代駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 70000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '千曲市',
  3.6, 10
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 41. 大町市斎場
(
  '大町市斎場',
  'omachi-shi-saijo',
  'public_crematorium',
  '大町市が運営する公営火葬場。北アルプスの麓・大町に位置し、雄大な自然に囲まれた環境。市民は火葬料が優遇されます。JR信濃大町駅からタクシー約10分。待合室と駐車場を備えたバリアフリー施設です。',
  '長野県大町市大字大町4528',
  'nagano', 'omachi',
  36.505, 137.852,
  'JR大糸線 信濃大町駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備', '自然環境'],
  '大町市',
  3.6, 8
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 42. 飯山市斎場
(
  '飯山市斎場',
  'iiyama-shi-saijo',
  'public_crematorium',
  '飯山市が運営する公営火葬場。北信濃の奥座敷・飯山に位置し、四季折々の自然に囲まれた環境。市民は火葬料が優遇されます。JR飯山駅からタクシー約10分。待合室と駐車場を完備しています。',
  '長野県飯山市大字飯山2820',
  'nagano', 'iiyama',
  36.851, 138.362,
  'JR北陸新幹線 飯山駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '飯山市',
  3.6, 8
);

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 43. 東御市斎場
(
  '東御市斎場',
  'tomi-shi-saijo',
  'public_crematorium',
  '東御市が運営する公営火葬場。浅間連峰を望む東信エリアに位置。市民は利用料が優遇されます。しなの鉄道「田中駅」からタクシー約10分。火葬施設と待合室を備えた近代的な施設です。',
  '長野県東御市滋野乙3236',
  'nagano', 'tomi',
  36.355, 138.341,
  'しなの鉄道線 田中駅',
  15,
  30, 1, true, 20,
  '{"霊安室": true, "バリアフリー": true, "駐車場": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 68000}]',
  ARRAY['火葬場併設', '公営斎場', '駐車場完備'],
  '東御市',
  3.6, 7
);

