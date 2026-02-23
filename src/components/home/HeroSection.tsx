/** トップページヒーローセクション（キャッチコピー + 実績バッジ） */
export default function HeroSection() {
  return (
    <section className="bg-gradient-to-b from-primary-50 to-white px-4 py-16 sm:py-24">
      <div className="mx-auto max-w-4xl text-center">
        {/* キャッチコピー */}
        <h1 className="text-2xl font-bold leading-tight text-gray-900 sm:text-3xl md:text-4xl">
          あなたに最適な終活サービスを、
          <br className="hidden sm:block" />
          無料でお探しします
        </h1>

        {/* サブテキスト */}
        <p className="mx-auto mt-4 max-w-2xl text-base text-gray-600 sm:text-lg">
          全国の葬儀社・霊園・介護施設・相続専門家を口コミ・料金で比較
        </p>

        {/* 実績バッジ */}
        <div className="mx-auto mt-10 flex max-w-lg flex-col items-center justify-center gap-4 sm:flex-row sm:gap-8">
          <div className="text-center">
            <p className="text-2xl font-bold text-primary-700">250社以上</p>
            <p className="text-sm text-gray-500">掲載事業者</p>
          </div>
          <div className="hidden h-8 w-px bg-gray-200 sm:block" />
          <div className="text-center">
            <p className="text-2xl font-bold text-primary-700">500件以上</p>
            <p className="text-sm text-gray-500">口コミ</p>
          </div>
          <div className="hidden h-8 w-px bg-gray-200 sm:block" />
          <div className="text-center">
            <p className="text-2xl font-bold text-primary-700">完全無料</p>
            <p className="text-sm text-gray-500">利用料</p>
          </div>
        </div>
      </div>
    </section>
  );
}
