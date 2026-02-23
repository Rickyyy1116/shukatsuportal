/** 口コミカードコンポーネント */

import type { Review } from "@/lib/data/types";
import StarRating from "@/components/ui/StarRating";

interface ReviewCardProps {
  /** 口コミデータ */
  review: Review;
}

/**
 * 口コミカードコンポーネント
 * - 星評価・利用サービス・利用時期を上部に表示
 * - 口コミ本文
 * - 投稿者名・投稿日をフッターに表示
 */
export default function ReviewCard({ review }: ReviewCardProps) {
  /** 投稿日を表示用にフォーマット */
  const formattedDate = new Date(review.createdAt).toLocaleDateString("ja-JP", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });

  return (
    <div className="rounded-lg bg-neutral-50 p-4">
      {/* ヘッダー: 星評価・利用サービス・利用時期 */}
      <div className="flex flex-wrap items-center gap-3">
        <StarRating rating={review.rating} size="sm" />
        {review.serviceType && (
          <span className="text-sm text-gray-500">
            利用サービス: {review.serviceType}
          </span>
        )}
        {review.usedAt && (
          <span className="text-sm text-gray-500">
            利用時期: {review.usedAt}
          </span>
        )}
      </div>

      {/* 口コミ本文 */}
      <p className="mt-3 leading-relaxed text-gray-700">{review.content}</p>

      {/* フッター: 投稿者名・投稿日 */}
      <div className="mt-3 flex items-center gap-2 text-sm text-gray-400">
        <span>{review.authorName}</span>
        <span>|</span>
        <time dateTime={review.createdAt}>{formattedDate}</time>
      </div>
    </div>
  );
}
