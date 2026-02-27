import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import HeroSection from "@/components/home/HeroSection";
import ServiceSearch from "@/components/home/ServiceSearch";
import HowItWorks from "@/components/home/HowItWorks";
import TrustSignals from "@/components/home/TrustSignals";
import CategoryCards from "@/components/home/CategoryCards";
import { getCategories, getPrefectures } from "@/lib/data";

/** トップで表示するカテゴリ（葬儀・お墓のみ） */
const TOP_CATEGORY_SLUGS = ["sougi", "ohaka"];

/** トップページ（Server Component） */
export default async function Home() {
  // データ取得
  const [allCategories, prefectures] = await Promise.all([
    getCategories(),
    getPrefectures(),
  ]);

  // 葬儀・お墓のみに絞り込み
  const categories = allCategories.filter((c) =>
    TOP_CATEGORY_SLUGS.includes(c.slug)
  );

  return (
    <>
      <Header />
      <main>
        <HeroSection />
        <ServiceSearch categories={categories} prefectures={prefectures} />
        <CategoryCards categories={categories} />
        <HowItWorks />
        <TrustSignals />
      </main>
      <Footer />
    </>
  );
}
