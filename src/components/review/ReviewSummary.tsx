/** 口コミサマリーコンポーネント（平均評価 + 星分布グラフ） */

import StarRating from "@/components/ui/StarRating";

interface ReviewSummaryProps {
  /** 平均評価 */
  avg: number;
  /** 口コミ総件数 */
  count: number;
  /** 星別の件数分布（index 0=1つ星, ..., index 4=5つ星） */
  distribution: number[];
}

/**
 * 口コミサマリーコンポーネント
 * - 左: 大きな平均評価数値 + StarRating + 口コミ件数
 * - 右: 星分布の横棒グラフ（5段階）
 * - モバイルでは縦並び、デスクトップでは横並び
 */
export default function ReviewSummary({ avg, count, distribution }: ReviewSummaryProps) {
  // 分布の最大値（プログレスバーの割合計算に使用）
  const maxCount = Math.max(...distribution, 1);

  return (
    <div className="flex flex-col gap-6 rounded-xl border border-gray-200 bg-white p-6 md:flex-row md:items-center">
      {/* 左: 平均評価 */}
      <div className="flex flex-col items-center md:w-40 md:shrink-0">
        <span className="text-5xl font-bold text-gray-900">{avg.toFixed(1)}</span>
        <div className="mt-2">
          <StarRating rating={avg} size="lg" />
        </div>
        <span className="mt-1 text-sm text-gray-500">{count}件の口コミ</span>
      </div>

      {/* 右: 星分布バー */}
      <div className="flex-1 space-y-2">
        {/* 5つ星から1つ星の順に表示 */}
        {[5, 4, 3, 2, 1].map((star) => {
          const starCount = distribution[star - 1] ?? 0;
          const percentage = count > 0 ? (starCount / maxCount) * 100 : 0;

          return (
            <div key={star} className="flex items-center gap-2">
              {/* 星ラベル */}
              <span className="w-10 shrink-0 text-right text-sm text-gray-600">
                {star}つ星
              </span>
              {/* プログレスバー */}
              <div className="h-3 flex-1 overflow-hidden rounded-full bg-gray-100">
                <div
                  className="h-full rounded-full bg-accent-warning transition-all"
                  style={{ width: `${percentage}%` }}
                />
              </div>
              {/* 件数 */}
              <span className="w-8 shrink-0 text-right text-sm text-gray-500">
                {starCount}
              </span>
            </div>
          );
        })}
      </div>
    </div>
  );
}
