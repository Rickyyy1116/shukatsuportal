/** 事業者一覧コンポーネント */

import type { Provider } from "@/lib/data/types";
import ProviderCard from "@/components/provider/ProviderCard";

interface ProviderListProps {
  /** 表示する事業者の配列 */
  providers: Provider[];
  /** カテゴリスラッグ（各カードのリンクURL用） */
  categorySlug: string;
  /** 検索結果の総件数 */
  total: number;
}

/**
 * 事業者一覧コンポーネント
 * - 検索結果件数を表示
 * - ProviderCardをリスト形式で並べる
 * - 結果0件時のメッセージ対応
 */
export default function ProviderList({ providers, categorySlug, total }: ProviderListProps) {
  return (
    <section>
      {/* 検索結果件数 */}
      <p className="mb-4 text-sm text-gray-600">
        <span className="font-bold text-primary-700">{total}件</span>の事業者が見つかりました
      </p>

      {providers.length > 0 ? (
        /* 事業者カードリスト */
        <div className="space-y-4">
          {providers.map((provider) => (
            <ProviderCard
              key={provider.id}
              provider={provider}
              categorySlug={categorySlug}
            />
          ))}
        </div>
      ) : (
        /* 結果0件の場合 */
        <div className="rounded-xl border border-gray-200 bg-neutral-50 px-6 py-12 text-center">
          <p className="text-lg font-medium text-gray-500">
            条件に一致する事業者が見つかりませんでした
          </p>
          <p className="mt-2 text-sm text-gray-400">
            検索条件を変更してお試しください
          </p>
        </div>
      )}
    </section>
  );
}
