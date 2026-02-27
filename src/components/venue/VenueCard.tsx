/** 斎場カードコンポーネント（一覧表示用） */

import Link from "next/link";
import type { Venue } from "@/lib/data/types";
import StarRating from "@/components/ui/StarRating";
import Badge from "@/components/ui/Badge";

// 施設種別の日本語ラベル
const VENUE_TYPE_LABELS: Record<string, string> = {
  public_crematorium: "公営火葬場",
  private_crematorium: "民営火葬場",
  private_hall: "民営斎場",
  temple_hall: "寺院式場",
  public_facility: "公共施設",
};

interface VenueCardProps {
  venue: Venue;
}

export default function VenueCard({ venue }: VenueCardProps) {
  const venueTypeLabel = VENUE_TYPE_LABELS[venue.venueType] ?? venue.venueType;
  // 特徴は最大3つまで表示
  const displayFeatures = venue.features.slice(0, 3);
  // 最安プランの価格
  const lowestPlan = venue.pricePlans.length > 0
    ? venue.pricePlans.reduce((min, p) => p.priceFrom < min.priceFrom ? p : min, venue.pricePlans[0])
    : null;

  return (
    <div className="flex gap-4 rounded-xl border border-gray-200 bg-white p-4 transition-shadow hover:shadow-md">
      {/* 画像エリア */}
      <div className="shrink-0">
        {venue.images.length > 0 ? (
          <img
            src={venue.images[0]}
            alt={`${venue.name}の画像`}
            className="h-32 w-32 rounded-lg object-cover"
          />
        ) : (
          <div className="flex h-32 w-32 items-center justify-center rounded-lg bg-neutral-200">
            <span className="text-3xl">🏛️</span>
          </div>
        )}
      </div>

      {/* 情報エリア */}
      <div className="flex min-w-0 flex-1 flex-col">
        {/* 施設名 */}
        <h3 className="truncate text-lg font-bold text-gray-900">
          {venue.name}
        </h3>

        {/* 評価・口コミ件数 */}
        <div className="mt-1 flex items-center gap-2">
          <StarRating rating={venue.ratingAvg} size="sm" />
          <span className="text-sm text-gray-600">
            {venue.ratingAvg.toFixed(1)}（{venue.reviewCount}件）
          </span>
        </div>

        {/* 最寄駅・アクセス */}
        {venue.nearestStation && (
          <p className="mt-1 text-sm text-gray-500">
            {venue.nearestStation}
            {venue.stationWalkMinutes ? ` 徒歩${venue.stationWalkMinutes}分` : ""}
          </p>
        )}

        {/* 最安料金プラン */}
        {lowestPlan && (
          <p className="mt-1 text-sm font-medium text-primary-700">
            {lowestPlan.label} {lowestPlan.priceFrom.toLocaleString()}円〜
          </p>
        )}

        {/* バッジ群 */}
        <div className="mt-2 flex flex-wrap gap-1.5">
          <Badge variant="primary">{venueTypeLabel}</Badge>
          {venue.hasCrematorium && (
            <Badge variant="default">火葬場併設</Badge>
          )}
          {displayFeatures.map((feature) => (
            <Badge key={feature} variant="default">
              {feature}
            </Badge>
          ))}
        </div>

        {/* 詳細リンクボタン */}
        <div className="mt-3">
          <Link
            href={`/sougi/detail/${venue.slug}/`}
            className="inline-flex items-center rounded-lg bg-primary-600 px-4 py-2 text-sm font-medium text-white transition-colors hover:bg-primary-700"
          >
            詳細を見る
          </Link>
        </div>
      </div>
    </div>
  );
}
