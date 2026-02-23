import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import ProviderList from "@/components/provider/ProviderList";
import {
  getCategoryBySlug,
  getPrefectureBySlug,
  getProviders,
  getCitiesByPrefecture,
} from "@/lib/data";
import { VALID_CATEGORIES, SITE_NAME } from "@/lib/constants";

interface PrefecturePageProps {
  params: Promise<{ category: string; prefecture: string }>;
}

/** 都道府県別一覧ページ（Server Component） */
export default async function PrefecturePage({ params }: PrefecturePageProps) {
  const { category, prefecture } = await params;

  // カテゴリバリデーション
  if (!VALID_CATEGORIES.includes(category as (typeof VALID_CATEGORIES)[number])) {
    notFound();
  }

  // データ取得
  const [cat, pref] = await Promise.all([
    getCategoryBySlug(category),
    getPrefectureBySlug(prefecture),
  ]);

  // バリデーション
  if (!cat || !pref) {
    notFound();
  }

  // 事業者・市区町村データ取得
  const [providersResult, cities] = await Promise.all([
    getProviders({ categorySlug: category, prefectureSlug: prefecture }),
    getCitiesByPrefecture(prefecture),
  ]);

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: cat.name, href: `/${category}/` },
    { label: pref.name },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        {/* ページタイトル */}
        <h1 className="mt-4 text-2xl font-bold text-gray-900 sm:text-3xl">
          {pref.name}の{cat.providerLabel}
        </h1>
        <p className="mt-2 text-gray-600">
          {pref.name}で評判の良い{cat.providerLabel}を口コミ・料金で比較できます。
        </p>

        {/* 市区町村リンク（あれば） */}
        {cities.length > 0 && (
          <section className="mt-6">
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              {pref.name}の市区町村から探す
            </h2>
            <div className="flex flex-wrap gap-2">
              {cities.map((city) => (
                <Link
                  key={city.id}
                  href={`/${category}/${prefecture}/${city.slug}/`}
                  className="rounded-lg border border-gray-200 px-3 py-1.5 text-sm text-gray-700 transition-colors hover:border-primary-400 hover:bg-primary-50 hover:text-primary-700"
                >
                  {city.name}
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* 事業者一覧 */}
        <section className="mt-8">
          <ProviderList
            providers={providersResult.data}
            categorySlug={category}
            total={providersResult.total}
          />
        </section>
      </main>
      <Footer />
    </>
  );
}

/** メタデータ生成 */
export async function generateMetadata({ params }: PrefecturePageProps): Promise<Metadata> {
  const { category, prefecture } = await params;

  const [cat, pref] = await Promise.all([
    getCategoryBySlug(category),
    getPrefectureBySlug(prefecture),
  ]);

  if (!cat || !pref) {
    return { title: "ページが見つかりません" };
  }

  return {
    title: `${pref.name}の${cat.providerLabel}おすすめ一覧【2026年最新】 | ${SITE_NAME}`,
    description: `${pref.name}で評判の良い${cat.providerLabel}を口コミ・料金で比較。無料相談・見積もりで最適な${cat.providerLabel}を見つけましょう。`,
  };
}
