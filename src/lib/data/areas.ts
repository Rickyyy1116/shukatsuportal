import { createSupabaseServer } from "../supabase/server";
import type { Area } from "./types";

// DBの行 → TypeScript型に変換
function toArea(row: Record<string, unknown>): Area {
  return {
    id: String(row.id),
    name: row.name as string,
    slug: row.slug as string,
    code: row.code as string,
    parentSlug: (row.parent_slug as string) ?? null,
    level: row.level as 1 | 2,
    region: row.region as string,
  };
}

export async function getPrefectures(): Promise<Area[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("areas")
    .select("*")
    .eq("level", 1)
    .order("code");

  if (error) {
    console.error("都道府県取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toArea);
}

export async function getPrefectureBySlug(
  slug: string
): Promise<Area | null> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("areas")
    .select("*")
    .eq("slug", slug)
    .eq("level", 1)
    .single();

  if (error || !data) return null;
  return toArea(data);
}

export async function getCitiesByPrefecture(
  prefectureSlug: string
): Promise<Area[]> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("areas")
    .select("*")
    .eq("parent_slug", prefectureSlug)
    .eq("level", 2)
    .order("code");

  if (error) {
    console.error("市区町村取得エラー:", error);
    return [];
  }
  return (data ?? []).map(toArea);
}

export async function getCityBySlug(
  prefectureSlug: string,
  citySlug: string
): Promise<Area | null> {
  const supabase = createSupabaseServer();
  const { data, error } = await supabase
    .from("areas")
    .select("*")
    .eq("parent_slug", prefectureSlug)
    .eq("slug", citySlug)
    .eq("level", 2)
    .single();

  if (error || !data) return null;
  return toArea(data);
}

export async function getAreaBySlug(slug: string): Promise<Area | null> {
  const supabase = createSupabaseServer();

  // まず都道府県で検索
  const { data: pref } = await supabase
    .from("areas")
    .select("*")
    .eq("slug", slug)
    .eq("level", 1)
    .single();
  if (pref) return toArea(pref);

  // なければ市区町村で検索
  const { data: city } = await supabase
    .from("areas")
    .select("*")
    .eq("slug", slug)
    .eq("level", 2)
    .single();
  if (city) return toArea(city);

  return null;
}
