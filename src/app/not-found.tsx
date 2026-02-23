import Link from "next/link";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

/** 404ページ */
export default function NotFound() {
  return (
    <>
      <Header />
      <main className="flex min-h-[60vh] items-center justify-center px-4">
        <div className="text-center">
          {/* 404表示 */}
          <p className="text-6xl font-bold text-primary-300">404</p>

          {/* メッセージ */}
          <h1 className="mt-4 text-2xl font-bold text-gray-900">
            ページが見つかりませんでした
          </h1>
          <p className="mt-3 text-gray-600">
            お探しのページは移動または削除された可能性があります。
          </p>

          {/* トップページへ戻るリンク */}
          <Link
            href="/"
            className="mt-8 inline-block rounded-lg bg-primary-600 px-6 py-3 text-sm font-medium text-white transition-colors hover:bg-primary-700"
          >
            トップページに戻る
          </Link>
        </div>
      </main>
      <Footer />
    </>
  );
}
