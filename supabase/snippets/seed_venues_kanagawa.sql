-- =============================================
-- 斎場データ: 神奈川県 約50件
-- 横浜市15件, 川崎市8件, 相模原市5件, 横須賀市4件,
-- 藤沢市4件, 平塚市3件, 茅ヶ崎市2件, 大和市2件,
-- 厚木市2件, 鎌倉市2件, 小田原市2件, 海老名市1件
-- =============================================

-- =============================================
-- 1. 横浜市（yokohama）: 15件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1-1. 横浜市久保山斎場（公営火葬場）
(
  '横浜市久保山斎場',
  'yokohama-kuboyama-saijo',
  'public_crematorium',
  '横浜市営の歴史ある火葬場。火葬炉12基、休憩室12室（各40名収容）を備え、年間約1万件の火葬を執り行っています。横浜市民の方は割安で利用可能。普通車68台・マイクロバス12台の駐車場を完備し、バスでのアクセスも便利です。',
  '神奈川県横浜市西区元久保町3-1',
  'kanagawa', 'yokohama',
  35.4430, 139.6120,
  '京急本線 黄金町駅（バス6分）',
  20,
  40, 1, true, 80,
  '{"休憩室": true, "駐車場": true, "マイクロバス駐車": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '横浜市民割引', '大型駐車場'],
  '横浜市',
  3.8, 32
),

-- 1-2. 横浜市戸塚斎場（公営火葬場）
(
  '横浜市戸塚斎場',
  'yokohama-totsuka-saijo',
  'public_crematorium',
  '横浜市営の火葬場で、戸塚区・泉区・栄区エリアの方に多く利用されています。火葬炉10基を備え、横浜市南西部の拠点施設として機能。市営地下鉄踊場駅から徒歩15分、戸塚駅からバスでアクセスできます。',
  '神奈川県横浜市戸塚区鳥が丘10-5',
  'kanagawa', 'yokohama',
  35.3960, 139.5340,
  '横浜市営地下鉄ブルーライン 踊場駅',
  15,
  30, 1, true, 60,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['火葬場', '公営斎場', '横浜市民割引'],
  '横浜市',
  3.7, 28
),

-- 1-3. 横浜市南部斎場（公営火葬場）
(
  '横浜市南部斎場',
  'yokohama-nanbu-saijo',
  'public_crematorium',
  '横浜市金沢区に位置する市営火葬場。火葬炉10基と式場2室を備え、通夜・告別式から火葬まで同一施設内で執り行えます。横浜横須賀道路・朝比奈ICから近く、車でのアクセスが便利。金沢区・磯子区・港南区エリアの方に多く利用されています。',
  '神奈川県横浜市金沢区みず木町1',
  'kanagawa', 'yokohama',
  35.3300, 139.5780,
  '京急本線 金沢八景駅（バス10分+徒歩10分）',
  30,
  100, 2, true, 70,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '横浜市民割引'],
  '横浜市',
  3.9, 35
),

-- 1-4. 横浜市北部斎場（公営火葬場）
(
  '横浜市北部斎場',
  'yokohama-hokubu-saijo',
  'public_crematorium',
  '横浜市緑区に位置する市営火葬場。火葬炉12基と式場3室を備え、横浜市北部エリアの拠点施設。JR横浜線十日市場駅からバスでアクセス可能。緑区・青葉区・都筑区・旭区エリアの方に多く利用されています。',
  '神奈川県横浜市緑区長津田町5125-1',
  'kanagawa', 'yokohama',
  35.5190, 139.5040,
  'JR横浜線 十日市場駅（バス+徒歩15分）',
  25,
  120, 3, true, 80,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "安置室": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 298000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '横浜市民割引', '大型駐車場'],
  '横浜市',
  4.0, 41
),

-- 1-5. ラステル新横浜（民営斎場）
(
  'ラステル新横浜',
  'lastel-shin-yokohama',
  'private_hall',
  '新横浜駅から徒歩1分の好立地にある民営葬儀会館。株式会社ニチリョクが運営。少人数の家族葬に特化した温かみのある空間が特徴。横浜市営地下鉄ブルーライン8番出口から徒歩1分と抜群のアクセスを誇ります。',
  '神奈川県横浜市港北区新横浜2-15-19',
  'kanagawa', 'yokohama',
  35.5075, 139.6178,
  '横浜市営地下鉄ブルーライン 新横浜駅',
  1,
  30, 2, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 128000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 298000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}]',
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '少人数専用'],
  '株式会社ニチリョク',
  4.3, 56
),

-- 1-6. ラステル久保山（民営斎場）
(
  'ラステル久保山',
  'lastel-kuboyama',
  'private_hall',
  '久保山斎場（火葬場）至近に位置する民営葬儀会館。株式会社ニチリョクが運営し、火葬場への移動がスムーズ。家族葬から一般葬まで対応可能な式場を備え、アットホームな雰囲気の中でお別れの時間を過ごせます。',
  '神奈川県横浜市西区境之谷4-2',
  'kanagawa', 'yokohama',
  35.4410, 139.6080,
  '横浜市営バス 境の谷停留所',
  1,
  50, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['火葬場至近', '家族葬対応', '宿泊可能', 'バリアフリー'],
  '株式会社ニチリョク',
  4.2, 43
),

-- 1-7. 家族葬のファミーユ久保山ホール（民営斎場）
(
  '家族葬のファミーユ久保山ホール',
  'familles-kuboyama-hall',
  'private_hall',
  '久保山斎場近くに位置する家族葬専用ホール。家族葬のファミーユが運営し、貸切対応で他のご家族と重なることがありません。少人数での温かいお別れに最適な空間を提供。全宗派対応で、仏式・神式・キリスト教式・無宗教式いずれも可能です。',
  '神奈川県横浜市南区中村町1-16',
  'kanagawa', 'yokohama',
  35.4370, 139.6230,
  '京急本線 黄金町駅',
  10,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}]',
  ARRAY['貸切対応', '家族葬専用', '全宗派対応', '火葬場至近'],
  '家族葬のファミーユ',
  4.4, 38
),

-- 1-8. サン・ライフ横浜斎場（民営斎場）
(
  'サン・ライフ横浜斎場',
  'sunlife-yokohama-saijo',
  'private_hall',
  '横浜市中区に位置するサン・ライフ運営の葬儀会館。JR根岸線関内駅から徒歩8分のアクセス良好な立地。50名収容の式場と家族葬専用の小ホールを備え、幅広い規模の葬儀に対応。年間施行実績8,500件超の実績を持つサン・ライフの安心感が魅力です。',
  '神奈川県横浜市中区蓬莱町2-4-1',
  'kanagawa', 'yokohama',
  35.4430, 139.6360,
  'JR根岸線 関内駅',
  8,
  50, 2, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '実績豊富'],
  '株式会社サン・ライフ',
  4.1, 52
),

-- 1-9. セレモニーホール横浜港北（民営斎場）
(
  'セレモニーホール横浜港北',
  'ceremony-hall-yokohama-kohoku',
  'private_hall',
  '横浜市港北区にある家族葬から一般葬まで対応の葬儀会館。東急東横線日吉駅からバス10分の立地。80名収容の大ホールと30名収容の家族葬ホールを備え、二つのニーズに柔軟に対応。24時間対応の安置室完備で急なご依頼にも対応可能です。',
  '神奈川県横浜市港北区日吉本町4-8-12',
  'kanagawa', 'yokohama',
  35.5510, 139.6460,
  '東急東横線 日吉駅（バス10分）',
  15,
  80, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 278000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['24時間対応', '家族葬対応', '宿泊可能', '大型駐車場'],
  'セレモニーホール横浜',
  4.0, 34
),

-- 1-10. メモリアルホール横浜鶴見（民営斎場）
(
  'メモリアルホール横浜鶴見',
  'memorial-hall-yokohama-tsurumi',
  'private_hall',
  '横浜市鶴見区に位置する民営葬儀会館。JR鶴見駅から徒歩7分の好立地。40名収容の式場を備え、少人数の家族葬に最適。安置室・バリアフリー設備を完備し、高齢者の方にも安心してご利用いただけます。鶴見区・神奈川区からのアクセスに便利です。',
  '神奈川県横浜市鶴見区鶴見中央3-5-8',
  'kanagawa', 'yokohama',
  35.5080, 139.6820,
  'JR京浜東北線 鶴見駅',
  7,
  40, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '家族葬対応', 'バリアフリー', '少人数専用'],
  'メモリアルホール横浜',
  4.1, 29
),

-- 1-11. 妙蓮寺斎場（寺院式場）
(
  '妙蓮寺斎場',
  'myorenji-saijo-yokohama',
  'temple_hall',
  '横浜市港北区の日蓮宗妙蓮寺境内にある寺院式場。東急東横線妙蓮寺駅から徒歩3分と抜群のアクセス。本堂と別棟の式場を備え、仏式の葬儀に最適な厳かな雰囲気。境内の緑に囲まれた静かな環境で、心安らぐお別れの時間をお過ごしいただけます。',
  '神奈川県横浜市港北区菊名2-1-5',
  'kanagawa', 'yokohama',
  35.5020, 139.6340,
  '東急東横線 妙蓮寺駅',
  3,
  60, 1, false, 15,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true}',
  '[{"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['駅近', '寺院式場', '家族葬対応', '伝統的雰囲気'],
  '日蓮宗妙蓮寺',
  4.2, 22
),

-- 1-12. 総持寺大本山式場（寺院式場）
(
  '總持寺大本山式場',
  'sojiji-daihonzan-shikijo',
  'temple_hall',
  '曹洞宗大本山總持寺の境内にある格式高い寺院式場。JR鶴見駅から徒歩7分。広大な境内と荘厳な本堂を有し、大規模な社葬から家族葬まで幅広く対応。横浜市内有数の歴史ある寺院で、格式のあるお別れの場を提供します。',
  '神奈川県横浜市鶴見区鶴見2-1-1',
  'kanagawa', 'yokohama',
  35.5100, 139.6750,
  'JR京浜東北線 鶴見駅',
  7,
  200, 2, false, 50,
  '{"安置室": true, "控室": true, "駐車場": true, "バリアフリー": true, "本堂利用可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大本山', '格式高い', '大規模葬対応', '社葬対応', '家族葬対応'],
  '曹洞宗大本山總持寺',
  4.5, 18
),

-- 1-13. セレモピアン横浜青葉（民営斎場）
(
  'セレモピアン横浜青葉',
  'ceremopian-yokohama-aoba',
  'private_hall',
  '横浜市青葉区に位置する家族葬専用の民営ホール。東急田園都市線たまプラーザ駅からバス8分。20名までの少人数葬に特化した温かみのある空間。自宅のようなリビング感覚の式場で、故人との最後の時間をゆっくり過ごせます。',
  '神奈川県横浜市青葉区美しが丘西2-8-3',
  'kanagawa', 'yokohama',
  35.5720, 139.5580,
  '東急田園都市線 たまプラーザ駅（バス8分）',
  15,
  20, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬専用', '少人数専用', 'アットホーム', 'バリアフリー'],
  'セレモピアン',
  4.3, 25
),

-- 1-14. 横浜祭典セレモニーホール（民営斎場）
(
  '横浜祭典セレモニーホール',
  'yokohama-saiten-ceremony-hall',
  'private_hall',
  '横浜市中区に位置する横浜祭典株式会社運営の葬儀会館。横浜市営斎場との連携がスムーズで、久保山斎場・戸塚斎場・南部斎場・北部斎場すべてへの搬送に対応。経験豊富なスタッフが丁寧にサポートし、ご遺族の負担を軽減します。',
  '神奈川県横浜市中区日ノ出町1-36',
  'kanagawa', 'yokohama',
  35.4440, 139.6300,
  '京急本線 日ノ出町駅',
  3,
  60, 2, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['駅近', '市営斎場連携', '家族葬対応', '24時間対応'],
  '横浜祭典株式会社',
  4.0, 45
),

-- 1-15. 金沢文庫メモリアルホール（民営斎場）
(
  '金沢文庫メモリアルホール',
  'kanazawabunko-memorial-hall',
  'private_hall',
  '横浜市金沢区に位置する民営葬儀会館。京急本線金沢文庫駅から徒歩6分の好立地。南部斎場（火葬場）への搬送もスムーズ。50名収容のメインホールと20名収容の家族葬ホールを備え、ご希望に応じた規模の葬儀に対応します。',
  '神奈川県横浜市金沢区釜利谷東2-10-8',
  'kanagawa', 'yokohama',
  35.3470, 139.6150,
  '京急本線 金沢文庫駅',
  6,
  50, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "宿泊施設": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '宿泊可能', '火葬場連携'],
  '金沢文庫メモリアル',
  4.1, 31
);

-- =============================================
-- 2. 川崎市（kawasaki）: 8件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2-1. かわさき北部斎苑（公営火葬場）
(
  'かわさき北部斎苑',
  'kawasaki-hokubu-saien',
  'public_crematorium',
  '川崎市高津区に位置する川崎市営の火葬場。JR南武線津田山駅北口から徒歩5分と公営火葬場としては抜群のアクセス。式場3室（200人用1室・100人用1室・50人用1室）、霊安室（遺体保管庫12庫）を備え、通夜から火葬まで一貫して執り行えます。',
  '神奈川県川崎市高津区下作延6-18-1',
  'kanagawa', 'kawasaki',
  35.5960, 139.6140,
  'JR南武線 津田山駅',
  5,
  200, 3, true, 50,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '駅近', '公営斎場', '川崎市民割引', '大規模葬対応'],
  '川崎市',
  4.1, 58
),

-- 2-2. かわさき南部斎苑（公営火葬場）
(
  'かわさき南部斎苑',
  'kawasaki-nanbu-saien',
  'public_crematorium',
  '川崎市川崎区に位置する川崎市営の大規模火葬場。火葬炉12基、式場4室（200人用1室・100人用1室・50人用2室）、霊安室（遺体保管庫12庫）を備えた川崎市最大の公営斎場。JR川崎駅東口からバスでアクセス。京浜工業地帯に近い立地です。',
  '神奈川県川崎市川崎区夜光3-2-7',
  'kanagawa', 'kawasaki',
  35.5220, 139.7430,
  'JR京浜東北線 川崎駅（バス15分）',
  25,
  200, 4, true, 60,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true, "マイクロバス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['火葬場併設', '公営斎場', '川崎市民割引', '大規模葬対応', '大型駐車場'],
  '川崎市',
  3.9, 48
),

-- 2-3. セレモニーホール川崎（民営斎場）
(
  'セレモニーホール川崎',
  'ceremony-hall-kawasaki',
  'private_hall',
  'JR川崎駅西口から徒歩5分の好立地にある民営葬儀会館。60名収容の大ホールと25名収容の家族葬ホールを備え、駅近ならではの利便性が魅力。川崎区・幸区エリアの方に多く利用されています。24時間体制のご相談受付で急なご依頼にも対応。',
  '神奈川県川崎市幸区大宮町15-3',
  'kanagawa', 'kawasaki',
  35.5330, 139.6920,
  'JR京浜東北線 川崎駅',
  5,
  60, 2, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '24時間対応', '家族葬対応', 'バリアフリー'],
  'セレモニーホール川崎',
  4.0, 37
),

-- 2-4. 家族葬のファミーユ溝の口（民営斎場）
(
  '家族葬のファミーユ溝の口',
  'familles-mizonokuchi',
  'private_hall',
  '川崎市高津区にある家族葬専用ホール。東急田園都市線溝の口駅から徒歩8分。貸切対応で他のご家族と重なることなく、プライベートな空間でお別れの時間を過ごせます。かわさき北部斎苑への搬送もスムーズです。',
  '神奈川県川崎市高津区溝口3-12-6',
  'kanagawa', 'kawasaki',
  35.5980, 139.6100,
  '東急田園都市線 溝の口駅',
  8,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '貸切対応', '駅近', '火葬場連携'],
  '家族葬のファミーユ',
  4.3, 28
),

-- 2-5. サン・ライフ川崎中原斎場（民営斎場）
(
  'サン・ライフ川崎中原斎場',
  'sunlife-kawasaki-nakahara',
  'private_hall',
  '川崎市中原区に位置するサン・ライフ運営の葬儀会館。JR南武線武蔵新城駅から徒歩6分。70名収容の式場で家族葬から一般葬まで対応。充実した施設とベテランスタッフによる丁寧なサービスが評判です。',
  '神奈川県川崎市中原区新城3-8-5',
  'kanagawa', 'kawasaki',
  35.5810, 139.6350,
  'JR南武線 武蔵新城駅',
  6,
  70, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '宿泊可能', '家族葬対応', '実績豊富'],
  '株式会社サン・ライフ',
  4.2, 42
),

-- 2-6. 浄念寺セレモニーホール（寺院式場）
(
  '浄念寺セレモニーホール',
  'jonenji-ceremony-kawasaki',
  'temple_hall',
  '川崎市多摩区にある浄土真宗本願寺派浄念寺の寺院式場。小田急線向ヶ丘遊園駅から徒歩5分。本堂を活用した伝統的な葬儀と、別棟の近代的な式場での葬儀の両方に対応。静かな住宅街にあり、落ち着いた雰囲気の中でお別れできます。',
  '神奈川県川崎市多摩区登戸2420',
  'kanagawa', 'kawasaki',
  35.6180, 139.5620,
  '小田急線 向ヶ丘遊園駅',
  5,
  50, 1, false, 12,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true}',
  '[{"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['駅近', '寺院式場', '家族葬対応', '伝統的雰囲気'],
  '浄土真宗本願寺派浄念寺',
  4.1, 19
),

-- 2-7. 川崎生田メモリアルホール（民営斎場）
(
  '川崎生田メモリアルホール',
  'kawasaki-ikuta-memorial',
  'private_hall',
  '川崎市多摩区に位置する民営葬儀会館。小田急線生田駅から徒歩10分。30名収容の家族葬専用ホールで、アットホームな雰囲気のお別れが可能。生田・読売ランド前エリアの方に多く利用されています。',
  '神奈川県川崎市多摩区生田7-16-2',
  'kanagawa', 'kawasaki',
  35.6110, 139.5420,
  '小田急線 生田駅',
  10,
  30, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬対応', '少人数専用', 'アットホーム'],
  '川崎生田メモリアル',
  4.0, 21
),

-- 2-8. 平間寺大師式場（寺院式場）
(
  '平間寺大師式場',
  'heigenji-daishi-shikijo',
  'temple_hall',
  '川崎大師として知られる平間寺の境内式場。京急大師線川崎大師駅から徒歩8分。由緒ある真言宗智山派の大本山で、格式高い葬儀を執り行えます。広大な境内と歴史的建造物に囲まれた荘厳な空間が特徴です。',
  '神奈川県川崎市川崎区大師町4-48',
  'kanagawa', 'kawasaki',
  35.5340, 139.7310,
  '京急大師線 川崎大師駅',
  8,
  100, 1, false, 30,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 398000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 598000}]',
  ARRAY['大本山', '格式高い', '歴史的建造物', '駅近'],
  '真言宗智山派平間寺',
  4.4, 15
);

-- =============================================
-- 3. 相模原市（sagamihara）: 5件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3-1. 相模原市営斎場（公営火葬場）
(
  '相模原市営斎場',
  'sagamihara-shiei-saijo',
  'public_crematorium',
  '相模原市南区に位置する市営の火葬場兼式場。JR古淵駅から徒歩12分のアクセス。最大100名の大式場と70名の小式場の2室を備え、火葬まで同一施設で執り行えます。更衣コーナー・授乳コーナー・キッズコーナーなど配慮の行き届いた設備が特徴です。',
  '神奈川県相模原市南区古淵5-26-1',
  'kanagawa', 'sagamihara',
  35.5470, 139.4180,
  'JR横浜線 古淵駅',
  12,
  100, 2, true, 60,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "キッズコーナー": true, "授乳室": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '市民割引', 'キッズコーナーあり', 'バリアフリー'],
  '相模原市',
  4.0, 52
),

-- 3-2. サン・ライフ相模原斎場（民営斎場）
(
  'サン・ライフ相模原斎場',
  'sunlife-sagamihara-saijo',
  'private_hall',
  '相模原市中央区に位置するサン・ライフ運営の葬儀会館。JR相模原駅から徒歩8分の好立地。80名収容の大ホールと30名の家族葬ホールを備え、あらゆる規模の葬儀に対応。サン・ライフの豊富な経験と安心のサポート体制が魅力です。',
  '神奈川県相模原市中央区相模原3-1-10',
  'kanagawa', 'sagamihara',
  35.5720, 139.3970,
  'JR横浜線 相模原駅',
  8,
  80, 2, false, 20,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "宿泊施設": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '宿泊可能', '家族葬対応', '実績豊富', '大型駐車場'],
  '株式会社サン・ライフ',
  4.1, 36
),

-- 3-3. 家族葬のファミーユ相模大野（民営斎場）
(
  '家族葬のファミーユ相模大野',
  'familles-sagami-ono',
  'private_hall',
  '相模原市南区にある家族葬専用ホール。小田急線相模大野駅から徒歩10分。貸切対応の温かみのある空間で、少人数のお別れに最適。相模原市営斎場（火葬場）への搬送もスムーズです。全宗派対応。',
  '神奈川県相模原市南区相模大野8-5-12',
  'kanagawa', 'sagamihara',
  35.5310, 139.4350,
  '小田急線 相模大野駅',
  10,
  25, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '貸切対応', '全宗派対応', '火葬場連携'],
  '家族葬のファミーユ',
  4.2, 24
),

-- 3-4. 橋本メモリアルホール（民営斎場）
(
  '橋本メモリアルホール',
  'hashimoto-memorial-hall',
  'private_hall',
  '相模原市緑区に位置する民営葬儀会館。JR横浜線・京王相模原線橋本駅から徒歩12分。60名収容の式場で家族葬から一般葬まで対応。相模原市北部・緑区エリアの方に多く利用されています。リニア中央新幹線の新駅開業を控えた橋本エリアの斎場です。',
  '神奈川県相模原市緑区橋本6-20-3',
  'kanagawa', 'sagamihara',
  35.5950, 139.3450,
  'JR横浜線・京王相模原線 橋本駅',
  12,
  60, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 518000}]',
  ARRAY['家族葬対応', '駐車場充実', 'バリアフリー'],
  '橋本メモリアル',
  3.9, 27
),

-- 3-5. 長徳寺式場（寺院式場）
(
  '長徳寺式場',
  'chotokuji-shikijo-sagamihara',
  'temple_hall',
  '相模原市中央区にある曹洞宗長徳寺の寺院式場。相模原の歴史ある寺院で、伝統的な仏式葬儀に最適。本堂と客殿を活用した式場は50名収容可能。境内の緑に囲まれた落ち着いた環境で、心安らぐお別れの場を提供します。',
  '神奈川県相模原市中央区田名4855',
  'kanagawa', 'sagamihara',
  35.5680, 139.3700,
  'JR相模線 番田駅',
  15,
  50, 1, false, 20,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true}',
  '[{"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 498000}]',
  ARRAY['寺院式場', '家族葬対応', '伝統的雰囲気', '駐車場充実'],
  '曹洞宗長徳寺',
  4.0, 14
);

-- =============================================
-- 4. 横須賀市（yokosuka）: 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4-1. 横須賀市立中央斎場（公営火葬場）
(
  '横須賀市立中央斎場',
  'yokosuka-chuo-saijo',
  'public_crematorium',
  '横須賀市坂本町に位置する市営の火葬場。火葬炉8基を備え、横須賀市民の方は割安で利用可能。京急本線汐入駅からバスで坂本停留所下車徒歩3分。横須賀市内で唯一の公営火葬場として、地域の方々に広く利用されています。',
  '神奈川県横須賀市坂本町6-18',
  'kanagawa', 'yokosuka',
  35.2740, 139.6620,
  '京急本線 汐入駅（バス+徒歩8分）',
  15,
  40, 1, true, 30,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '横須賀市',
  3.7, 25
),

-- 4-2. サン・ライフ横須賀中央斎場（民営斎場）
(
  'サン・ライフ横須賀中央斎場',
  'sunlife-yokosuka-chuo',
  'private_hall',
  '横須賀市に位置するサン・ライフ運営の葬儀会館。京急本線横須賀中央駅から徒歩10分。60名収容の大ホールと25名の家族葬ホールを備え、横須賀エリアの葬儀ニーズに幅広く対応。市立中央斎場（火葬場）への搬送も迅速です。',
  '神奈川県横須賀市若松町2-5-8',
  'kanagawa', 'yokosuka',
  35.2790, 139.6700,
  '京急本線 横須賀中央駅',
  10,
  60, 2, false, 15,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '火葬場連携', '実績豊富'],
  '株式会社サン・ライフ',
  4.0, 33
),

-- 4-3. 横須賀セレモニーホール（民営斎場）
(
  '横須賀セレモニーホール',
  'yokosuka-ceremony-hall',
  'private_hall',
  '横須賀市久里浜に位置する民営葬儀会館。JR久里浜駅から徒歩8分。40名収容の式場で家族葬に最適。三浦半島エリアの方に多く利用されており、横須賀市立中央斎場への搬送にも対応しています。',
  '神奈川県横須賀市久里浜4-12-6',
  'kanagawa', 'yokosuka',
  35.2300, 139.7090,
  'JR横須賀線 久里浜駅',
  8,
  40, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 338000}]',
  ARRAY['駅近', '家族葬対応', '三浦半島エリア'],
  '横須賀セレモニー',
  4.1, 22
),

-- 4-4. 浄楽寺式場（寺院式場）
(
  '浄楽寺式場',
  'jorakuji-shikijo-yokosuka',
  'temple_hall',
  '横須賀市芦名に位置する浄土宗浄楽寺の寺院式場。鎌倉時代の運慶作の仏像（国重要文化財）を有する歴史ある名刹。50名収容の式場と本堂での葬儀が可能。三浦半島の自然に囲まれた静かな環境でお別れできます。',
  '神奈川県横須賀市芦名2-30-5',
  'kanagawa', 'yokosuka',
  35.2340, 139.6180,
  '京急本線 逗子・葉山駅（バス15分）',
  20,
  50, 1, false, 15,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true}',
  '[{"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['寺院式場', '歴史的名刹', '国重要文化財', '自然豊か'],
  '浄土宗浄楽寺',
  4.3, 12
);

-- =============================================
-- 5. 藤沢市（fujisawa）: 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5-1. 藤沢市斎場（公営火葬場）
(
  '藤沢市斎場',
  'fujisawa-shi-saijo',
  'public_crematorium',
  '藤沢市大庭に位置する市営の火葬場兼式場。火葬炉を備え、式場2室で通夜・告別式から火葬まで一貫して執り行えます。JR藤沢駅北口からバスで「緑ヶ丘」下車徒歩1分。藤沢市民の方は割安料金で利用可能です。',
  '神奈川県藤沢市大庭3761',
  'kanagawa', 'fujisawa',
  35.3540, 139.4580,
  'JR東海道線 藤沢駅（バス15分）',
  20,
  80, 2, true, 50,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '市民割引', 'バリアフリー'],
  '藤沢市',
  3.9, 38
),

-- 5-2. サン・ライフ藤沢斎場（民営斎場）
(
  'サン・ライフ藤沢斎場',
  'sunlife-fujisawa-saijo',
  'private_hall',
  '藤沢市に位置するサン・ライフ運営の葬儀会館。JR藤沢駅から徒歩7分の好立地。60名収容の大ホールと20名の家族葬ホールを備え、湘南エリアの葬儀ニーズに幅広く対応。藤沢市斎場（火葬場）への搬送もスムーズです。',
  '神奈川県藤沢市藤沢530-5',
  'kanagawa', 'fujisawa',
  35.3380, 139.4870,
  'JR東海道線 藤沢駅',
  7,
  60, 2, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 548000}]',
  ARRAY['駅近', '湘南エリア', '家族葬対応', '実績豊富'],
  '株式会社サン・ライフ',
  4.1, 35
),

-- 5-3. 家族葬のファミーユ辻堂（民営斎場）
(
  '家族葬のファミーユ辻堂',
  'familles-tsujido',
  'private_hall',
  '藤沢市辻堂にある家族葬専用ホール。JR東海道線辻堂駅から徒歩12分。少人数のお別れに特化した貸切対応の温かみのある空間。湘南の明るい雰囲気を感じられる内装が特徴です。',
  '神奈川県藤沢市辻堂新町1-6-8',
  'kanagawa', 'fujisawa',
  35.3360, 139.4530,
  'JR東海道線 辻堂駅',
  12,
  25, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '貸切対応', '湘南エリア'],
  '家族葬のファミーユ',
  4.2, 20
),

-- 5-4. 遊行寺式場（寺院式場）
(
  '遊行寺式場',
  'yugyoji-shikijo-fujisawa',
  'temple_hall',
  '時宗総本山遊行寺（清浄光寺）の境内にある格式高い寺院式場。JR藤沢駅から徒歩15分。700年以上の歴史を持つ名刹で、本堂は国登録有形文化財。広大な境内の緑に囲まれた荘厳な空間で、心安らぐお別れの時間を過ごせます。',
  '神奈川県藤沢市西富1-8-1',
  'kanagawa', 'fujisawa',
  35.3430, 139.4760,
  'JR東海道線 藤沢駅',
  15,
  80, 1, false, 30,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 378000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 578000}]',
  ARRAY['総本山', '格式高い', '国登録有形文化財', '歴史的名刹', '大規模葬対応'],
  '時宗総本山遊行寺',
  4.5, 16
);

-- =============================================
-- 6. 平塚市（hiratsuka）: 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6-1. 平塚市聖苑（公営火葬場）
(
  '平塚市聖苑',
  'hiratsuka-shi-seien',
  'public_crematorium',
  '平塚市田村に位置する市営の火葬場。平塚市民の方は割安で利用可能。JR平塚駅北口からバスで「農協神田支所前」下車徒歩1分。田園地帯の静かな環境にあり、落ち着いた雰囲気の中で最後のお別れができます。',
  '神奈川県平塚市田村9-12-8',
  'kanagawa', 'hiratsuka',
  35.3670, 139.3480,
  'JR東海道線 平塚駅（バス30分）',
  35,
  30, 1, true, 40,
  '{"休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}]',
  ARRAY['火葬場', '公営斎場', '市民割引'],
  '平塚市',
  3.6, 22
),

-- 6-2. サン・ライフ平塚斎場（民営斎場）
(
  'サン・ライフ平塚斎場',
  'sunlife-hiratsuka-saijo',
  'private_hall',
  '平塚市に位置するサン・ライフ運営の葬儀会館。JR平塚駅北口から徒歩10分。50名収容の式場で家族葬から一般葬まで対応。平塚市聖苑（火葬場）への搬送もスムーズで、地域密着型のきめ細やかなサービスが評判です。',
  '神奈川県平塚市宝町4-15',
  'kanagawa', 'hiratsuka',
  35.3310, 139.3510,
  'JR東海道線 平塚駅',
  10,
  50, 2, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '地域密着', '火葬場連携'],
  '株式会社サン・ライフ',
  4.0, 30
),

-- 6-3. 平塚中央セレモニーホール（民営斎場）
(
  '平塚中央セレモニーホール',
  'hiratsuka-chuo-ceremony-hall',
  'private_hall',
  '平塚市中央に位置する民営葬儀会館。JR平塚駅から徒歩15分。30名収容の家族葬専用ホールで、少人数のお別れに特化。アットホームな雰囲気で、故人との最後の時間をゆっくり過ごせます。',
  '神奈川県平塚市中里23-8',
  'kanagawa', 'hiratsuka',
  35.3380, 139.3610,
  'JR東海道線 平塚駅',
  15,
  30, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 98000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 328000}]',
  ARRAY['家族葬対応', '少人数専用', 'アットホーム'],
  '平塚中央セレモニー',
  4.1, 18
);

-- =============================================
-- 7. 茅ヶ崎市（chigasaki）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7-1. 茅ヶ崎市斎場（公営施設）
(
  '茅ヶ崎市斎場',
  'chigasaki-shi-saijo',
  'public_facility',
  '茅ヶ崎市に位置する市営の斎場施設。式場を備え、通夜・告別式が可能。茅ヶ崎市民の方は割安料金で利用可能。火葬は平塚市聖苑または藤沢市斎場を利用。湘南エリアの落ち着いた環境にあります。',
  '神奈川県茅ヶ崎市南湖7-12-26',
  'kanagawa', 'chigasaki',
  35.3210, 139.3990,
  'JR東海道線 茅ヶ崎駅（バス10分）',
  15,
  60, 1, false, 20,
  '{"式場": true, "安置室": true, "駐車場": true, "バリアフリー": true, "控室": true}',
  '[{"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 478000}]',
  ARRAY['公営斎場', '市民割引', '湘南エリア', 'バリアフリー'],
  '茅ヶ崎市',
  3.8, 20
),

-- 7-2. セレモニーホール茅ヶ崎（民営斎場）
(
  'セレモニーホール茅ヶ崎',
  'ceremony-hall-chigasaki',
  'private_hall',
  '茅ヶ崎市に位置する民営葬儀会館。JR茅ヶ崎駅から徒歩8分の好立地。40名収容の式場で家族葬に最適。湘南の温かい雰囲気を感じられる内装が特徴。24時間対応の安置室完備。',
  '神奈川県茅ヶ崎市新栄町8-5',
  'kanagawa', 'chigasaki',
  35.3300, 139.4040,
  'JR東海道線 茅ヶ崎駅',
  8,
  40, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['駅近', '家族葬対応', '湘南エリア', '24時間対応'],
  'セレモニーホール茅ヶ崎',
  4.0, 24
);

-- =============================================
-- 8. 大和市（yamato）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8-1. 大和斎場（公営施設）
(
  '大和斎場',
  'yamato-saijo',
  'public_facility',
  '大和市に位置する公営の斎場施設。大和市・座間市・綾瀬市・海老名市の4市共同運営で、各市民の方は割安で利用可能。火葬炉と式場を備え、通夜から火葬まで一貫して対応。小田急線・相鉄線大和駅からバスでアクセスできます。',
  '神奈川県大和市深見台3-4-1',
  'kanagawa', 'yamato',
  35.4640, 139.4620,
  '小田急江ノ島線 大和駅（バス10分）',
  15,
  80, 2, true, 40,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 488000}]',
  ARRAY['火葬場併設', '公営斎場', '4市共同運営', '式場あり', 'バリアフリー'],
  '大和市（4市共同運営）',
  3.9, 35
),

-- 8-2. 家族葬のファミーユ大和（民営斎場）
(
  '家族葬のファミーユ大和',
  'familles-yamato',
  'private_hall',
  '大和市に位置する家族葬専用ホール。小田急江ノ島線・相鉄線大和駅から徒歩10分。貸切対応の温かみのある空間で、少人数のお別れに最適。大和斎場（火葬場）への搬送もスムーズです。',
  '神奈川県大和市中央2-5-15',
  'kanagawa', 'yamato',
  35.4610, 139.4580,
  '小田急江ノ島線 大和駅',
  10,
  25, 1, false, 8,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 110000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}]',
  ARRAY['家族葬専用', '貸切対応', '駅近', '火葬場連携'],
  '家族葬のファミーユ',
  4.2, 19
);

-- =============================================
-- 9. 厚木市（atsugi）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9-1. 厚木市斎場（公営火葬場）
(
  '厚木市斎場',
  'atsugi-shi-saijo',
  'public_crematorium',
  '厚木市に位置する市営の火葬場。厚木市・愛川町・清川村の住民の方は割安で利用可能。式場も備え、通夜・告別式から火葬まで対応。小田急線本厚木駅からバスでアクセス。丹沢山系を望む自然豊かな環境にあります。',
  '神奈川県厚木市下古沢548',
  'kanagawa', 'atsugi',
  35.4220, 139.3170,
  '小田急線 本厚木駅（バス20分）',
  30,
  60, 1, true, 40,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 238000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 318000}]',
  ARRAY['火葬場併設', '公営斎場', '市民割引', '自然豊か'],
  '厚木市',
  3.7, 26
),

-- 9-2. セレモニーホール厚木（民営斎場）
(
  'セレモニーホール厚木',
  'ceremony-hall-atsugi',
  'private_hall',
  '厚木市に位置する民営葬儀会館。小田急線本厚木駅から徒歩8分の好立地。50名収容の式場で家族葬から一般葬まで対応。厚木市斎場（火葬場）への搬送もスムーズで、県央エリアの方に多く利用されています。',
  '神奈川県厚木市中町2-6-10',
  'kanagawa', 'atsugi',
  35.4420, 139.3640,
  '小田急線 本厚木駅',
  8,
  50, 2, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 358000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 538000}]',
  ARRAY['駅近', '家族葬対応', '県央エリア', '火葬場連携'],
  'セレモニーホール厚木',
  4.0, 23
);

-- =============================================
-- 10. 鎌倉市（kamakura）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10-1. 鎌倉メモリアルホール（民営斎場）
(
  '鎌倉メモリアルホール',
  'kamakura-memorial-hall',
  'private_hall',
  '鎌倉市に位置する民営葬儀会館。JR鎌倉駅から徒歩12分。古都鎌倉の落ち着いた雰囲気の中にある式場で、40名収容。家族葬から一般葬まで対応。藤沢市斎場や横浜市南部斎場への搬送にも対応しています。',
  '神奈川県鎌倉市御成町11-8',
  'kanagawa', 'kamakura',
  35.3190, 139.5480,
  'JR横須賀線 鎌倉駅',
  12,
  40, 1, false, 10,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 118000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 268000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 368000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 558000}]',
  ARRAY['古都鎌倉', '家族葬対応', '落ち着いた雰囲気'],
  '鎌倉メモリアル',
  4.2, 20
),

-- 10-2. 建長寺式場（寺院式場）
(
  '建長寺式場',
  'kenchoji-shikijo-kamakura',
  'temple_hall',
  '鎌倉五山第一位の臨済宗建長寺派大本山建長寺の式場。国宝の梵鐘をはじめ多くの文化財を有する名刹。広大な境内と格式高い本堂での葬儀が可能。JR北鎌倉駅から徒歩15分。鎌倉を代表する寺院で、荘厳な雰囲気の中お別れできます。',
  '神奈川県鎌倉市山ノ内8',
  'kanagawa', 'kamakura',
  35.3330, 139.5500,
  'JR横須賀線 北鎌倉駅',
  15,
  100, 1, false, 20,
  '{"安置室": true, "控室": true, "駐車場": true, "本堂利用可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 428000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 628000}]',
  ARRAY['大本山', '国宝', '鎌倉五山', '格式高い', '歴史的名刹'],
  '臨済宗建長寺派大本山建長寺',
  4.6, 10
);

-- =============================================
-- 11. 小田原市（odawara）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11-1. 小田原市斎場（公営火葬場）
(
  '小田原市斎場',
  'odawara-shi-saijo',
  'public_crematorium',
  '小田原市久野に位置する市営の火葬場。小田原市民の方は割安で利用可能。小田原駅東口からバスで「ざる菊園前（小田原斎場）」下車徒歩3分。箱根の山々を望む自然豊かな環境にあり、四季折々の美しい景観の中で最後のお別れができます。',
  '神奈川県小田原市久野3664-8',
  'kanagawa', 'odawara',
  35.2710, 139.1410,
  'JR東海道線 小田原駅（バス15分）',
  25,
  40, 1, true, 30,
  '{"式場": true, "霊安室": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 79000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 228000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 308000}]',
  ARRAY['火葬場併設', '公営斎場', '市民割引', '自然豊か', '箱根エリア'],
  '小田原市',
  3.8, 24
),

-- 11-2. セレモニーホール小田原（民営斎場）
(
  'セレモニーホール小田原',
  'ceremony-hall-odawara',
  'private_hall',
  '小田原市に位置する民営葬儀会館。JR小田原駅から徒歩10分。50名収容の式場で家族葬から一般葬まで対応。小田原市斎場（火葬場）への搬送もスムーズ。箱根・湯河原・真鶴エリアからのアクセスにも便利な立地です。',
  '神奈川県小田原市栄町2-8-15',
  'kanagawa', 'odawara',
  35.2530, 139.1570,
  'JR東海道線 小田原駅',
  10,
  50, 2, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true, "エレベーター": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 248000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '箱根エリア', '火葬場連携'],
  'セレモニーホール小田原',
  4.0, 22
);

-- =============================================
-- 12. 海老名市（ebina）: 1件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12-1. セレモニーホール海老名（民営斎場）
(
  'セレモニーホール海老名',
  'ceremony-hall-ebina',
  'private_hall',
  '海老名市に位置する民営葬儀会館。小田急線・相鉄線海老名駅から徒歩10分。40名収容の式場で家族葬に最適。大和斎場（火葬場）への搬送もスムーズ。ショッピングモールが充実する海老名駅周辺の利便性の高い立地です。',
  '神奈川県海老名市中央2-9-12',
  'kanagawa', 'ebina',
  35.4480, 139.3910,
  '小田急線・相鉄線 海老名駅',
  10,
  40, 1, false, 12,
  '{"安置室": true, "バリアフリー": true, "控室": true, "駐車場": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 108000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 258000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 348000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 528000}]',
  ARRAY['駅近', '家族葬対応', '県央エリア', '火葬場連携'],
  'セレモニーホール海老名',
  4.1, 18
);
