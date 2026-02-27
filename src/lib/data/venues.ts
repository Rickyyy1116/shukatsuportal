import { createSupabaseServer } from "../supabase/server";
import type { Venue, VenueFilter, PaginatedResult } from "./types";

// DBの行 → TypeScript型に変換
function toVenue(row: Record<string, unknown>): Venue {
  return {
    id: String(row.id),
    name: row.name as string,
    slug: row.slug as string,
    venueType: row.venue_type as Venue["venueType"],
    description: row.description as string,
    address: row.address as string,
    prefectureSlug: row.prefecture_slug as string,
    citySlug: row.city_slug as string,
    latitude: (row.latitude as number) ?? 0,
    longitude: (row.longitude as number) ?? 0,
    nearestStation: row.nearest_station as string,
    stationWalkMinutes: row.station_walk_minutes as number | null,
    capacityMax: row.capacity_max as number | null,
    hallCount: row.hall_count as number | null,
    hasCrematorium: (row.has_crematorium as boolean) ?? false,
    parkingCount: row.parking_count as number | null,
    facilities: (row.facilities as Record<string, boolean>) ?? {},
    pricePlans: (row.price_plans as Venue["pricePlans"]) ?? [],
    features: (row.features as string[]) ?? [],
    images: (row.images as string[]) ?? [],
    operatorName: row.operator_name as string,
    ratingAvg: row.rating_avg as number,
    reviewCount: row.review_count as number,
  };
}

// 斎場一覧取得（フィルター・ソート・ページネーション対応）
export async function getVenues(
  filter: VenueFilter
): Promise<PaginatedResult<Venue>> {
  const supabase = createSupabaseServer();
  const page = filter.page ?? 1;
  const perPage = filter.perPage ?? 20;
  const from = (page - 1) * perPage;
  const to = from + perPage - 1;

  // クエリ構築
  let query = supabase
    .from("venues")
    .select("*", { count: "exact" })
    .eq("is_active", true);

  if (filter.prefectureSlug) {
    query = query.eq("prefecture_slug", filter.prefectureSlug);
  }
  if (filter.citySlug) {
    query = query.eq("city_slug", filter.citySlug);
  }
  if (filter.venueType) {
    query = query.eq("venue_type", filter.venueType);
  }
  if (filter.hasCrematorium !== undefined) {
    query = query.eq("has_crematorium", filter.hasCrematorium);
  }
  if (filter.features && filter.features.length > 0) {
    query = query.contains("features", filter.features);
  }

  // ソート
  const sortBy = filter.sortBy ?? "rating";
  if (sortBy === "rating") {
    query = query.order("rating_avg", { ascending: false });
  } else if (sortBy === "reviewCount") {
    query = query.order("review_count", { ascending: false });
  } else {
    query = query.order("name");
  }

  // ページネーション
  query = query.range(from, to);

  const { data, error, count } = await query;

  if (error) {
    console.error("斎場取得エラー:", error);
    return { data: [], total: 0, page, perPage, totalPages: 0 };
  }

  const total = count ?? 0;
  return {
    data: (data ?? []).map(toVenue),
    total,
    page,
    perPage,
    totalPages: Math.ceil(total / perPage),
  };
}

// スラッグで1件取得
export async function getVenueBySlug(
  slug: string
): Promise<Venue | null> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("venues")
    .select("*")
    .eq("slug", slug)
    .eq("is_active", true)
    .single();

  if (error || !data) return null;
  return toVenue(data);
}

// 人気施設取得
export async function getPopularVenues(
  limit: number = 6
): Promise<Venue[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("venues")
    .select("*")
    .eq("is_active", true)
    .order("rating_avg", { ascending: false })
    .limit(limit);

  if (error) {
    console.error("人気斎場取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toVenue);
}

// 施設の口コミ取得
export async function getReviewsByVenue(
  venueId: string
): Promise<import("./types").Review[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("reviews")
    .select("*")
    .eq("venue_id", venueId)
    .order("created_at", { ascending: false });

  if (error) {
    console.error("施設口コミ取得エラー:", error);
    return [];
  }
  return (data ?? []).map((row: Record<string, unknown>) => ({
    id: String(row.id),
    providerId: String(row.provider_id ?? ""),
    venueId: String(row.venue_id ?? ""),
    rating: row.rating as number,
    content: row.content as string,
    serviceType: row.service_type as string,
    usedAt: row.used_at as string,
    authorName: row.author_name as string,
    createdAt: row.created_at as string,
  }));
}

// 施設のレビューサマリー取得
export async function getVenueReviewSummary(
  venueId: string
): Promise<{ avg: number; count: number; distribution: number[] }> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("reviews")
    .select("rating")
    .eq("venue_id", venueId);

  if (error || !data) {
    return { avg: 0, count: 0, distribution: [0, 0, 0, 0, 0] };
  }

  const count = data.length;
  const avg =
    count > 0
      ? data.reduce((sum, r) => sum + (r.rating as number), 0) / count
      : 0;

  const distribution = [0, 0, 0, 0, 0];
  data.forEach((r) => {
    const rating = r.rating as number;
    if (rating >= 1 && rating <= 5) {
      distribution[rating - 1]++;
    }
  });

  return { avg: Math.round(avg * 10) / 10, count, distribution };
}
