import { mockPrefectures, mockCities } from "../mock/areas";
import type { Area } from "./types";

export async function getPrefectures(): Promise<Area[]> {
  return mockPrefectures;
}

export async function getPrefectureBySlug(
  slug: string
): Promise<Area | null> {
  return mockPrefectures.find((p) => p.slug === slug) ?? null;
}

export async function getCitiesByPrefecture(
  prefectureSlug: string
): Promise<Area[]> {
  return mockCities.filter((c) => c.parentSlug === prefectureSlug);
}

export async function getCityBySlug(
  prefectureSlug: string,
  citySlug: string
): Promise<Area | null> {
  return (
    mockCities.find(
      (c) => c.parentSlug === prefectureSlug && c.slug === citySlug
    ) ?? null
  );
}

export async function getAreaBySlug(slug: string): Promise<Area | null> {
  return (
    mockPrefectures.find((p) => p.slug === slug) ??
    mockCities.find((c) => c.slug === slug) ??
    null
  );
}
