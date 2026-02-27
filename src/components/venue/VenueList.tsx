/** 斎場一覧コンポーネント */

import type { Venue } from "@/lib/data/types";
import VenueCard from "@/components/venue/VenueCard";

interface VenueListProps {
  venues: Venue[];
  total: number;
}

export default function VenueList({ venues, total }: VenueListProps) {
  return (
    <section>
      {/* 検索結果件数 */}
      <p className="mb-4 text-sm text-gray-600">
        <span className="font-bold text-primary-700">{total}件</span>の葬儀場・斎場が見つかりました
      </p>

      {venues.length > 0 ? (
        <div className="space-y-4">
          {venues.map((venue) => (
            <VenueCard key={venue.id} venue={venue} />
          ))}
        </div>
      ) : (
        <div className="rounded-xl border border-gray-200 bg-neutral-50 px-6 py-12 text-center">
          <p className="text-lg font-medium text-gray-500">
            条件に一致する葬儀場・斎場が見つかりませんでした
          </p>
          <p className="mt-2 text-sm text-gray-400">
            検索条件を変更してお試しください
          </p>
        </div>
      )}
    </section>
  );
}
