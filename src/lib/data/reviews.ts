import { mockReviews } from "../mock/reviews";
import type { Review } from "./types";

export async function getReviewsByProvider(
  providerId: string
): Promise<Review[]> {
  return mockReviews
    .filter((r) => r.providerId === providerId)
    .sort(
      (a, b) =>
        new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime()
    );
}

export async function getReviewSummary(
  providerId: string
): Promise<{ avg: number; count: number; distribution: number[] }> {
  const reviews = mockReviews.filter((r) => r.providerId === providerId);
  const count = reviews.length;
  const avg =
    count > 0
      ? reviews.reduce((sum, r) => sum + r.rating, 0) / count
      : 0;
  // 各星の件数（index 0=1つ星, index 4=5つ星）
  const distribution = [0, 0, 0, 0, 0];
  reviews.forEach((r) => {
    distribution[r.rating - 1]++;
  });
  return { avg: Math.round(avg * 10) / 10, count, distribution };
}
