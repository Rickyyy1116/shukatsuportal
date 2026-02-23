/** 口コミ一覧コンポーネント */

import type { Review } from "@/lib/data/types";
import ReviewSummary from "@/components/review/ReviewSummary";
import ReviewCard from "@/components/review/ReviewCard";

interface ReviewListProps {
  /** 口コミの配列 */
  reviews: Review[];
  /** 口コミサマリー情報 */
  summary: {
    /** 平均評価 */
    avg: number;
    /** 口コミ総件数 */
    count: number;
    /** 星別の件数分布（index 0=1つ星, ..., index 4=5つ星） */
    distribution: number[];
  };
}

/**
 * 口コミ一覧コンポーネント
 * - セクションタイトル「口コミ・評判」
 * - ReviewSummary（平均評価・分布グラフ）
 * - ReviewCardのリスト
 * - 口コミ0件時のメッセージ
 */
export default function ReviewList({ reviews, summary }: ReviewListProps) {
  return (
    <section>
      {/* セクションタイトル */}
      <h2 className="mb-6 text-xl font-bold text-gray-900">口コミ・評判</h2>

      {/* サマリー（平均評価・星分布） */}
      <ReviewSummary
        avg={summary.avg}
        count={summary.count}
        distribution={summary.distribution}
      />

      {/* 口コミリスト */}
      {reviews.length > 0 ? (
        <div className="mt-6 space-y-4">
          {reviews.map((review) => (
            <ReviewCard key={review.id} review={review} />
          ))}
        </div>
      ) : (
        /* 口コミ0件の場合 */
        <div className="mt-6 rounded-lg bg-neutral-50 px-6 py-8 text-center">
          <p className="text-gray-500">まだ口コミがありません</p>
        </div>
      )}
    </section>
  );
}
