-- =============================================
-- 斎場データ: 愛知県 約45件
-- 名古屋市18件, 豊田市4件, 岡崎市4件, 一宮市3件,
-- 豊橋市3件, 春日井市2件, 安城市2件, 豊川市2件,
-- 刈谷市2件, 小牧市2件, 半田市2件, 西尾市1件
-- =============================================

-- =============================================
-- 1. 名古屋市（nagoya）: 18件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 1-1. 八事斎場（名古屋市営火葬場）
(
  '名古屋市立八事斎場',
  'nagoya-yagoto-saijo',
  'public_crematorium',
  '名古屋市天白区に位置する市営火葬場で、1915年から100年以上の歴史を持つ名古屋市民に親しまれた施設です。火葬炉46基を備え、名古屋市最大規模の火葬場として年間多数の火葬を執り行っています。地下鉄八事駅から徒歩圏内で公共交通でのアクセスも良好。普通車50台・バス16台の駐車場を完備しています。',
  '愛知県名古屋市天白区天白町大字八事字裏山69',
  'aichi', 'nagoya',
  35.1370, 136.9670,
  '地下鉄名城線・鶴舞線 八事駅',
  15,
  40, 1, true, 66,
  '{"休憩室": true, "駐車場": true, "バス駐車場": true, "バリアフリー": true, "売店": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '名古屋市民割引', '歴史ある施設', '大型駐車場'],
  '名古屋市',
  3.8, 45
),

-- 1-2. 名古屋市立第二斎場（港区）
(
  '名古屋市立第二斎場',
  'nagoya-daini-saijo',
  'public_crematorium',
  '名古屋市港区に2015年オープンした市営火葬場。鉄筋コンクリート2階建て、延べ面積約15,000平方メートルの大規模施設です。火葬炉30基、お別れ室30室、休憩室30室を完備。バリアフリー対応で無料の休憩コーナーも設置。駐車場180台で大人数の参列にも対応可能です。',
  '愛知県名古屋市港区東茶屋三丁目123',
  'aichi', 'nagoya',
  35.0680, 136.8560,
  '名古屋市営バス 南陽大橋西停留所',
  10,
  50, 2, true, 180,
  '{"お別れ室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "売店": true, "無料休憩コーナー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 85000}]',
  ARRAY['火葬場', '公営斎場', '名古屋市民割引', '大規模施設', 'バリアフリー完備', '大型駐車場'],
  '名古屋市',
  4.2, 58
),

-- 1-3. ティア黒川（名古屋市北区）
(
  'ティア黒川',
  'nagoya-tier-kurokawa',
  'private_hall',
  '名古屋市北区に位置する民営葬儀会館。家族葬から一般葬まで対応可能で、少人数でも温かい雰囲気でお別れができます。地下鉄名城線黒川駅から徒歩5分の好立地。1日1組貸切対応で、ゆっくりとしたお別れの時間を過ごせます。清潔感のある館内は親族控室やお清め所も充実しています。',
  '愛知県名古屋市北区田幡2-6-13',
  'aichi', 'nagoya',
  35.1960, 136.9100,
  '地下鉄名城線 黒川駅',
  5,
  80, 2, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅近', '1日1組貸切', '宿泊可能', '名古屋市北区'],
  '株式会社ティア',
  4.3, 86
),

-- 1-4. ティア御器所（名古屋市昭和区）
(
  'ティア御器所',
  'nagoya-tier-gokiso',
  'private_hall',
  '名古屋市昭和区の閑静な住宅街に位置する葬儀会館。地下鉄鶴舞線御器所駅から徒歩8分でアクセス良好。落ち着いた内装の式場は家族葬に最適で、少人数から中規模の葬儀まで柔軟に対応。親族控室は和室・洋室を完備し、ご遺族の負担を軽減する充実したサポート体制が特徴です。',
  '愛知県名古屋市昭和区御器所通3-18',
  'aichi', 'nagoya',
  35.1560, 136.9350,
  '地下鉄鶴舞線 御器所駅',
  8,
  60, 2, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅徒歩圏内', '少人数対応', '名古屋市昭和区'],
  '株式会社ティア',
  4.4, 82
),

-- 1-5. ティア中川（名古屋市中川区）
(
  'ティア中川',
  'nagoya-tier-nakagawa',
  'private_hall',
  '名古屋市中川区に位置する大型葬儀会館。200名収容の大ホールと家族葬向けの小ホールを備え、幅広い規模の葬儀に対応可能。国道1号線沿いでアクセスしやすく、100台収容の大型駐車場を完備。お清め会場も広々としており、多くの参列者をお迎えできる設備が整っています。',
  '愛知県名古屋市中川区尾頭橋3-5-12',
  'aichi', 'nagoya',
  35.1470, 136.8780,
  'JR東海道本線 尾頭橋駅',
  8,
  200, 3, false, 100,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場', '大ホール完備', '名古屋市中川区'],
  '株式会社ティア',
  4.2, 85
),

-- 1-6. ティア相生山（名古屋市天白区）
(
  'ティア相生山',
  'nagoya-tier-aioiyama',
  'private_hall',
  '名古屋市天白区の緑豊かなエリアに位置する葬儀会館。地下鉄桜通線相生山駅から徒歩10分。家族葬に特化した温かみのある空間設計が特徴で、少人数でも寂しさを感じさせない居心地の良い式場です。八事斎場にも近く、火葬場への移動もスムーズに行えます。',
  '愛知県名古屋市天白区弥生が岡208',
  'aichi', 'nagoya',
  35.1280, 136.9640,
  '地下鉄桜通線 相生山駅',
  10,
  60, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '八事斎場近く', '少人数対応', '名古屋市天白区'],
  '株式会社ティア',
  4.5, 91
),

-- 1-7. 平安会館名古屋斎場（名古屋市北区）
(
  '平安会館名古屋斎場',
  'nagoya-heian-nagoya-saijo',
  'private_hall',
  '名古屋市北区に位置する平安会館の旗艦斎場。200名以上収容の大ホールを含む複数の式場を備え、家族葬から社葬まで幅広く対応。創業以来培ってきた信頼と実績で名古屋エリアトップクラスの葬儀実績を誇ります。名古屋駅から車で10分の好立地です。',
  '愛知県名古屋市北区清水5-24-28',
  'aichi', 'nagoya',
  35.1980, 136.9180,
  '名鉄瀬戸線 清水駅',
  7,
  250, 4, false, 80,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true, "売店": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '一般葬対応', '社葬対応', '大ホール完備', '名古屋市北区'],
  '株式会社平安閣',
  4.1, 72
),

-- 1-8. 平安会館千種斎場（名古屋市千種区）
(
  '平安会館千種斎場',
  'nagoya-heian-chikusa',
  'private_hall',
  '名古屋市千種区の文教地区に位置する葬儀会館。今池駅から徒歩圏内でアクセス便利。洗練された内装の式場は落ち着いた雰囲気で、家族葬から一般葬まで対応可能。千種区・東区エリアの方に多く利用されており、きめ細やかなサービスが好評です。',
  '愛知県名古屋市千種区内山3-26-17',
  'aichi', 'nagoya',
  35.1660, 136.9400,
  '地下鉄東山線 今池駅',
  6,
  120, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅近', '名古屋市千種区'],
  '株式会社平安閣',
  4.0, 55
),

-- 1-9. 平安会館中村斎場（名古屋市中村区）
(
  '平安会館中村斎場',
  'nagoya-heian-nakamura',
  'private_hall',
  '名古屋市中村区、名古屋駅西エリアに位置する葬儀会館。名古屋駅から車で5分の好アクセスで、遠方からの参列者にも便利です。150名収容の大ホールと少人数向けの小ホールを完備。近隣エリアからの利用も多く、中村区・中区の拠点斎場として親しまれています。',
  '愛知県名古屋市中村区竹橋町36-22',
  'aichi', 'nagoya',
  35.1750, 136.8770,
  'JR東海道本線 名古屋駅',
  15,
  150, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '名古屋駅近く', '大ホール完備', '名古屋市中村区'],
  '株式会社平安閣',
  4.0, 48
),

-- 1-10. ティア笠寺（名古屋市南区）
(
  'ティア笠寺',
  'nagoya-tier-kasadera',
  'private_hall',
  '名古屋市南区に位置する葬儀会館。JR東海道本線笠寺駅から徒歩8分の好立地で、南区・緑区エリアの方に多く利用されています。家族葬専用のこぢんまりとした温かい式場が特徴で、少人数でのお別れに最適。第二斎場への移動もスムーズです。',
  '愛知県名古屋市南区前浜通7-1-2',
  'aichi', 'nagoya',
  35.0960, 136.9240,
  'JR東海道本線 笠寺駅',
  8,
  50, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近', '少人数対応', '名古屋市南区'],
  '株式会社ティア',
  4.1, 68
),

-- 1-11. 紫雲殿名古屋本店（名古屋市熱田区）
(
  '紫雲殿名古屋本店',
  'nagoya-shiunden-honten',
  'private_hall',
  '名古屋市熱田区に位置する紫雲殿の本店斎場。熱田神宮近くの格式ある立地で、地下鉄名城線神宮西駅から徒歩5分。大ホール（200名）と小ホール（50名）を備え、一般葬から家族葬まで幅広く対応。愛知県内に多数の拠点を持つ信頼の葬儀社が運営しています。',
  '愛知県名古屋市熱田区神宮4-7-38',
  'aichi', 'nagoya',
  35.1280, 136.9060,
  '地下鉄名城線 神宮西駅',
  5,
  200, 3, false, 60,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 260000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅近', '大ホール完備', '名古屋市熱田区'],
  '株式会社紫雲殿',
  4.0, 63
),

-- 1-12. 紫雲殿守山斎場（名古屋市守山区）
(
  '紫雲殿守山斎場',
  'nagoya-shiunden-moriyama',
  'private_hall',
  '名古屋市守山区に位置する葬儀会館。名鉄瀬戸線小幡駅から車で5分。守山区・尾張旭市エリアの方に多く利用されています。100名収容のホールと家族葬向けの小ホールを備え、落ち着いた雰囲気のなかでお別れの時間を過ごせます。充実した駐車場で車での来場にも便利です。',
  '愛知県名古屋市守山区幸心1-611',
  'aichi', 'nagoya',
  35.2050, 136.9520,
  '名鉄瀬戸線 小幡駅',
  15,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '大型駐車場', '名古屋市守山区'],
  '株式会社紫雲殿',
  3.9, 42
),

-- 1-13. 家族葬のタクセル名古屋緑斎場（名古屋市緑区）
(
  '家族葬のタクセル名古屋緑斎場',
  'nagoya-takusel-midori',
  'private_hall',
  '名古屋市緑区に位置する家族葬専門の葬儀会館。少人数のお別れに特化した設計で、温かみのある内装が特徴です。1日1組完全貸切制で、ご遺族だけのプライベートな空間を確保。第二斎場への移動も便利な立地で、火葬式から家族葬まで幅広いプランに対応しています。',
  '愛知県名古屋市緑区鳴海町字上汐田68',
  'aichi', 'nagoya',
  35.0760, 136.9460,
  '名鉄名古屋本線 鳴海駅',
  10,
  40, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 198000}]',
  ARRAY['家族葬専門', '1日1組貸切', '少人数対応', '名古屋市緑区'],
  '株式会社タクセル',
  4.3, 52
),

-- 1-14. 万松寺（名古屋市中区・寺院式場）
(
  '万松寺 白龍館',
  'nagoya-banshoji-hakuryukan',
  'temple_hall',
  '名古屋市中区大須に位置する歴史ある寺院の葬儀式場。織田信長の父・信秀の菩提寺として知られる万松寺が運営。大須観音駅から徒歩5分の好立地で、伝統的な寺院葬を執り行えます。本堂での荘厳な葬儀から家族葬まで対応可能。名古屋市中心部の格式ある寺院式場です。',
  '愛知県名古屋市中区大須3-29-12',
  'aichi', 'nagoya',
  35.1580, 136.9030,
  '地下鉄鶴舞線 大須観音駅',
  5,
  80, 1, false, NULL,
  '{"本堂": true, "控室": true, "バリアフリー": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 400000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 700000}]',
  ARRAY['寺院式場', '歴史ある寺院', '駅近', '名古屋市中区'],
  '万松寺',
  4.0, 28
),

-- 1-15. ティア港（名古屋市港区）
(
  'ティア港',
  'nagoya-tier-minato',
  'private_hall',
  '名古屋市港区に位置する葬儀会館。第二斎場に最も近い民営斎場のひとつで、火葬場への移動がスムーズ。家族葬から一般葬まで対応する複数の式場を備え、港区・南区エリアの方に便利です。ゆったりとした駐車場を完備し、車でのアクセスに優れています。',
  '愛知県名古屋市港区入場2-1015',
  'aichi', 'nagoya',
  35.0850, 136.8650,
  'あおなみ線 荒子川公園駅',
  15,
  100, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '第二斎場近く', '大型駐車場', '名古屋市港区'],
  '株式会社ティア',
  4.1, 56
),

-- 1-16. 平安会館瑞穂斎場（名古屋市瑞穂区）
(
  '平安会館瑞穂斎場',
  'nagoya-heian-mizuho',
  'private_hall',
  '名古屋市瑞穂区に位置する葬儀会館。地下鉄桜通線瑞穂区役所駅から徒歩10分。瑞穂区・南区エリアの方に利用されており、落ち着いた住宅街にありながらアクセスの良い立地です。家族葬に最適な規模の式場を備え、温かみのあるお別れの空間を提供しています。',
  '愛知県名古屋市瑞穂区瑞穂通8-22',
  'aichi', 'nagoya',
  35.1280, 136.9350,
  '地下鉄桜通線 瑞穂区役所駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '駅徒歩圏内', '名古屋市瑞穂区'],
  '株式会社平安閣',
  4.0, 38
),

-- 1-17. ティア栄生（名古屋市西区）
(
  'ティア栄生',
  'nagoya-tier-sakou',
  'private_hall',
  '名古屋市西区の名鉄栄生駅から徒歩3分という好立地の葬儀会館。名古屋駅からも1駅とアクセス抜群で、遠方からの参列者にも便利です。コンパクトながら機能的な設計の式場は家族葬に最適。きめ細やかなスタッフ対応と明瞭な価格体系が支持されています。',
  '愛知県名古屋市西区栄生2-7-3',
  'aichi', 'nagoya',
  35.1810, 136.8830,
  '名鉄名古屋本線 栄生駅',
  3,
  50, 1, false, 15,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近', '名古屋駅1駅', '名古屋市西区'],
  '株式会社ティア',
  4.2, 64
),

-- 1-18. 紫雲殿名古屋東斎場（名古屋市名東区）
(
  '紫雲殿名古屋東斎場',
  'nagoya-shiunden-higashi',
  'private_hall',
  '名古屋市名東区に位置する葬儀会館。藤が丘駅から車で5分の住宅街にあり、名東区・長久手市エリアの方に利用されています。100名収容のホールと少人数向けの式場を完備。閑静な環境のなかでゆっくりとお別れの時間を過ごせます。充実した駐車場で来場にも便利です。',
  '愛知県名古屋市名東区猪高町大字猪子石原2-1201',
  'aichi', 'nagoya',
  35.1830, 136.9900,
  '地下鉄東山線 藤が丘駅',
  15,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '大型駐車場', '名古屋市名東区'],
  '株式会社紫雲殿',
  4.0, 45
);

-- =============================================
-- 2. 豊田市（toyota）: 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 2-1. 古瀬間聖苑（豊田市営火葬場）
(
  '古瀬間聖苑',
  'toyota-kosema-seien',
  'public_crematorium',
  '豊田市が運営する公営の火葬施設。緑に囲まれた広大な敷地内に火葬場と式場を完備し、通夜から告別式・火葬まで一貫して執り行えます。家族葬から社葬まで対応可能で、落ち着いた風情ある庭園に囲まれた環境が特徴。駐車場142台完備で、東海環状自動車道豊田松平ICから約6分のアクセスです。',
  '愛知県豊田市古瀬間町小田820',
  'aichi', 'toyota',
  35.0700, 137.1050,
  '名鉄三河線 豊田市駅（車20分）',
  60,
  120, 2, true, 142,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "安置室": true, "庭園": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 500000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '大型駐車場', '豊田市民割引'],
  '豊田市',
  4.0, 38
),

-- 2-2. 平安会館豊田斎場（豊田市）
(
  '平安会館豊田斎場',
  'toyota-heian-saijo',
  'private_hall',
  '豊田市中心部に位置する平安会館の葬儀会館。名鉄豊田市駅から車で7分のアクセス。大ホールと家族葬向けの小ホールを完備し、幅広い規模の葬儀に対応。トヨタ関連企業の社葬実績も多く、豊田市エリアで信頼の厚い斎場です。広い駐車場を備え、車での来場に便利です。',
  '愛知県豊田市竹生町4-12',
  'aichi', 'toyota',
  35.0830, 137.1450,
  '名鉄三河線 豊田市駅',
  15,
  200, 3, false, 80,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '社葬対応', '大型駐車場', '豊田市中心部'],
  '株式会社平安閣',
  4.1, 42
),

-- 2-3. ティア豊田（豊田市）
(
  'ティア豊田',
  'toyota-tier',
  'private_hall',
  '豊田市に位置するティアの葬儀会館。豊田市駅周辺エリアからのアクセスが良く、家族葬から一般葬まで対応可能な複数の式場を完備。明瞭な価格体系と丁寧なスタッフ対応が評判。古瀬間聖苑への移動もスムーズで、通夜・葬儀から火葬までの動線が良い立地です。',
  '愛知県豊田市御幸本町6-200',
  'aichi', 'toyota',
  35.0890, 137.1530,
  '愛知環状鉄道 新豊田駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '駅徒歩圏内', '明瞭価格'],
  '株式会社ティア',
  4.2, 55
),

-- 2-4. 紫雲殿豊田斎場（豊田市）
(
  '紫雲殿豊田斎場',
  'toyota-shiunden',
  'private_hall',
  '豊田市に位置する紫雲殿の葬儀会館。豊田市南部エリアの方に利用されており、国道沿いでアクセス便利。家族葬に適したコンパクトな式場と一般葬対応の大ホールを備え、幅広いニーズに対応しています。充実した設備と手厚いサポートで安心のお葬式を提供します。',
  '愛知県豊田市花園町中切48',
  'aichi', 'toyota',
  35.0640, 137.1370,
  '名鉄三河線 上挙母駅',
  12,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場'],
  '株式会社紫雲殿',
  3.9, 34
);

-- =============================================
-- 3. 岡崎市（okazaki）: 4件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 3-1. 岡崎市斎場（公営火葬場）
(
  '岡崎市斎場',
  'okazaki-shi-saijo',
  'public_crematorium',
  '岡崎市が運営する公営火葬場。鉄筋コンクリート2階建てで火葬炉14基（うち動物炉1基）、お別れ室8室を完備。岡崎ICから車で10分の立地で、豊かな自然に囲まれた静かな環境です。岡崎市民は割安料金で利用可能。開場時間は午前9時から午後5時30分までです。',
  '愛知県岡崎市才栗町左世保田1-3',
  'aichi', 'okazaki',
  34.9380, 137.1750,
  '名鉄名古屋本線 藤川駅（車20分）',
  60,
  40, 1, true, 80,
  '{"お別れ室": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場', '公営斎場', '岡崎市民割引', '自然豊かな環境'],
  '岡崎市',
  3.7, 25
),

-- 3-2. 平安会館岡崎斎場（岡崎市）
(
  '平安会館岡崎斎場',
  'okazaki-heian-saijo',
  'private_hall',
  '岡崎市中心部に位置する平安会館の葬儀会館。名鉄東岡崎駅から車で10分。大ホール（150名）と家族葬向け小ホールを完備し、岡崎市エリアの拠点斎場として多くの葬儀を執り行っています。岡崎城近くの格式あるロケーションで、歴史ある街にふさわしい荘厳な葬儀が可能です。',
  '愛知県岡崎市康生通南3-30',
  'aichi', 'okazaki',
  34.9540, 137.1630,
  '名鉄名古屋本線 東岡崎駅',
  15,
  150, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場', '岡崎市中心部'],
  '株式会社平安閣',
  4.0, 40
),

-- 3-3. ティア岡崎（岡崎市）
(
  'ティア岡崎',
  'okazaki-tier',
  'private_hall',
  '岡崎市に位置するティアの葬儀会館。家族葬に特化した温かみのある式場設計で、少人数でのお別れに最適。明瞭な料金体系と丁寧なスタッフ対応で安心して葬儀を任せられます。岡崎市斎場への移動もスムーズな立地で、通夜から火葬までの流れを円滑にサポートします。',
  '愛知県岡崎市羽根東町3-5-1',
  'aichi', 'okazaki',
  34.9380, 137.1580,
  'JR東海道本線 岡崎駅',
  12,
  60, 2, false, 25,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '明瞭価格', '少人数対応'],
  '株式会社ティア',
  4.3, 48
),

-- 3-4. 大樹寺会館（岡崎市・寺院式場）
(
  '大樹寺会館',
  'okazaki-daijuji-kaikan',
  'temple_hall',
  '岡崎市大樹寺に位置する寺院式場。徳川家菩提寺・大樹寺のそばにある歴史深い場所で、伝統的な寺院葬を執り行えます。和の趣あふれる本堂での葬儀は格式があり、一般葬から家族葬まで対応可能。岡崎市北部エリアの方に古くから親しまれている葬儀式場です。',
  '愛知県岡崎市鴨田町字山畔8-2',
  'aichi', 'okazaki',
  34.9730, 137.1470,
  '名鉄名古屋本線 東岡崎駅（バス15分）',
  30,
  80, 1, false, 30,
  '{"本堂": true, "控室": true, "駐車場": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 380000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 650000}]',
  ARRAY['寺院式場', '歴史ある環境', '一般葬対応'],
  '大樹寺会館',
  3.8, 22
);

-- =============================================
-- 4. 一宮市（ichinomiya）: 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 4-1. 一宮斎場（一宮市営火葬場）
(
  '一宮斎場',
  'ichinomiya-saijo',
  'public_crematorium',
  '一宮市が運営する公営火葬場。火葬炉13基、待合室6室を備え、一宮市民の方は割安料金で利用可能です。明るく心地よい待合スペースを完備し、霊安室も利用可能。名鉄名古屋本線の新木曽川駅より車で約7分。木曽川沿いの静かな環境に位置しています。',
  '愛知県一宮市奥町字六丁山24',
  'aichi', 'ichinomiya',
  35.3360, 136.7570,
  '名鉄名古屋本線 新木曽川駅（車7分）',
  30,
  40, 1, true, 60,
  '{"待合室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場', '公営斎場', '一宮市民割引'],
  '一宮市',
  3.7, 28
),

-- 4-2. 平安会館一宮斎場（一宮市）
(
  '平安会館一宮斎場',
  'ichinomiya-heian-saijo',
  'private_hall',
  '一宮市中心部に位置する平安会館の葬儀会館。名鉄一宮駅から車で8分でアクセス便利。120名収容の大ホールと家族葬向けの小ホールを完備し、一宮市エリアの拠点斎場として多くの葬儀実績があります。充実した設備と経験豊富なスタッフによる安心のサポートが特徴です。',
  '愛知県一宮市大和町毛受字浜田51',
  'aichi', 'ichinomiya',
  35.3020, 136.8040,
  '名鉄名古屋本線 名鉄一宮駅',
  20,
  120, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場'],
  '株式会社平安閣',
  4.0, 38
),

-- 4-3. ティア一宮（一宮市）
(
  'ティア一宮',
  'ichinomiya-tier',
  'private_hall',
  '一宮市に位置するティアの葬儀会館。家族葬を中心に、少人数から中規模の葬儀に対応。明瞭な料金体系で追加費用の不安なく葬儀を任せられます。一宮斎場への移動もスムーズな立地。温かみのある内装と丁寧なスタッフ対応で、ご遺族に寄り添うお葬式を提供しています。',
  '愛知県一宮市今伊勢町本神戸字立切1-1',
  'aichi', 'ichinomiya',
  35.3180, 136.7870,
  '名鉄名古屋本線 今伊勢駅',
  8,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '駅近', '明瞭価格'],
  '株式会社ティア',
  4.2, 42
);

-- =============================================
-- 5. 豊橋市（toyohashi）: 3件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 5-1. 豊橋市斎場（公営火葬場）
(
  '豊橋市斎場',
  'toyohashi-shi-saijo',
  'public_crematorium',
  '令和3年に供用開始された豊橋市営の火葬場。火葬炉12基、遺体安置室、多目的室を完備した最新鋭施設です。多目的室では簡易な葬儀も可能。駐車場50台完備でJR豊橋駅から車で約20分のアクセス。豊橋市民は割安料金で利用可能。環境に配慮した設備が特徴の新しい斎場です。',
  '愛知県豊橋市飯村町字北池上52',
  'aichi', 'toyohashi',
  34.7470, 137.3780,
  'JR東海道本線 豊橋駅（車20分）',
  60,
  30, 1, true, 50,
  '{"多目的室": true, "安置室": true, "休憩室": true, "駐車場": true, "バリアフリー": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}]',
  ARRAY['火葬場', '公営斎場', '新施設', '豊橋市民割引', '環境配慮'],
  '豊橋市',
  4.1, 32
),

-- 5-2. 東海典礼豊橋斎場（豊橋市）
(
  '東海典礼豊橋斎場',
  'toyohashi-tokaitenrei',
  'private_hall',
  '豊橋市中心部に位置する東海典礼（ティアグループ）の葬儀会館。JR豊橋駅から車で10分のアクセス。家族葬から一般葬まで対応可能な複数の式場を備え、東三河エリアの拠点斎場として多くの実績があります。きめ細やかなサービスと充実した設備で安心のお葬式を提供しています。',
  '愛知県豊橋市西幸町字浜池333-9',
  'aichi', 'toyohashi',
  34.7420, 137.3580,
  'JR東海道本線 豊橋駅（車10分）',
  30,
  120, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 550000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場', 'ティアグループ'],
  '東海典礼株式会社',
  4.0, 45
),

-- 5-3. 家族葬の結家豊橋（豊橋市）
(
  '家族葬の結家豊橋',
  'toyohashi-yuika',
  'private_hall',
  '豊橋市に位置する家族葬専門の葬儀会館。少人数でのお別れに特化したコンパクトな設計で、温かみのある自宅のような雰囲気が特徴です。1日1組完全貸切制でプライベートな空間を確保。火葬式から家族葬まで幅広いプランに対応し、費用面でも安心の明瞭価格を提示しています。',
  '愛知県豊橋市つつじが丘3-32-6',
  'aichi', 'toyohashi',
  34.7360, 137.3900,
  'JR東海道本線 二川駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '少人数対応', '明瞭価格'],
  '株式会社結家',
  4.4, 38
);

-- =============================================
-- 6. 春日井市（kasugai）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 6-1. 平安会館春日井中央斎場（春日井市）
(
  '平安会館春日井中央斎場',
  'kasugai-heian-chuo',
  'private_hall',
  '春日井市鳥居松町に位置する平安会館の葬儀会館。JR春日井駅から車で5分の好立地で、春日井市中心部エリアの方に多く利用されています。大ホールと小ホールを備え、家族葬から一般葬まで幅広く対応。経験豊富なスタッフと充実した設備で安心のお葬式をサポートします。',
  '愛知県春日井市鳥居松町4-3',
  'aichi', 'kasugai',
  35.2510, 136.9700,
  'JR中央本線 春日井駅',
  12,
  150, 2, false, 50,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true, "宿泊可": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '春日井市中心部', '大型駐車場'],
  '株式会社平安閣',
  4.0, 42
),

-- 6-2. 平安会館味美斎場（春日井市）
(
  '平安会館味美斎場',
  'kasugai-heian-ajiyoshi',
  'private_hall',
  '春日井市味美白山町に位置する葬儀会館。名鉄小牧線味美駅から徒歩10分。春日井市南部・名古屋市北区エリアの方にも利用されています。コンパクトな設計ながら必要な設備が整っており、家族葬に最適。尾張東部聖苑への移動もスムーズな立地です。',
  '愛知県春日井市味美白山町1-3-7',
  'aichi', 'kasugai',
  35.2320, 136.9350,
  '名鉄小牧線 味美駅',
  10,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 275000}]',
  ARRAY['家族葬対応', '駅徒歩圏内', '少人数対応'],
  '株式会社平安閣',
  3.9, 28
);

-- =============================================
-- 7. 安城市（anjo）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 7-1. 安城市総合斎苑（公営火葬場・式場併設）
(
  '安城市総合斎苑',
  'anjo-sogo-saien',
  'public_crematorium',
  '安城市が運営する公営の葬儀式場併設火葬場。火葬棟には告別室2室、火葬炉6基、収骨室2室を完備。葬祭棟には洋室場（椅子席150名）と和式場（35畳）があり、通夜から告別式・火葬まで一貫して執り行えます。駐車場約150台完備。名鉄西尾線碧海古井駅から徒歩20分のアクセスです。',
  '愛知県安城市赤松町乙菊22-1',
  'aichi', 'anjo',
  34.9540, 137.0820,
  '名鉄西尾線 碧海古井駅',
  20,
  150, 2, true, 150,
  '{"式場": true, "告別室": true, "収骨室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 450000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '大型駐車場', '安城市民割引'],
  '安城市',
  4.0, 35
),

-- 7-2. 紫雲殿安城斎場（安城市）
(
  '紫雲殿安城斎場',
  'anjo-shiunden',
  'private_hall',
  '安城市に位置する紫雲殿の葬儀会館。JR安城駅から車で7分。安城市・知立市エリアの方に利用されており、家族葬から一般葬まで対応可能な複数の式場を完備。安城市総合斎苑への移動もスムーズで、葬儀全体の流れを円滑にサポートします。充実した駐車場で車での来場にも便利です。',
  '愛知県安城市住吉町4-15-8',
  'aichi', 'anjo',
  34.9660, 137.0800,
  'JR東海道本線 安城駅',
  15,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '大型駐車場'],
  '株式会社紫雲殿',
  3.9, 30
);

-- =============================================
-- 8. 豊川市（toyokawa）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 8-1. 豊川市斎場会館 永遠の森（公営火葬場）
(
  '豊川市斎場会館 永遠の森',
  'toyokawa-towa-no-mori',
  'public_crematorium',
  '豊川市が運営する公営斎場。火葬をはじめ通夜・告別式・初七日まで一連の葬送行為を行える総合施設です。「永遠の森」の名称で親しまれ、緑に囲まれた穏やかな環境が特徴。式場と火葬場が併設されているため移動の負担がなく、豊川市民は割安料金で利用可能です。',
  '愛知県豊川市御津町豊沢引釣80-1',
  'aichi', 'toyokawa',
  34.8260, 137.3180,
  'JR東海道本線 愛知御津駅（車5分）',
  20,
  100, 2, true, 80,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '豊川市民割引', '自然豊かな環境'],
  '豊川市',
  4.0, 30
),

-- 8-2. 家族葬の結家豊川（豊川市）
(
  '家族葬の結家豊川',
  'toyokawa-yuika',
  'private_hall',
  '豊川市に位置する家族葬専門の葬儀会館。1日1組完全貸切制で、プライベートな空間でのお別れを実現。少人数でも温かみのある雰囲気でお見送りができます。名鉄豊川線豊川稲荷駅から車で8分。明瞭な価格体系と丁寧なサポートで、費用面でも安心の家族葬を提供しています。',
  '愛知県豊川市中条町上石畑1-126',
  'aichi', 'toyokawa',
  34.8290, 137.3700,
  '名鉄豊川線 豊川稲荷駅',
  15,
  30, 1, false, 10,
  '{"式場": true, "親族控室": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 280000}, {"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 89000}]',
  ARRAY['家族葬専門', '1日1組貸切', '少人数対応', '明瞭価格'],
  '株式会社結家',
  4.3, 25
);

-- =============================================
-- 9. 刈谷市（kariya）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 9-1. 青山斎園（刈谷市営火葬場・式場併設）
(
  '青山斎園',
  'kariya-aoyama-saien',
  'public_crematorium',
  '刈谷市が運営する公営の総合斎園。火葬炉6基のほか、大小2つの式場、法要室、会食室、待合室、霊安室を完備した総合施設です。通夜から告別式・火葬・法要まで一貫して同一施設内で行えます。JR刈谷駅から車で10分。刈谷市在住の方は市内料金が適用されます。',
  '愛知県刈谷市青山町2-154-1',
  'aichi', 'kariya',
  34.9880, 137.0200,
  'JR東海道本線 刈谷駅（車10分）',
  30,
  100, 2, true, 60,
  '{"式場": true, "法要室": true, "会食室": true, "待合室": true, "駐車場": true, "バリアフリー": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 450000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '法要室完備', '刈谷市民割引'],
  '刈谷市',
  4.0, 33
),

-- 9-2. ティア刈谷（刈谷市）
(
  'ティア刈谷',
  'kariya-tier',
  'private_hall',
  '刈谷市に位置するティアの葬儀会館。JR刈谷駅から車で8分のアクセス。家族葬を中心に少人数から中規模の葬儀に対応。明瞭な料金体系と温かみのある式場設計が特徴で、刈谷市・知立市・高浜市エリアの方に利用されています。青山斎園への移動もスムーズです。',
  '愛知県刈谷市東境町吉野55',
  'aichi', 'kariya',
  35.0020, 137.0020,
  'JR東海道本線 刈谷駅',
  20,
  60, 1, false, 20,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 330000}, {"type": "ichinichiso", "label": "一日葬プラン", "priceFrom": 250000}]',
  ARRAY['家族葬対応', '明瞭価格', '少人数対応'],
  '株式会社ティア',
  4.1, 38
);

-- =============================================
-- 10. 小牧市（komaki）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 10-1. 尾張東部聖苑（公営火葬場・小牧市）
(
  '尾張東部聖苑',
  'komaki-owari-tobu-seien',
  'public_crematorium',
  '春日井市・小牧市・豊山町の2市1町が共同運営する公営火葬場。火葬炉15基と約100名収容の式場を備え、通夜から告別式・火葬まで同一施設内で行えます。JR高蔵寺駅からバスでアクセス可能。普通車104台・マイクロバス5台の大型駐車場を完備しています。',
  '愛知県小牧市大草2003-1',
  'aichi', 'komaki',
  35.2610, 136.9930,
  'JR中央本線 高蔵寺駅（バス+徒歩10分）',
  25,
  100, 1, true, 111,
  '{"式場": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "マイクロバス駐車": true, "大型バス駐車": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 260000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '大型駐車場', '春日井市・小牧市・豊山町共同運営'],
  '尾張東部火葬場管理組合',
  3.9, 35
),

-- 10-2. 紫雲殿小牧斎場（小牧市）
(
  '紫雲殿小牧斎場',
  'komaki-shiunden',
  'private_hall',
  '小牧市に位置する紫雲殿の葬儀会館。名鉄小牧線小牧駅から車で7分。小牧市・岩倉市エリアの方に利用されており、家族葬から一般葬まで対応可能な式場を完備。尾張東部聖苑への移動もスムーズな立地で、落ち着いた雰囲気のなかお別れの時間を過ごせます。',
  '愛知県小牧市小牧原3-142',
  'aichi', 'komaki',
  35.2860, 136.9310,
  '名鉄小牧線 小牧原駅',
  10,
  80, 2, false, 30,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 350000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 600000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅徒歩圏内'],
  '株式会社紫雲殿',
  3.8, 26
);

-- =============================================
-- 11. 半田市（handa）: 2件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 11-1. 半田斎場（知多中部広域事務組合運営）
(
  '半田斎場',
  'handa-saijo',
  'public_crematorium',
  '半田市・阿久比町・武豊町で共同運営される総合斎場。火葬棟には8基の火葬炉と告別室・収骨室・霊安室を完備し、葬儀場と火葬場が併設されているため一連の葬送行為を一か所で行えます。名鉄河和線知多半田駅から車で10分。知多半島中部エリアの公営斎場です。',
  '愛知県半田市鵜ノ池町19',
  'aichi', 'handa',
  34.8930, 136.9340,
  '名鉄河和線 知多半田駅（車10分）',
  30,
  80, 2, true, 60,
  '{"式場": true, "告別室": true, "収骨室": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '知多半島エリア'],
  '知多中部広域事務組合',
  3.8, 28
),

-- 11-2. 平安会館半田斎場（半田市）
(
  '平安会館半田斎場',
  'handa-heian-saijo',
  'private_hall',
  '半田市中心部に位置する平安会館の葬儀会館。名鉄河和線住吉町駅から徒歩10分の好アクセス。家族葬から一般葬まで対応可能で、知多半島エリアの拠点斎場として親しまれています。落ち着いた内装の式場と充実した設備で、ご遺族に寄り添うお葬式を提供します。',
  '愛知県半田市宮路町272',
  'aichi', 'handa',
  34.8810, 136.9370,
  '名鉄河和線 住吉町駅',
  10,
  100, 2, false, 40,
  '{"式場": true, "親族控室": true, "お清め所": true, "駐車場": true, "バリアフリー": true, "安置室": true}',
  '[{"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 385000}, {"type": "ippanso", "label": "一般葬プラン", "priceFrom": 660000}]',
  ARRAY['家族葬対応', '一般葬対応', '駅徒歩圏内', '知多半島エリア'],
  '株式会社平安閣',
  4.0, 32
);

-- =============================================
-- 12. 西尾市（nishio）: 1件
-- =============================================

INSERT INTO venues (name, slug, venue_type, description, address, prefecture_slug, city_slug, latitude, longitude, nearest_station, station_walk_minutes, capacity_max, hall_count, has_crematorium, parking_count, facilities, price_plans, features, operator_name, rating_avg, review_count) VALUES

-- 12-1. 西尾市斎場やすらぎ苑（公営火葬場）
(
  '西尾市斎場やすらぎ苑',
  'nishio-yasuragi-en',
  'public_crematorium',
  '西尾市が運営する公営火葬場。無煙無臭の火葬設備を施し環境に配慮した施設です。美しい日本庭園を設置し、式場も併設されているため通夜から告別式・火葬まで一貫して行えます。JR幸田駅からタクシー10分のアクセス。西尾市民は割安料金で利用可能な市民に親しまれた施設です。',
  '愛知県西尾市吉良町宮迫樫木15',
  'aichi', 'nishio',
  34.8070, 137.0680,
  'JR東海道本線 幸田駅（車10分）',
  30,
  80, 1, true, 50,
  '{"式場": true, "日本庭園": true, "休憩室": true, "駐車場": true, "バリアフリー": true, "霊安室": true}',
  '[{"type": "kasoshiki", "label": "火葬式プラン", "priceFrom": 80000}, {"type": "kazokuso", "label": "家族葬プラン", "priceFrom": 250000}]',
  ARRAY['火葬場併設', '公営斎場', '式場あり', '日本庭園', '西尾市民割引', '環境配慮'],
  '西尾市',
  3.9, 22
);
