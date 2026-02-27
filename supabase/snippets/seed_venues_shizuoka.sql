-- =============================================
-- 斎場データ: 静岡県 約30件
-- 静岡市8件, 浜松市6件, 富士市3件, 沼津市3件,
-- 磐田市2件, 藤枝市2件, 焼津市2件, 掛川市1件,
-- 三島市2件, 富士宮市1件
-- =============================================

-- =============================================
-- 1. 静岡市（shizuoka-city）: 8件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1-1. 静岡市静岡斎場（公営火葬場）
(
  '静岡市静岡斎場',
  'shizuoka-shizuoka-saijo',
  'public_crematorium',
  '静岡市葵区に位置する市営の火葬場。火葬炉8基と待合室を備え、静岡市中心部エリアの拠点施設として機能しています。JR静岡駅から車で約20分、静かな山あいに立地し、厳かな雰囲気の中で故人をお見送りいただけます。静岡市民は火葬料が無料です。',
  '静岡県静岡市葵区慈悲尾472-1',
  'shizuoka', 'shizuoka-city',
  35.0160, 138.3480,
  'JR東海道線 静岡駅（車20分）',
  60,
  50, 1, true, 60,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '静岡市民無料', '駐車場完備'],
  '静岡市',
  3.8, 35
),

-- 1-2. 静岡市清水斎場（公営火葬場）
(
  '静岡市清水斎場',
  'shizuoka-shimizu-saijo',
  'public_crematorium',
  '静岡市清水区に位置する市営火葬場。清水港エリアの方々に広く利用されています。火葬炉6基と待合室を完備。静岡鉄道狐ケ崎駅から車で約15分のアクセス。落ち着いた環境で故人との最後のお別れの時間を過ごせます。静岡市民は火葬料無料。',
  '静岡県静岡市清水区北矢部町30-5',
  'shizuoka', 'shizuoka-city',
  35.0380, 138.4750,
  '静岡鉄道静岡清水線 狐ケ崎駅（車15分）',
  40,
  40, 1, true, 40,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '静岡市民無料'],
  '静岡市',
  3.7, 22
),

-- 1-3. 庵原斎場（公営火葬場）
(
  '静岡市庵原斎場',
  'shizuoka-ihara-saijo',
  'public_crematorium',
  '静岡市清水区蒲原に位置する市営火葬場。JR富士川駅からタクシーで約5分のアクセス。蒲原・由比地区の方々に利用されている小規模な斎場です。静岡市民は火葬料が無料で、家族葬など少人数の葬儀に適した落ち着いた施設です。',
  '静岡県静岡市清水区蒲原4999-1',
  'shizuoka', 'shizuoka-city',
  35.1260, 138.5890,
  'JR東海道本線 富士川駅',
  20,
  30, 1, true, 20,
  '{"休憩室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '静岡市民無料', '少人数向け'],
  '静岡市',
  3.6, 12
),

-- 1-4. 家族葬のタクセル 静岡南（民営斎場）
(
  '家族葬のタクセル 静岡南',
  'takusel-shizuoka-minami',
  'private_hall',
  '静岡市駿河区に位置する家族葬専用ホール。少人数でのお別れに特化した温かみのある空間設計が特徴です。1日1組限定で、ご家族だけのプライベートな時間をお過ごしいただけます。JR静岡駅から車で約10分、駐車場も完備しています。',
  '静岡県静岡市駿河区中田本町16-3',
  'shizuoka', 'shizuoka-city',
  34.9620, 138.3920,
  'JR東海道線 静岡駅（車10分）',
  25,
  30, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "宿泊設備": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}]',
  ARRAY['家族葬専用', '1日1組限定', '宿泊可能', '24時間対応'],
  '株式会社タクセル',
  4.3, 28
),

-- 1-5. 富士葬祭 静岡駅南（民営斎場）
(
  '富士葬祭 静岡駅南',
  'fujisousai-shizuoka-ekinan',
  'private_hall',
  '静岡駅南口エリアに位置する富士葬祭直営の葬儀会館。家族葬から一般葬まで幅広く対応し、2つの式場を完備。JR静岡駅南口から徒歩10分の好立地で、遠方からの参列者にも便利です。経験豊富なスタッフが24時間体制でサポートします。',
  '静岡県静岡市駿河区南町14-25',
  'shizuoka', 'shizuoka-city',
  34.9680, 138.3870,
  'JR東海道線 静岡駅',
  10,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}]',
  ARRAY['駅近', '複数式場', '24時間対応', '大型葬対応'],
  '富士葬祭',
  4.1, 42
),

-- 1-6. シティホール静岡（民営斎場）
(
  'シティホール静岡',
  'city-hall-shizuoka',
  'private_hall',
  '静岡市葵区の中心部に位置する総合葬儀会館。120名収容の大式場と30名収容の小式場を備え、一般葬から家族葬まで幅広いニーズに対応。充実した設備と心のこもったサービスで、大切な方とのお別れをサポートいたします。',
  '静岡県静岡市葵区鷹匠2-12-5',
  'shizuoka', 'shizuoka-city',
  34.9760, 138.3890,
  'JR東海道線 静岡駅',
  12,
  120, 2, false, 30,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['中心部立地', '大型式場', '会食室完備', '駐車場30台'],
  '株式会社平安閣',
  4.0, 38
),

-- 1-7. パルモ葬祭 清水（民営斎場）
(
  'パルモ葬祭 清水',
  'palmo-shimizu',
  'private_hall',
  '静岡市清水区に位置するパルモ葬祭直営の家族葬ホール。清水駅から車で5分の好アクセス。少人数でも広すぎない適切なサイズの式場で、温かみのある家族葬を執り行えます。安置室完備で、ご遺体の搬送から通夜・葬儀まで一貫対応。',
  '静岡県静岡市清水区島崎町149',
  'shizuoka', 'shizuoka-city',
  35.0150, 138.4890,
  'JR東海道線 清水駅',
  15,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 208000}]',
  ARRAY['家族葬専用', '清水エリア', '安置室完備'],
  'パルモ葬祭',
  4.2, 25
),

-- 1-8. 善光寺沼上別院（寺院式場）
(
  '善光寺沼上別院',
  'zenkoji-numakami-betsuin',
  'temple_hall',
  '静岡市葵区に位置する寺院式場。厳かな仏教式の葬儀はもちろん、宗旨宗派を問わず利用可能。静岡市静岡斎場に隣接しており、葬儀から火葬までスムーズに執り行えます。本堂は80名収容可能で、伝統的な雰囲気の中で故人をお見送りいただけます。',
  '静岡県静岡市葵区沼上472-5',
  'shizuoka', 'shizuoka-city',
  35.0155, 138.3490,
  'JR東海道線 静岡駅（車20分）',
  60,
  80, 1, false, 25,
  '{"本堂式場": true, "駐車場": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['寺院式場', '宗旨宗派不問', '斎場隣接', '伝統的雰囲気'],
  '善光寺沼上別院',
  4.0, 18
);

-- =============================================
-- 2. 浜松市（hamamatsu）: 6件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2-1. 浜松斎場（公営火葬場）
(
  '浜松斎場',
  'hamamatsu-saijo',
  'public_crematorium',
  '浜松市中央区に位置する市営斎場。大式場（120名収容）と火葬棟を備えた総合施設で、通夜から火葬まで同一敷地内で執り行えます。現在建替え工事中（2027年6月まで）で、臨時施設にて運営継続中。浜松市民は火葬料が割安です。',
  '静岡県浜松市中央区中沢町47-1',
  'shizuoka', 'hamamatsu',
  34.7180, 137.7320,
  '遠鉄 八幡駅（バス+徒歩25分）',
  25,
  120, 1, true, 33,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '大式場', '浜松市民割引'],
  '浜松市',
  3.7, 45
),

-- 2-2. 浜松市雄踏斎場（公営火葬場）
(
  '浜松市雄踏斎場',
  'hamamatsu-yuto-saijo',
  'public_crematorium',
  '浜松市中央区雄踏町に位置する市営火葬場。火葬場と2室の葬儀ホールを備え、通夜から告別式、火葬までを同じ敷地内で執り行えます。浜名湖に近い静かな環境で、落ち着いた雰囲気の中でのお別れが可能です。駐車場も十分に確保されています。',
  '静岡県浜松市中央区雄踏町宇布見6098-3',
  'shizuoka', 'hamamatsu',
  34.7050, 137.6460,
  'JR東海道線 舞阪駅（車10分）',
  30,
  60, 2, true, 40,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場併設', '公営斎場', '式場2室', '浜松市民割引'],
  '浜松市',
  3.8, 30
),

-- 2-3. 浜北斎場（公営火葬場）
(
  '浜松市浜北斎場',
  'hamamatsu-hamakita-saijo',
  'public_crematorium',
  '浜松市浜名区に位置する市営火葬場。2020年に拡張工事が完了し、森林公園に隣接した赤松林に囲まれた豊かな自然環境が特徴。荘厳な雰囲気の南館と木のぬくもりを感じられる北館の2棟構成。天竜浜名湖線宮口駅からタクシー5分のアクセスです。',
  '静岡県浜松市浜名区宮口4831-170',
  'shizuoka', 'hamamatsu',
  34.8230, 137.7890,
  '天竜浜名湖線 宮口駅（タクシー5分）',
  20,
  50, 2, true, 50,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場', '公営斎場', '自然豊か', '2020年拡張', '浜松市民割引'],
  '浜松市',
  4.0, 33
),

-- 2-4. 富士葬祭 森田町（民営斎場）
(
  '富士葬祭 森田町',
  'fujisousai-moritamachi',
  'private_hall',
  '浜松市中央区森田町に位置する富士葬祭直営の葬儀会館。家族葬から一般葬まで幅広く対応。JR浜松駅から車で約8分の好立地で、充実した設備と経験豊富なスタッフが大切な方とのお別れをサポート。2つの式場を備え、同時に複数の葬儀にも対応可能です。',
  '静岡県浜松市中央区森田町130',
  'shizuoka', 'hamamatsu',
  34.7120, 137.7350,
  'JR東海道線 浜松駅',
  20,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 218000}]',
  ARRAY['複数式場', '24時間対応', '会食室完備', '浜松市中心部'],
  '富士葬祭',
  4.2, 48
),

-- 2-5. パルモ葬祭 浜松中央（民営斎場）
(
  'パルモ葬祭 浜松中央',
  'palmo-hamamatsu-chuo',
  'private_hall',
  '浜松市中央区に位置するパルモ葬祭直営の家族葬ホール。少人数の家族葬に特化した設計で、1日1組限定のプライベート空間を提供。24時間365日対応で、急なご不幸にもすぐにお迎えに伺います。駐車場完備で、ご遺族の負担を最小限に抑えたプランが人気です。',
  '静岡県浜松市中央区鍛冶町100-1',
  'shizuoka', 'hamamatsu',
  34.7060, 137.7280,
  'JR東海道線 浜松駅',
  8,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬専用', '1日1組限定', '駅近', '24時間対応'],
  'パルモ葬祭',
  4.4, 36
),

-- 2-6. セレモニーホール浜松（民営斎場）
(
  'セレモニーホール浜松',
  'ceremony-hall-hamamatsu',
  'private_hall',
  '浜松市中央区に位置する総合葬儀会館。最大150名収容の大ホールと40名収容の小ホールを備え、社葬から家族葬まであらゆる規模の葬儀に対応。ベテランセレモニーディレクターが在籍し、ご遺族のご要望に寄り添った葬儀をプロデュースいたします。',
  '静岡県浜松市中央区高丘東1-5-10',
  'shizuoka', 'hamamatsu',
  34.7350, 137.7400,
  '遠鉄バス 高丘東（徒歩3分）',
  35,
  150, 2, false, 50,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true, "宿泊設備": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大型ホール', '社葬対応', '宿泊可能', '大型駐車場'],
  '株式会社セレモニー浜松',
  4.1, 52
);

-- =============================================
-- 3. 富士市（fuji）: 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3-1. 富士市斎場（公営火葬場）
(
  '富士市斎場',
  'fuji-shi-saijo',
  'public_crematorium',
  '富士市大渕に位置する市営火葬場。緑豊かな広々とした敷地に火葬棟と待合棟が配置され、美しい日本庭園と一体化した待合棟は会葬者に安らぎの空間を提供。普通車102台・マイクロバス6台の大型駐車場を完備。富士市民は火葬料無料です。',
  '静岡県富士市大渕2588-1',
  'shizuoka', 'fuji',
  35.2100, 138.6350,
  'JR身延線 入山瀬駅（車15分）',
  45,
  50, 1, true, 108,
  '{"休憩室": true, "駐車場": true, "マイクロバス駐車": true, "バリアフリー": true, "日本庭園": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '富士市民無料', '大型駐車場', '日本庭園'],
  '富士市',
  3.9, 27
),

-- 3-2. かぐやの里メモリーホール富士（民営斎場）
(
  'かぐやの里メモリーホール富士',
  'kaguyanosato-fuji',
  'private_hall',
  '富士市に位置するかぐやの里メモリーホール直営の家族葬ホール。家族葬に特化した温かみのある空間で、故人との最後の時間をゆっくりとお過ごしいただけます。24時間対応で、急なご不幸にも迅速に対応。富士市斎場への送迎サービスもご利用いただけます。',
  '静岡県富士市永田町1-60',
  'shizuoka', 'fuji',
  35.1620, 138.6730,
  'JR東海道線 富士駅',
  12,
  40, 1, false, 15,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}]',
  ARRAY['家族葬専用', '駅近', '24時間対応', '斎場送迎あり'],
  'かぐやの里メモリーホール',
  4.3, 32
),

-- 3-3. 富士葬祭 富士（民営斎場）
(
  '富士葬祭 富士',
  'fujisousai-fuji',
  'private_hall',
  '富士市中心部に位置する富士葬祭直営の葬儀会館。2つの式場を備え、家族葬から一般葬まで幅広いニーズに対応。富士山を望む立地で、経験豊富なスタッフが心を込めたサービスを提供。無料の事前相談やお見積もりにも対応しています。',
  '静岡県富士市本町15-8',
  'shizuoka', 'fuji',
  35.1590, 138.6760,
  'JR東海道線 富士駅',
  10,
  80, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['複数式場', '駅近', '事前相談無料', '富士山望む立地'],
  '富士葬祭',
  4.1, 38
);

-- =============================================
-- 4. 沼津市（numazu）: 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4-1. 沼津市斎場（公営火葬場）
(
  '沼津市斎場',
  'numazu-shi-saijo',
  'public_crematorium',
  '沼津市中瀬町に位置する市営火葬場。火葬炉5基と待合室5室を備えた比較的規模の大きい火葬場です。JR沼津駅南口からタクシー約10分のアクセス。バリアフリー対応で安置室や仮眠施設なども完備。沼津市民は火葬料が割安で利用できます。',
  '静岡県沼津市中瀬町14-1',
  'shizuoka', 'numazu',
  35.0850, 138.8580,
  'JR東海道線 沼津駅',
  25,
  40, 1, true, 30,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true, "安置室": true, "仮眠施設": true, "法要室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '仮眠施設あり', '安置室完備', '沼津市民割引'],
  '沼津市',
  3.8, 25
),

-- 4-2. 白樹苑沼津（民営斎場）
(
  '白樹苑沼津',
  'hakujuen-numazu',
  'private_hall',
  '沼津市に位置する民営葬儀会館。家族葬から一般葬まで対応可能な2つの式場を完備。沼津駅からのアクセスが良く、経験豊富なスタッフが心を込めたサポートを提供。生花祭壇や音楽葬など、故人の個性を大切にしたオーダーメイド葬にも対応しています。',
  '静岡県沼津市大手町3-5-16',
  'shizuoka', 'numazu',
  35.0960, 138.8620,
  'JR東海道線 沼津駅',
  8,
  60, 2, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['駅近', '複数式場', 'オーダーメイド葬', '生花祭壇'],
  '白樹苑',
  4.2, 30
),

-- 4-3. 家族葬のタクセル 沼津（民営斎場）
(
  '家族葬のタクセル 沼津',
  'takusel-numazu',
  'private_hall',
  '沼津市に位置する家族葬専用ホール。少人数でのお別れに最適なコンパクトな式場を備え、1日1組限定でプライベートなお別れの時間を提供。リーズナブルな価格設定で、費用を抑えたい方にも安心。24時間365日対応で、お電話一本でお迎えに伺います。',
  '静岡県沼津市高島町15-3',
  'shizuoka', 'numazu',
  35.0920, 138.8550,
  'JR東海道線 沼津駅',
  10,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専用', '1日1組限定', '低価格', '24時間対応'],
  '株式会社タクセル',
  4.4, 22
);

-- =============================================
-- 5. 磐田市（iwata）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5-1. 磐田市聖苑（公営火葬場）
(
  '磐田市聖苑',
  'iwata-shi-seien',
  'public_crematorium',
  '磐田市塩新田に位置する公営の葬祭施設。葬儀式場と火葬場が一体型の施設で、通夜から火葬まで同一敷地内で執り行えます。磐田市民は火葬料が割安。広い駐車場を完備し、車でのアクセスが便利。落ち着いた環境の中で故人との最後の時間をお過ごしいただけます。',
  '静岡県磐田市塩新田582-8',
  'shizuoka', 'iwata',
  34.7480, 137.8250,
  'JR東海道線 磐田駅（車15分）',
  40,
  80, 1, true, 50,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '式場一体型', '磐田市民割引'],
  '磐田市',
  3.8, 20
),

-- 5-2. シティホール磐田（民営斎場）
(
  'シティホール磐田',
  'city-hall-iwata',
  'private_hall',
  '磐田市大原に位置する民営葬儀会館。家族葬から一般葬まで幅広く対応し、充実した設備で心温まるお別れの場を提供。JR磐田駅から車で約10分のアクセス。経験豊富なスタッフが24時間体制で、ご遺族の不安や疑問にお答えいたします。',
  '静岡県磐田市大原808',
  'shizuoka', 'iwata',
  34.7170, 137.8520,
  'JR東海道線 磐田駅（車10分）',
  25,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['民営斎場', '24時間対応', '会食室完備'],
  '株式会社セレモニー磐田',
  4.0, 18
);

-- =============================================
-- 6. 藤枝市（fujieda）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6-1. 富士葬祭 藤枝（民営斎場）
(
  '富士葬祭 藤枝',
  'fujisousai-fujieda',
  'private_hall',
  '藤枝市に位置する富士葬祭直営の葬儀会館。家族葬に適したコンパクトな式場と一般葬対応の大式場を備え、幅広いニーズに対応。JR藤枝駅から車で約5分の好立地。志太地区（藤枝市・焼津市）エリアの葬儀を多数手がける実績豊富な施設です。',
  '静岡県藤枝市田沼1-25-5',
  'shizuoka', 'fujieda',
  34.8640, 138.2570,
  'JR東海道線 藤枝駅',
  15,
  80, 2, false, 25,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 208000}]',
  ARRAY['複数式場', '志太エリア', '実績豊富', '事前相談無料'],
  '富士葬祭',
  4.1, 35
),

-- 6-2. パルモ葬祭 藤枝（民営斎場）
(
  'パルモ葬祭 藤枝',
  'palmo-fujieda',
  'private_hall',
  '藤枝市に位置するパルモ葬祭直営の家族葬ホール。少人数の家族葬に特化し、故人やご遺族の想いに寄り添ったオーダーメイドの葬儀を提供。安置室完備で、ご遺体の搬送から通夜・葬儀・火葬場への送迎まで一貫してサポートいたします。',
  '静岡県藤枝市駅前2-8-15',
  'shizuoka', 'fujieda',
  34.8590, 138.2530,
  'JR東海道線 藤枝駅',
  5,
  30, 1, false, 12,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}]',
  ARRAY['家族葬専用', '駅近', '安置室完備', '送迎対応'],
  'パルモ葬祭',
  4.3, 20
);

-- =============================================
-- 7. 焼津市（yaizu）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7-1. 星山の苑（公営火葬場）
(
  '星山の苑',
  'hoshiyama-no-sono',
  'public_crematorium',
  '焼津市浜当目に位置する志太広域事務組合が運営する公営の葬祭式場・火葬場。焼津市と藤枝市の住民が利用可能。式場と火葬場が一体型の施設で、通夜から火葬まで同一敷地内で完結。海を望む高台に位置し、自然に囲まれた穏やかな環境です。',
  '静岡県焼津市浜当目1159-1',
  'shizuoka', 'yaizu',
  34.8530, 138.3120,
  'JR東海道線 焼津駅（車15分）',
  40,
  80, 2, true, 60,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "控室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '式場一体型', '焼津市・藤枝市民対応'],
  '志太広域事務組合',
  3.9, 28
),

-- 7-2. 家族葬のタクセル 焼津（民営斎場）
(
  '家族葬のタクセル 焼津',
  'takusel-yaizu',
  'private_hall',
  '焼津市に位置する家族葬専用ホール。JR焼津駅から徒歩圏内の好立地で、少人数でのお別れに最適な温かみのある空間。1日1組限定で、ご家族だけの時間を大切にしたプライベートな葬儀が可能。費用を抑えたシンプルなプランから、こだわりの葬儀まで対応します。',
  '静岡県焼津市栄町2-5-10',
  'shizuoka', 'yaizu',
  34.8660, 138.3200,
  'JR東海道線 焼津駅',
  8,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専用', '駅近', '1日1組限定', '低価格'],
  '株式会社タクセル',
  4.5, 15
);

-- =============================================
-- 8. 掛川市（kakegawa）: 1件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8-1. 富士葬祭 掛川（民営斎場）
(
  '富士葬祭 掛川',
  'fujisousai-kakegawa',
  'private_hall',
  '掛川市に位置する富士葬祭直営の葬儀会館。JR掛川駅から車で約5分の好立地。掛川市には市営火葬場がないため、近隣の東遠地区聖苑（菊川市）や中遠聖苑（袋井市）への送迎にも対応。家族葬から一般葬まで、地域に密着したサービスを提供しています。',
  '静岡県掛川市北門1-3',
  'shizuoka', 'kakegawa',
  34.7720, 138.0150,
  'JR東海道線 掛川駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true, "会食室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 208000}]',
  ARRAY['駅近', '火葬場送迎対応', '地域密着', '事前相談無料'],
  '富士葬祭',
  4.0, 22
);

-- =============================================
-- 9. 三島市（mishima）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9-1. みしま聖苑（公営火葬場）
(
  'みしま聖苑',
  'mishima-seien',
  'public_crematorium',
  '三島市に位置する三島函南広域行政組合が運営する公営火葬場。三島市と函南町の住民が利用可能。火葬炉と待合室を備え、静かな自然環境の中で故人との最後のお別れが可能。三島駅からタクシーで約15分のアクセス。市民は火葬料が割安です。',
  '静岡県三島市字賀茂之洞4703-7',
  'shizuoka', 'mishima',
  35.1010, 138.9350,
  'JR東海道線 三島駅（タクシー15分）',
  40,
  40, 1, true, 40,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '三島市・函南町民対応', '自然環境'],
  '三島函南広域行政組合',
  3.7, 18
),

-- 9-2. 家族葬のタクセル 三島（民営斎場）
(
  '家族葬のタクセル 三島',
  'takusel-mishima',
  'private_hall',
  '三島市に位置する家族葬専用ホール。三島駅から徒歩圏内の好立地で、少人数の温かい家族葬を専門に行っています。1日1組限定のプライベート空間で、故人とご遺族だけの大切な時間をお過ごしいただけます。みしま聖苑への送迎サービスも対応可能です。',
  '静岡県三島市新谷46-10',
  'shizuoka', 'mishima',
  35.1080, 138.9180,
  'JR東海道線 三島駅',
  12,
  30, 1, false, 10,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専用', '1日1組限定', '駅近', '聖苑送迎対応'],
  '株式会社タクセル',
  4.4, 16
);

-- =============================================
-- 10. 富士宮市（fujinomiya）: 1件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10-1. 富士宮市斎場（公営火葬場）
(
  '富士宮市斎場',
  'fujinomiya-shi-saijo',
  'public_crematorium',
  '富士宮市に位置する市営火葬場。富士山の麓、万野原に位置し、雄大な自然に囲まれた環境で故人をお見送りいただけます。火葬炉と待合室を完備。JR身延線富士宮駅から車で約10分のアクセス。富士宮市民は火葬料が割安で利用可能です。',
  '静岡県富士宮市万野原新田4079-1',
  'shizuoka', 'fujinomiya',
  35.2260, 138.6060,
  'JR身延線 富士宮駅（車10分）',
  30,
  40, 1, true, 30,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '富士山の麓', '富士宮市民割引'],
  '富士宮市',
  3.7, 15
);
