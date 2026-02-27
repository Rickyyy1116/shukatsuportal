import { createSupabaseServer } from "../supabase/server";
import type { Provider, ProviderFilter, PaginatedResult } from "./types";

// DBの行 → TypeScript型に変換
function toProvider(row: Record<string, unknown>): Provider {
  return {
    id: String(row.id),
    name: row.name as string,
    slug: row.slug as string,
    categorySlug: row.category_slug as string,
    description: row.description as string,
    address: row.address as string,
    phone: row.phone as string,
    website: row.website as string,
    priceRange: row.price_range as "low" | "mid" | "high",
    priceDetail: row.price_detail as string,
    businessHours: row.business_hours as string,
    features: (row.features as string[]) ?? [],
    images: (row.images as string[]) ?? [],
    latitude: (row.latitude as number) ?? 0,
    longitude: (row.longitude as number) ?? 0,
    prefectureSlug: row.prefecture_slug as string,
    citySlug: row.city_slug as string,
    ratingAvg: row.rating_avg as number,
    reviewCount: row.review_count as number,
  };
}

export async function getProviders(
  filter: ProviderFilter
): Promise<PaginatedResult<Provider>> {
  const supabase = createSupabaseServer();
  const page = filter.page ?? 1;
  const perPage = filter.perPage ?? 20;
  const from = (page - 1) * perPage;
  const to = from + perPage - 1;

  // クエリ構築
  let query = supabase
    .from("providers")
    .select("*", { count: "exact" })
    .eq("is_active", true);

  if (filter.categorySlug) {
    query = query.eq("category_slug", filter.categorySlug);
  }
  if (filter.prefectureSlug) {
    query = query.eq("prefecture_slug", filter.prefectureSlug);
  }
  if (filter.citySlug) {
    query = query.eq("city_slug", filter.citySlug);
  }
  if (filter.priceRange) {
    query = query.eq("price_range", filter.priceRange);
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
    console.error("事業者取得エラー:", error);
    return { data: [], total: 0, page, perPage, totalPages: 0 };
  }

  const total = count ?? 0;
  return {
    data: (data ?? []).map(toProvider),
    total,
    page,
    perPage,
    totalPages: Math.ceil(total / perPage),
  };
}

export async function getProviderBySlug(
  categorySlug: string,
  slug: string
): Promise<Provider | null> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("providers")
    .select("*")
    .eq("category_slug", categorySlug)
    .eq("slug", slug)
    .eq("is_active", true)
    .single();

  if (error || !data) return null;
  return toProvider(data);
}

export async function getPopularProviders(
  limit: number = 6
): Promise<Provider[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("providers")
    .select("*")
    .eq("is_active", true)
    .order("rating_avg", { ascending: false })
    .limit(limit);

  if (error) {
    console.error("人気事業者取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toProvider);
}
