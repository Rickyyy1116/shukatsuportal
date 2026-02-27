import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import ProviderDetail from "@/components/provider/ProviderDetail";
import ProviderCTA from "@/components/provider/ProviderCTA";
import VenueDetail from "@/components/venue/VenueDetail";
import VenueCTA from "@/components/venue/VenueCTA";
import ReviewList from "@/components/review/ReviewList";
import {
  getCategoryBySlug,
  getProviderBySlug,
  getVenueBySlug,
  getPrefectureBySlug,
  getReviewsByProvider,
  getReviewSummary,
  getReviewsByVenue,
  getVenueReviewSummary,
} from "@/lib/data";
import { VALID_CATEGORIES, SITE_NAME, SITE_URL } from "@/lib/constants";

// URLが安全なプロトコルかチェック（javascript:等のXSS防止）
function getSafeUrl(url: string | undefined): string | undefined {
  if (!url) return undefined;
  try {
    const parsed = new URL(url);
    if (parsed.protocol === "http:" || parsed.protocol === "https:") return url;
  } catch { /* invalid URL */ }
  return undefined;
}

interface DetailPageProps {
  params: Promise<{ category: string; slug: string }>;
}

/** 事業者/施設 詳細ページ（Server Component） */
export default async function DetailPage({ params }: DetailPageProps) {
  const { category, slug } = await params;

  // カテゴリバリデーション
  if (!VALID_CATEGORIES.includes(category as (typeof VALID_CATEGORIES)[number])) {
    notFound();
  }

  const cat = await getCategoryBySlug(category);
  if (!cat) notFound();

  const isSougi = category === "sougi";

  // === sougiの場合: 施設（venue）を表示 ===
  if (isSougi) {
    const venue = await getVenueBySlug(slug);
    if (!venue) notFound();

    const [reviews, reviewSummary, pref] = await Promise.all([
      getReviewsByVenue(venue.id),
      getVenueReviewSummary(venue.id),
      getPrefectureBySlug(venue.prefectureSlug),
    ]);

    // パンくずリスト
    const breadcrumbItems = [
      { label: "トップ", href: "/" },
      { label: cat.name, href: `/${category}/` },
      ...(pref ? [{ label: pref.name, href: `/${category}/${pref.slug}/` }] : []),
      { label: venue.name },
    ];

    // JSON-LD: FuneralHome スキーマ
    const jsonLd = {
      "@context": "https://schema.org",
      "@type": "FuneralHome",
      name: venue.name,
      description: venue.description,
      address: {
        "@type": "PostalAddress",
        addressLocality: pref?.name ?? "",
        streetAddress: venue.address,
        addressCountry: "JP",
      },
      geo: {
        "@type": "GeoCoordinates",
        latitude: venue.latitude,
        longitude: venue.longitude,
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
          <script
            type="application/ld+json"
            dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
          />

          <Breadcrumb items={breadcrumbItems} />

          {/* 施設詳細 */}
          <section className="mt-6">
            <VenueDetail venue={venue} />
          </section>

          {/* 口コミ一覧 */}
          <section className="mt-10">
            <h2 className="mb-4 text-xl font-bold text-gray-900">
              口コミ・評判
            </h2>
            <ReviewList reviews={reviews} summary={reviewSummary} />
          </section>

          {/* CTA（見積もり誘導） */}
          <section className="mt-10">
            <VenueCTA venue={venue} />
          </section>
        </main>
        <Footer />
      </>
    );
  }

  // === sougi以外: 従来の事業者（provider）を表示 ===
  const provider = await getProviderBySlug(category, slug);
  if (!provider) notFound();

  const [reviews, reviewSummary, pref] = await Promise.all([
    getReviewsByProvider(provider.id),
    getReviewSummary(provider.id),
    getPrefectureBySlug(provider.prefectureSlug),
  ]);

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: cat.name, href: `/${category}/` },
    ...(pref ? [{ label: pref.name, href: `/${category}/${pref.slug}/` }] : []),
    { label: provider.name },
  ];

  // JSON-LD: LocalBusiness
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
    url: getSafeUrl(provider.website),
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

        {/* CTA */}
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
  const cat = await getCategoryBySlug(category);
  if (!cat) return { title: "ページが見つかりません" };

  const isSougi = category === "sougi";

  if (isSougi) {
    const venue = await getVenueBySlug(slug);
    if (!venue) return { title: "ページが見つかりません" };

    const pref = await getPrefectureBySlug(venue.prefectureSlug);
    const prefName = pref?.name ?? "";

    return {
      title: `${venue.name}の料金・特徴 | ${prefName}の${cat.providerLabel} | ${SITE_NAME}`,
      description: `${venue.name}の口コミ・評判・料金情報。${prefName}の${cat.providerLabel}をお探しなら${SITE_NAME}で無料見積もり。`,
      openGraph: {
        title: `${venue.name}の料金・特徴`,
        description: venue.description,
        url: `${SITE_URL}/${category}/detail/${slug}/`,
        type: "website",
      },
    };
  }

  const provider = await getProviderBySlug(category, slug);
  if (!provider) return { title: "ページが見つかりません" };

  const pref = await getPrefectureBySlug(provider.prefectureSlug);
  const prefName = pref?.name ?? "";

  return {
    title: `${provider.name}の料金・特徴 | ${prefName}の${cat.providerLabel} | ${SITE_NAME}`,
    description: `${provider.name}の料金・特徴情報。${prefName}の${cat.providerLabel}をお探しなら${SITE_NAME}で無料見積もり。`,
    openGraph: {
      title: `${provider.name}の料金・特徴`,
      description: provider.description,
      url: `${SITE_URL}/${category}/detail/${slug}/`,
      type: "website",
    },
  };
}
