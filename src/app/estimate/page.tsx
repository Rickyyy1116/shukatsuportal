import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import EstimateForm from "@/components/estimate/EstimateForm";
import { SITE_NAME } from "@/lib/constants";

interface EstimatePageProps {
  searchParams: Promise<{ venue?: string }>;
}

export const metadata: Metadata = {
  title: `無料見積もり | ${SITE_NAME}`,
  description: "葬儀の無料見積もりフォーム。葬儀の種類・人数・エリア・時期を選ぶだけで、最適な葬儀プランのお見積もりをお届けします。",
};

export default async function EstimatePage({ searchParams }: EstimatePageProps) {
  const { venue } = await searchParams;

  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: "無料見積もり" },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        <div className="mt-6 text-center">
          <h1 className="text-2xl font-bold text-gray-900 sm:text-3xl">
            葬儀の無料見積もり
          </h1>
          <p className="mt-2 text-gray-600">
            簡単な質問に答えるだけで、最適な葬儀プランのお見積もりをお届けします
          </p>
        </div>

        <div className="mt-8 pb-12">
          <EstimateForm initialVenueSlug={venue} />
        </div>
      </main>
      <Footer />
    </>
  );
}
