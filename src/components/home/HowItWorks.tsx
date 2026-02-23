/** ステップ情報 */
const STEPS = [
  {
    number: 1,
    icon: "\uD83D\uDD0D",
    title: "エリア・カテゴリを選択",
    description:
      "お住まいの地域と、探したいサービスのカテゴリを選択してください。葬儀・お墓・介護・相続など幅広く対応しています。",
  },
  {
    number: 2,
    icon: "\uD83D\uDCCA",
    title: "事業者を比較",
    description:
      "口コミ・料金・特徴を比較して、あなたに合った事業者を見つけましょう。実際の利用者の声を参考にできます。",
  },
  {
    number: 3,
    icon: "\u2709\uFE0F",
    title: "無料で相談・見積もり",
    description:
      "気になる事業者に、無料で相談・見積もり依頼ができます。複数社への一括依頼も可能です。",
  },
] as const;

/** ご利用の流れコンポーネント */
export default function HowItWorks() {
  return (
    <section className="bg-gray-50 px-4 py-12 sm:py-16">
      <div className="mx-auto max-w-5xl">
        <h2 className="mb-10 text-center text-2xl font-bold text-gray-900">
          ご利用の流れ
        </h2>

        <div className="grid grid-cols-1 gap-8 md:grid-cols-3">
          {STEPS.map((step) => (
            <div key={step.number} className="flex flex-col items-center text-center">
              {/* 丸数字 */}
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-primary-600 text-lg font-bold text-white">
                {step.number}
              </div>

              {/* アイコン */}
              <span className="mt-4 text-4xl" role="img" aria-hidden="true">
                {step.icon}
              </span>

              {/* タイトル */}
              <h3 className="mt-3 text-lg font-bold text-gray-900">
                {step.title}
              </h3>

              {/* 説明テキスト */}
              <p className="mt-2 text-sm leading-relaxed text-gray-600">
                {step.description}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
