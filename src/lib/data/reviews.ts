import { createSupabaseServer } from "../supabase/server";
import type { Review } from "./types";

// DBの行 → TypeScript型に変換
function toReview(row: Record<string, unknown>): Review {
  return {
    id: String(row.id),
    providerId: String(row.provider_id),
    rating: row.rating as number,
    content: row.content as string,
    serviceType: row.service_type as string,
    usedAt: row.used_at as string,
    authorName: row.author_name as string,
    createdAt: row.created_at as string,
  };
}

export async function getReviewsByProvider(
  providerId: string
): Promise<Review[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("reviews")
    .select("*")
    .eq("provider_id", providerId)
    .order("created_at", { ascending: false });

  if (error) {
    console.error("口コミ取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toReview);
}

export async function getReviewSummary(
  providerId: string
): Promise<{ avg: number; count: number; distribution: number[] }> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("reviews")
    .select("rating")
    .eq("provider_id", providerId);

  if (error || !data) {
    return { avg: 0, count: 0, distribution: [0, 0, 0, 0, 0] };
  }

  const count = data.length;
  const avg =
    count > 0
      ? data.reduce((sum, r) => sum + (r.rating as number), 0) / count
      : 0;

  // 各星の件数（index 0=1つ星, index 4=5つ星）
  const distribution = [0, 0, 0, 0, 0];
  data.forEach((r) => {
    const rating = r.rating as number;
    if (rating >= 1 && rating <= 5) {
      distribution[rating - 1]++;
    }
  });

  return { avg: Math.round(avg * 10) / 10, count, distribution };
}
