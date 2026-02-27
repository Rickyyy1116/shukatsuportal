/** 斎場詳細コンポーネント */

import type { Venue } from "@/lib/data/types";
import Badge from "@/components/ui/Badge";
import VenuePricePlans from "@/components/venue/VenuePricePlans";
import VenueFacilities from "@/components/venue/VenueFacilities";

// 施設種別の日本語ラベル
const VENUE_TYPE_LABELS: Record<string, string> = {
  public_crematorium: "公営火葬場",
  private_crematorium: "民営火葬場",
  private_hall: "民営斎場",
  temple_hall: "寺院式場",
  public_facility: "公共施設",
};

interface VenueDetailProps {
  venue: Venue;
}

export default function VenueDetail({ venue }: VenueDetailProps) {
  const venueTypeLabel = VENUE_TYPE_LABELS[venue.venueType] ?? venue.venueType;

  return (
    <div className="space-y-8">
      {/* === 画像エリア === */}
      <section>
        {venue.images.length > 0 ? (
          <img
            src={venue.images[0]}
            alt={`${venue.name}の画像`}
            className="aspect-video w-full rounded-xl object-cover"
          />
        ) : (
          <div className="flex aspect-video w-full items-center justify-center rounded-xl bg-neutral-200">
            <span className="text-6xl">🏛️</span>
          </div>
        )}
      </section>

      {/* === 施設名 === */}
      <section>
        <h1 className="text-2xl font-bold text-gray-900">{venue.name}</h1>
      </section>

      {/* === 基本情報テーブル（電話番号なし） === */}
      <section>
        <h2 className="mb-4 text-lg font-bold text-gray-900">基本情報</h2>
        <dl className="divide-y divide-gray-100">
          <div className="flex gap-4 py-3">
            <dt className="w-32 shrink-0 font-bold text-gray-700">施設種別</dt>
            <dd className="text-gray-600">
              <Badge variant="primary">{venueTypeLabel}</Badge>
            </dd>
          </div>
          <div className="flex gap-4 py-3">
            <dt className="w-32 shrink-0 font-bold text-gray-700">住所</dt>
            <dd className="text-gray-600">{venue.address}</dd>
          </div>
          {venue.nearestStation && (
            <div className="flex gap-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">最寄駅</dt>
              <dd className="text-gray-600">
                {venue.nearestStation}
                {venue.stationWalkMinutes ? ` 徒歩${venue.stationWalkMinutes}分` : ""}
              </dd>
            </div>
          )}
          {venue.capacityMax && (
            <div className="flex gap-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">最大収容人数</dt>
              <dd className="text-gray-600">{venue.capacityMax}名</dd>
            </div>
          )}
          {venue.hallCount && (
            <div className="flex gap-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">式場数</dt>
              <dd className="text-gray-600">{venue.hallCount}式場</dd>
            </div>
          )}
          <div className="flex gap-4 py-3">
            <dt className="w-32 shrink-0 font-bold text-gray-700">火葬場</dt>
            <dd className="text-gray-600">
              {venue.hasCrematorium ? "併設あり" : "なし（近隣火葬場を利用）"}
            </dd>
          </div>
          {venue.parkingCount !== null && venue.parkingCount > 0 && (
            <div className="flex gap-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">駐車場</dt>
              <dd className="text-gray-600">{venue.parkingCount}台</dd>
            </div>
          )}
          {venue.operatorName && (
            <div className="flex gap-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">運営</dt>
              <dd className="text-gray-600">{venue.operatorName}</dd>
            </div>
          )}
        </dl>
      </section>

      {/* === 紹介文 === */}
      {venue.description && (
        <section>
          <h2 className="mb-4 text-lg font-bold text-gray-900">紹介</h2>
          <p className="leading-relaxed text-gray-600">{venue.description}</p>
        </section>
      )}

      {/* === 料金プラン === */}
      <VenuePricePlans pricePlans={venue.pricePlans} />

      {/* === 設備 === */}
      <VenueFacilities facilities={venue.facilities} />

      {/* === 特徴 === */}
      {venue.features.length > 0 && (
        <section>
          <h2 className="mb-4 text-lg font-bold text-gray-900">特徴</h2>
          <div className="flex flex-wrap gap-2">
            {venue.features.map((feature) => (
              <Badge key={feature} variant="primary">
                {feature}
              </Badge>
            ))}
          </div>
        </section>
      )}
    </div>
  );
}
