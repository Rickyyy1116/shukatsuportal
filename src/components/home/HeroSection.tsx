/** トップページヒーローセクション（キャッチコピー + 特徴バッジ） */
export default function HeroSection() {
  return (
    <section className="bg-gradient-to-b from-primary-50 to-white px-4 py-16 sm:py-24">
      <div className="mx-auto max-w-4xl text-center">
        {/* キャッチコピー */}
        <h1 className="text-2xl font-bold leading-tight text-gray-900 sm:text-3xl md:text-4xl">
          あなたに合った葬儀場・お墓を、
          <br className="hidden sm:block" />
          無料で探せます
        </h1>

        {/* サブテキスト */}
        <p className="mx-auto mt-4 max-w-2xl text-base text-gray-600 sm:text-lg">
          全国の葬儀社・霊園を料金・特徴で比較。かんたん検索で最適な事業者が見つかります。
        </p>

        {/* 特徴バッジ */}
        <div className="mx-auto mt-10 flex max-w-lg flex-col items-center justify-center gap-4 sm:flex-row sm:gap-8">
          <div className="text-center">
            <p className="text-2xl font-bold text-primary-700">全国対応</p>
            <p className="text-sm text-gray-500">葬儀場・霊園を掲載</p>
          </div>
          <div className="hidden h-8 w-px bg-gray-200 sm:block" />
          <div className="text-center">
            <p className="text-2xl font-bold text-primary-700">かんたん検索</p>
            <p className="text-sm text-gray-500">エリア×条件で絞り込み</p>
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
