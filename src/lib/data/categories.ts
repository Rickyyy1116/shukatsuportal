import { createSupabaseServer } from "../supabase/server";
import type { Category } from "./types";

// DBの行 → TypeScript型に変換
function toCategory(row: Record<string, unknown>): Category {
  return {
    id: String(row.id),
    name: row.name as string,
    slug: row.slug as string,
    sortOrder: row.sort_order as number,
    icon: row.icon as string,
    description: row.description as string,
    providerLabel: row.provider_label as string,
  };
}

export async function getCategories(): Promise<Category[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("categories")
    .select("*")
    .order("sort_order");

  if (error) {
    console.error("カテゴリ取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toCategory);
}

export async function getCategoryBySlug(
  slug: string
): Promise<Category | null> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("categories")
    .select("*")
    .eq("slug", slug)
    .single();

  if (error || !data) return null;
  return toCategory(data);
}
