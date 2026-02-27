import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import ProviderList from "@/components/provider/ProviderList";
import VenueList from "@/components/venue/VenueList";
import {
  getCategoryBySlug,
  getPrefectureBySlug,
  getCityBySlug,
  getProviders,
  getVenues,
} from "@/lib/data";
import { VALID_CATEGORIES, SITE_NAME } from "@/lib/constants";

interface CityPageProps {
  params: Promise<{ category: string; prefecture: string; city: string }>;
}

/** 市区町村別一覧ページ（Server Component） */
export default async function CityPage({ params }: CityPageProps) {
  const { category, prefecture, city } = await params;

  // カテゴリバリデーション
  if (!(VALID_CATEGORIES as readonly string[]).includes(category)) {
    notFound();
  }

  const isSougi = category === "sougi";

  // データ取得
  const [cat, pref, cityData] = await Promise.all([
    getCategoryBySlug(category),
    getPrefectureBySlug(prefecture),
    getCityBySlug(prefecture, city),
  ]);

  if (!cat || !pref || !cityData) {
    notFound();
  }

  // sougi分岐: 施設データ or 事業者データ
  const venuesResult = isSougi
    ? await getVenues({ prefectureSlug: prefecture, citySlug: city })
    : null;
  const providersResult = !isSougi
    ? await getProviders({ categorySlug: category, prefectureSlug: prefecture, citySlug: city })
    : null;

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: cat.name, href: `/${category}/` },
    { label: pref.name, href: `/${category}/${prefecture}/` },
    { label: cityData.name },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        {/* ページタイトル */}
        <h1 className="mt-4 text-2xl font-bold text-gray-900 sm:text-3xl">
          {cityData.name}の{cat.providerLabel}
        </h1>
        <p className="mt-2 text-gray-600">
          {pref.name}{cityData.name}で評判の良い{cat.providerLabel}を口コミ・料金で比較できます。
        </p>

        {/* 一覧 */}
        <section className="mt-8">
          {isSougi && venuesResult ? (
            <VenueList
              venues={venuesResult.data}
              total={venuesResult.total}
            />
          ) : providersResult ? (
            <ProviderList
              providers={providersResult.data}
              categorySlug={category}
              total={providersResult.total}
            />
          ) : null}
        </section>
      </main>
      <Footer />
    </>
  );
}

/** メタデータ生成 */
export async function generateMetadata({ params }: CityPageProps): Promise<Metadata> {
  const { category, prefecture, city } = await params;

  const [cat, pref, cityData] = await Promise.all([
    getCategoryBySlug(category),
    getPrefectureBySlug(prefecture),
    getCityBySlug(prefecture, city),
  ]);

  if (!cat || !pref || !cityData) {
    return { title: "ページが見つかりません" };
  }

  return {
    title: `${cityData.name}の${cat.providerLabel}おすすめ一覧【2026年最新】 | ${SITE_NAME}`,
    description: `${pref.name}${cityData.name}で評判の良い${cat.providerLabel}を口コミ・料金で比較。無料相談・見積もりで最適な${cat.providerLabel}を見つけましょう。`,
  };
}
