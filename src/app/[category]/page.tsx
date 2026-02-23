import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import ProviderList from "@/components/provider/ProviderList";
import { getCategoryBySlug, getProviders, getPrefectures } from "@/lib/data";
import { VALID_CATEGORIES, REGION_GROUPS, SITE_NAME } from "@/lib/constants";

interface CategoryPageProps {
  params: Promise<{ category: string }>;
}

export const dynamicParams = false;

/** カテゴリ一覧ページ（Server Component） */
export default async function CategoryPage({ params }: CategoryPageProps) {
  const { category } = await params;

  // カテゴリバリデーション
  if (!VALID_CATEGORIES.includes(category as (typeof VALID_CATEGORIES)[number])) {
    notFound();
  }

  // データ取得
  const [cat, providersResult, prefectures] = await Promise.all([
    getCategoryBySlug(category),
    getProviders({ categorySlug: category }),
    getPrefectures(),
  ]);

  if (!cat) {
    notFound();
  }

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: cat.name },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        {/* ページタイトル */}
        <h1 className="mt-4 text-2xl font-bold text-gray-900 sm:text-3xl">
          {cat.providerLabel}を探す
        </h1>
        <p className="mt-2 text-gray-600">{cat.description}</p>

        {/* 都道府県リンク一覧 */}
        <section className="mt-8">
          <h2 className="mb-4 text-lg font-bold text-gray-900">
            エリアから{cat.providerLabel}を探す
          </h2>
          {REGION_GROUPS.map((region) => {
            // このリージョンに属する都道府県を取得
            const regionPrefs = prefectures.filter((pref) =>
              (region.prefectures as readonly string[]).includes(pref.slug)
            );

            if (regionPrefs.length === 0) return null;

            return (
              <div key={region.name} className="mb-4">
                <h3 className="mb-2 text-sm font-bold text-gray-700">
                  {region.name}
                </h3>
                <div className="flex flex-wrap gap-2">
                  {regionPrefs.map((pref) => (
                    <Link
                      key={pref.id}
                      href={`/${category}/${pref.slug}/`}
                      className="rounded-lg border border-gray-200 px-3 py-1.5 text-sm text-gray-700 transition-colors hover:border-primary-400 hover:bg-primary-50 hover:text-primary-700"
                    >
                      {pref.name}
                    </Link>
                  ))}
                </div>
              </div>
            );
          })}
        </section>

        {/* 事業者一覧 */}
        <section className="mt-10">
          <h2 className="mb-4 text-lg font-bold text-gray-900">
            おすすめの{cat.providerLabel}
          </h2>
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
export async function generateMetadata({ params }: CategoryPageProps): Promise<Metadata> {
  const { category } = await params;
  const cat = await getCategoryBySlug(category);

  if (!cat) {
    return { title: "ページが見つかりません" };
  }

  return {
    title: `${cat.providerLabel}を探す | ${SITE_NAME}`,
    description: `全国の${cat.providerLabel}を口コミ・料金で比較。${cat.description}`,
  };
}

/** 静的パラメータ生成 */
export async function generateStaticParams() {
  return VALID_CATEGORIES.map((category) => ({
    category,
  }));
}
