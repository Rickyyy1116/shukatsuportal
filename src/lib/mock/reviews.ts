import { Review } from "../data/types";

export const mockReviews: Review[] = [
  // 田中葬儀社
  { id: "r-001", providerId: "p-sougi-001", rating: 5, content: "父の葬儀でお世話になりました。突然のことで気が動転していた私たち家族に、スタッフの方が終始丁寧に寄り添ってくださいました。料金も事前の見積もり通りで、追加費用は一切ありませんでした。", serviceType: "家族葬", usedAt: "2025年12月", authorName: "T.K.", createdAt: "2026-01-05" },
  { id: "r-002", providerId: "p-sougi-001", rating: 4, content: "家族葬を依頼しました。小規模ながらも温かい雰囲気で、母を送り出すことができました。スタッフの対応も丁寧で安心してお任せできました。", serviceType: "家族葬", usedAt: "2025年11月", authorName: "S.M.", createdAt: "2025-12-10" },
  { id: "r-003", providerId: "p-sougi-001", rating: 5, content: "24時間対応とのことで、深夜にお電話しましたがすぐに対応いただけました。翌日の段取りもスムーズで、本当に助かりました。", serviceType: "一般葬", usedAt: "2025年10月", authorName: "A.Y.", createdAt: "2025-11-15" },
  // やすらぎ葬祭
  { id: "r-004", providerId: "p-sougi-002", rating: 4, content: "費用を抑えた家族葬を希望していましたが、こちらのプランは非常にリーズナブルでした。それでいてサービスの質は高く、満足しています。", serviceType: "家族葬", usedAt: "2025年12月", authorName: "H.N.", createdAt: "2026-01-08" },
  { id: "r-005", providerId: "p-sougi-002", rating: 4, content: "明朗会計で安心できました。見積もりの段階から細かく説明していただき、追加料金の心配なく葬儀を行えました。", serviceType: "火葬式", usedAt: "2025年11月", authorName: "K.T.", createdAt: "2025-12-20" },
  // 品川メモリアルホール
  { id: "r-006", providerId: "p-sougi-003", rating: 5, content: "設備が非常にきれいで、参列者の方々からも「良い式場ですね」と好評でした。駅からも近く、遠方からの参列者にも便利でした。", serviceType: "一般葬", usedAt: "2025年12月", authorName: "M.S.", createdAt: "2026-01-12" },
  { id: "r-007", providerId: "p-sougi-003", rating: 5, content: "バリアフリー設備が整っていて、車椅子の祖母も問題なく参列できました。送迎サービスも助かりました。", serviceType: "一般葬", usedAt: "2025年11月", authorName: "Y.I.", createdAt: "2025-12-05" },
  // 多摩メモリアルパーク
  { id: "r-008", providerId: "p-ohaka-001", rating: 4, content: "緑豊かで静かな環境が気に入りました。樹木葬の区画を購入しましたが、価格も手頃で良かったです。", serviceType: "樹木葬", usedAt: "2025年10月", authorName: "R.O.", createdAt: "2025-11-20" },
  { id: "r-009", providerId: "p-ohaka-001", rating: 5, content: "永代供養墓を申し込みました。管理がしっかりしていて、安心して任せられます。お盆やお彼岸には合同供養もしていただけます。", serviceType: "永代供養", usedAt: "2025年9月", authorName: "N.K.", createdAt: "2025-10-15" },
  // さくら樹木葬墓園
  { id: "r-010", providerId: "p-ohaka-003", rating: 5, content: "桜の木の下で眠れるというコンセプトに惹かれて購入しました。春にはお花見がてらお参りできるのが嬉しいです。", serviceType: "樹木葬", usedAt: "2025年11月", authorName: "E.T.", createdAt: "2025-12-08" },
  // サニーライフ新宿
  { id: "r-011", providerId: "p-kaigo-001", rating: 4, content: "母が入居しています。看護師さんが24時間いるので安心です。スタッフの皆さんも明るく、母も毎日楽しそうに過ごしています。", serviceType: "介護付き有料老人ホーム", usedAt: "2025年8月", authorName: "J.W.", createdAt: "2025-10-01" },
  { id: "r-012", providerId: "p-kaigo-001", rating: 4, content: "見学時の対応がとても丁寧で好印象でした。施設も清潔で、食事も美味しいと母が言っています。", serviceType: "介護付き有料老人ホーム", usedAt: "2025年9月", authorName: "F.H.", createdAt: "2025-11-10" },
  // 山田税理士事務所
  { id: "r-013", providerId: "p-souzoku-001", rating: 5, content: "父の相続税申告でお世話になりました。複雑な不動産の評価も的確に行っていただき、結果的に想定より税額を抑えることができました。初回相談無料なのもありがたかったです。", serviceType: "相続税申告", usedAt: "2025年12月", authorName: "D.S.", createdAt: "2026-01-15" },
  { id: "r-014", providerId: "p-souzoku-001", rating: 5, content: "生前対策として相続税のシミュレーションをしていただきました。分かりやすい説明で、今後の対策方針が明確になりました。", serviceType: "生前対策", usedAt: "2025年11月", authorName: "L.M.", createdAt: "2025-12-18" },
  // おかたづけ本舗
  { id: "r-015", providerId: "p-ihinseiri-001", rating: 4, content: "一人暮らしだった父のマンションの遺品整理をお願いしました。丁寧に仕分けしていただき、形見の品もきちんと保管してくださいました。", serviceType: "遺品整理", usedAt: "2025年12月", authorName: "P.T.", createdAt: "2026-01-02" },
  // ライフプラン相談室
  { id: "r-016", providerId: "p-hoken-001", rating: 4, content: "終活を始めるにあたり、保険の見直しを相談しました。今の自分に本当に必要な保障を見直すことができ、月々の保険料も下がりました。", serviceType: "保険見直し", usedAt: "2025年11月", authorName: "C.Y.", createdAt: "2025-12-22" },
];
