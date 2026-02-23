import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import InquiryForm from "@/components/form/InquiryForm";
import { getCategories, getPrefectures } from "@/lib/data";
import { SITE_NAME } from "@/lib/constants";

interface InquiryPageProps {
  searchParams: Promise<{ provider?: string; category?: string }>;
}

/** 問い合わせページ（Server Component） */
export default async function InquiryPage({ searchParams }: InquiryPageProps) {
  const { provider, category } = await searchParams;

  // データ取得
  const [categories, prefectures] = await Promise.all([
    getCategories(),
    getPrefectures(),
  ]);

  // パンくずリスト
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: "無料相談・資料請求" },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-3xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        {/* ページタイトル */}
        <h1 className="mt-4 text-2xl font-bold text-gray-900 sm:text-3xl">
          無料相談・資料請求
        </h1>

        {/* 説明テキスト */}
        <p className="mt-3 text-gray-600">
          終活に関するお悩みをお気軽にご相談ください。
          専門スタッフが無料でご対応いたします。
          資料請求のみのお申し込みも承っております。
        </p>

        {/* 問い合わせフォーム */}
        <div className="mt-8 rounded-xl border border-gray-200 bg-white p-6 shadow-sm sm:p-8">
          <InquiryForm
            categories={categories}
            prefectures={prefectures}
            defaultCategory={category}
            defaultProvider={provider}
          />
        </div>
      </main>
      <Footer />
    </>
  );
}

/** メタデータ */
export const metadata: Metadata = {
  title: `無料相談・資料請求 | ${SITE_NAME}`,
  description:
    "終活に関する無料相談・資料請求フォーム。葬儀・お墓・介護・相続のお悩みを専門スタッフが無料でご対応いたします。",
};
