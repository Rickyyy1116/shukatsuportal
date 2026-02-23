import { mockProviders } from "../mock/providers";
import type { Provider, ProviderFilter, PaginatedResult } from "./types";

export async function getProviders(
  filter: ProviderFilter
): Promise<PaginatedResult<Provider>> {
  let filtered = [...mockProviders];

  if (filter.categorySlug) {
    filtered = filtered.filter((p) => p.categorySlug === filter.categorySlug);
  }
  if (filter.prefectureSlug) {
    filtered = filtered.filter(
      (p) => p.prefectureSlug === filter.prefectureSlug
    );
  }
  if (filter.citySlug) {
    filtered = filtered.filter((p) => p.citySlug === filter.citySlug);
  }
  if (filter.priceRange) {
    filtered = filtered.filter((p) => p.priceRange === filter.priceRange);
  }
  if (filter.features && filter.features.length > 0) {
    filtered = filtered.filter((p) =>
      filter.features!.every((f) => p.features.includes(f))
    );
  }

  // ソート
  const sortBy = filter.sortBy ?? "rating";
  filtered.sort((a, b) => {
    if (sortBy === "rating") return b.ratingAvg - a.ratingAvg;
    if (sortBy === "reviewCount") return b.reviewCount - a.reviewCount;
    return a.name.localeCompare(b.name, "ja");
  });

  const page = filter.page ?? 1;
  const perPage = filter.perPage ?? 20;
  const start = (page - 1) * perPage;
  const paged = filtered.slice(start, start + perPage);

  return {
    data: paged,
    total: filtered.length,
    page,
    perPage,
    totalPages: Math.ceil(filtered.length / perPage),
  };
}

export async function getProviderBySlug(
  categorySlug: string,
  slug: string
): Promise<Provider | null> {
  return (
    mockProviders.find(
      (p) => p.categorySlug === categorySlug && p.slug === slug
    ) ?? null
  );
}

export async function getPopularProviders(
  limit: number = 6
): Promise<Provider[]> {
  return [...mockProviders]
    .sort((a, b) => b.ratingAvg - a.ratingAvg)
    .slice(0, limit);
}
