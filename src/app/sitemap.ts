import type { MetadataRoute } from "next";
import { VALID_CATEGORIES, SITE_URL } from "@/lib/constants";
import { getPrefectures, getProviders } from "@/lib/data";

/** サイトマップ生成 */
export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const prefectures = await getPrefectures();
  const entries: MetadataRoute.Sitemap = [];

  // トップページ
  entries.push({
    url: SITE_URL,
    lastModified: new Date(),
    changeFrequency: "daily",
    priority: 1.0,
  });

  // カテゴリ一覧ページ（6ページ）
  for (const cat of VALID_CATEGORIES) {
    entries.push({
      url: `${SITE_URL}/${cat}`,
      lastModified: new Date(),
      changeFrequency: "weekly",
      priority: 0.9,
    });
  }

  // 都道府県ページ（6カテゴリ × 47都道府県 = 282ページ）
  for (const cat of VALID_CATEGORIES) {
    for (const pref of prefectures) {
      entries.push({
        url: `${SITE_URL}/${cat}/${pref.slug}`,
        lastModified: new Date(),
        changeFrequency: "weekly",
        priority: 0.8,
      });
    }
  }

  // 事業者詳細ページ
  for (const cat of VALID_CATEGORIES) {
    const result = await getProviders({ categorySlug: cat, perPage: 1000 });
    for (const provider of result.data) {
      entries.push({
        url: `${SITE_URL}/${cat}/detail/${provider.slug}`,
        lastModified: new Date(),
        changeFrequency: "monthly",
        priority: 0.7,
      });
    }
  }

  // 問い合わせページ
  entries.push({
    url: `${SITE_URL}/inquiry`,
    lastModified: new Date(),
    changeFrequency: "monthly",
    priority: 0.5,
  });

  return entries;
}
