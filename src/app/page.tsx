import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import HeroSection from "@/components/home/HeroSection";
import ServiceSearch from "@/components/home/ServiceSearch";
import HowItWorks from "@/components/home/HowItWorks";
import TrustSignals from "@/components/home/TrustSignals";
import { getCategories, getPrefectures } from "@/lib/data";

/** トップページ（Server Component） */
export default async function Home() {
  // データ取得
  const [categories, prefectures] = await Promise.all([
    getCategories(),
    getPrefectures(),
  ]);

  return (
    <>
      <Header />
      <main>
        <HeroSection />
        <ServiceSearch categories={categories} prefectures={prefectures} />
        <HowItWorks />
        <TrustSignals />
      </main>
      <Footer />
    </>
  );
}
