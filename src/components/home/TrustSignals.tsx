/** 信頼バッジ情報 */
const BADGES = [
  {
    icon: "\uD83D\uDCB0",
    label: "利用料 完全無料",
    description: "ご相談・お見積もりは一切費用がかかりません",
  },
  {
    icon: "\uD83D\uDDFE",
    label: "全国 47都道府県対応",
    description: "北海道から沖縄まで全国の事業者を掲載",
  },
  {
    icon: "\u23F0",
    label: "24時間 受付対応",
    description: "お急ぎのご相談も24時間いつでも受付",
  },
] as const;

/** 信頼性バッジコンポーネント */
export default function TrustSignals() {
  return (
    <section className="bg-primary-50 px-4 py-12 sm:py-16">
      <div className="mx-auto max-w-5xl">
        <div className="grid grid-cols-1 gap-6 sm:grid-cols-3">
          {BADGES.map((badge) => (
            <div
              key={badge.label}
              className="flex flex-col items-center rounded-xl bg-white p-6 text-center shadow-sm"
            >
              {/* アイコン */}
              <span className="text-4xl" role="img" aria-hidden="true">
                {badge.icon}
              </span>

              {/* ラベル */}
              <h3 className="mt-3 text-lg font-bold text-primary-800">
                {badge.label}
              </h3>

              {/* 説明 */}
              <p className="mt-2 text-sm text-gray-600">
                {badge.description}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
