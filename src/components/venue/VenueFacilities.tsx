/** 設備チェックリストコンポーネント */

interface VenueFacilitiesProps {
  facilities: Record<string, boolean>;
}

// 主要な設備項目の表示順序
const FACILITY_ORDER = [
  "安置室",
  "バリアフリー",
  "駐車場",
  "エレベーター",
  "遺族控室",
  "僧侶控室",
  "シャワー室",
  "キッチン",
  "売店",
  "宿泊可",
];

export default function VenueFacilities({ facilities }: VenueFacilitiesProps) {
  const entries = Object.entries(facilities);
  if (entries.length === 0) return null;

  // 定義済み順序に従ってソート、未定義のものは末尾に
  const sorted = entries.sort(([a], [b]) => {
    const idxA = FACILITY_ORDER.indexOf(a);
    const idxB = FACILITY_ORDER.indexOf(b);
    const orderA = idxA >= 0 ? idxA : FACILITY_ORDER.length;
    const orderB = idxB >= 0 ? idxB : FACILITY_ORDER.length;
    return orderA - orderB;
  });

  return (
    <section>
      <h2 className="mb-4 text-lg font-bold text-gray-900">設備・サービス</h2>
      <div className="grid grid-cols-2 gap-2 sm:grid-cols-3">
        {sorted.map(([name, available]) => (
          <div
            key={name}
            className={`flex items-center gap-2 rounded-lg px-3 py-2 text-sm ${
              available
                ? "bg-green-50 text-green-800"
                : "bg-gray-50 text-gray-400 line-through"
            }`}
          >
            <span>{available ? "✓" : "—"}</span>
            <span>{name}</span>
          </div>
        ))}
      </div>
    </section>
  );
}
