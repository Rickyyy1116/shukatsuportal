/** 料金プラン横並びカードコンポーネント */

import type { PricePlan } from "@/lib/data/types";

// プランタイプごとのアイコン
const PLAN_ICONS: Record<string, string> = {
  kasoshiki: "🔥",
  ichinichisou: "☀️",
  kazokusou: "👨‍👩‍👧‍👦",
  ippansou: "🏛️",
};

interface VenuePricePlansProps {
  pricePlans: PricePlan[];
}

export default function VenuePricePlans({ pricePlans }: VenuePricePlansProps) {
  if (pricePlans.length === 0) return null;

  return (
    <section>
      <h2 className="mb-4 text-lg font-bold text-gray-900">料金プラン</h2>
      <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
        {pricePlans.map((plan) => (
          <div
            key={plan.type}
            className="flex flex-col items-center rounded-xl border border-gray-200 bg-white p-4 text-center"
          >
            <span className="text-2xl">{PLAN_ICONS[plan.type] ?? "📋"}</span>
            <p className="mt-2 text-sm font-bold text-gray-900">{plan.label}</p>
            <p className="mt-1 text-lg font-bold text-primary-700">
              {plan.priceFrom.toLocaleString()}
              <span className="text-sm font-normal">円〜</span>
            </p>
          </div>
        ))}
      </div>
    </section>
  );
}
