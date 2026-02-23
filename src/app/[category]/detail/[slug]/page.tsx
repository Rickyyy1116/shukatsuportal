import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import ProviderDetail from "@/components/provider/ProviderDetail";
import ProviderCTA from "@/components/provider/ProviderCTA";
import ReviewList from "@/components/review/ReviewList";
import {
  getCategoryBySlug,
  getProviderBySlug,
  getPrefectureBySlug,
  getReviewsByProvider,
  getReviewSummary,
} from "@/lib/data";
import { VALID_CATEGORIES, SITE_NAME, SITE_URL } from "@/lib/constants";

interface DetailPageProps {
  params: Promise<{ category: string; slug: string }>;
}

/** 事業者詳細ページ（Server Component） */
export default async function DetailPage({ params }: DetailPageProps) {
  const { category, slug } = await params;

  // カテゴリバリデーション
  if (!VALID_CATEGORIES.includes(category as (typeof VALID_CATEGORIES)[number])) {
    notFound();
  }

  // カテゴリ・事業者データ取得
  const [cat, provider] = await Promise.all([
    getCategoryBySlug(category),
    getProviderBySlug(category, slug),
  ]);

  if (!cat || !provider) {
    notFound();
  }

  // 口コミ・レビューサマリー・都道府県データ取得
  const [reviews, reviewSummary, pref] = await Promise.all([
    getReviewsByProvider(provider.id),
    getReviewSummary(provider.id),
    getPrefectureBySlug(provider.prefectureSlug),
  ]);

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: cat.name, href: `/${category}/` },
    ...(pref
      ? [{ label: pref.name, href: `/${category}/${pref.slug}/` }]
      : []),
    { label: provider.name },
  ];

  // JSON-LD 構造化データ（LocalBusiness + AggregateRating）
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    name: provider.name,
    description: provider.description,
    address: {
      "@type": "PostalAddress",
      addressLocality: pref?.name ?? "",
      streetAddress: provider.address,
      addressCountry: "JP",
    },
    telephone: provider.phone,
    url: provider.website,
    geo: {
      "@type": "GeoCoordinates",
      latitude: provider.latitude,
      longitude: provider.longitude,
    },
    ...(reviewSummary.count > 0
      ? {
          aggregateRating: {
            "@type": "AggregateRating",
            ratingValue: reviewSummary.avg,
            reviewCount: reviewSummary.count,
            bestRating: 5,
            worstRating: 1,
          },
        }
      : {}),
  };

  return (
    <>
      <Header />
      <main className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        {/* JSON-LD構造化データ */}
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
        />

        <Breadcrumb items={breadcrumbItems} />

        {/* 事業者詳細 */}
        <section className="mt-6">
          <ProviderDetail provider={provider} />
        </section>

        {/* 口コミ一覧 */}
        <section className="mt-10">
          <h2 className="mb-4 text-xl font-bold text-gray-900">
            口コミ・評判
          </h2>
          <ReviewList reviews={reviews} summary={reviewSummary} />
        </section>

        {/* CTA（お問い合わせ誘導） */}
        <section className="mt-10">
          <ProviderCTA provider={provider} categorySlug={category} />
        </section>
      </main>
      <Footer />
    </>
  );
}

/** メタデータ生成 */
export async function generateMetadata({ params }: DetailPageProps): Promise<Metadata> {
  const { category, slug } = await params;

  const [cat, provider] = await Promise.all([
    getCategoryBySlug(category),
    getProviderBySlug(category, slug),
  ]);

  if (!cat || !provider) {
    return { title: "ページが見つかりません" };
  }

  const pref = await getPrefectureBySlug(provider.prefectureSlug);
  const prefName = pref?.name ?? "";

  return {
    title: `${provider.name}の口コミ・料金 | ${prefName}の${cat.providerLabel} | ${SITE_NAME}`,
    description: `${provider.name}の口コミ・評判・料金情報。${prefName}の${cat.providerLabel}をお探しなら${SITE_NAME}で無料相談。`,
    openGraph: {
      title: `${provider.name}の口コミ・料金`,
      description: provider.description,
      url: `${SITE_URL}/${category}/detail/${slug}/`,
      type: "website",
    },
  };
}
