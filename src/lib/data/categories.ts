import { mockCategories } from "../mock/categories";
import type { Category } from "./types";

export async function getCategories(): Promise<Category[]> {
  return mockCategories.sort((a, b) => a.sortOrder - b.sortOrder);
}

export async function getCategoryBySlug(
  slug: string
): Promise<Category | null> {
  return mockCategories.find((c) => c.slug === slug) ?? null;
}
