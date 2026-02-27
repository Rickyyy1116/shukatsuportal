/** 事業者詳細コンポーネント */

import type { Provider } from "@/lib/data/types";
import { PRICE_RANGE_LABELS } from "@/lib/constants";
import Badge from "@/components/ui/Badge";

/** 料金帯からバッジvariantへの変換 */
const PRICE_VARIANT_MAP = {
  low: "price-low",
  mid: "price-mid",
  high: "price-high",
} as const;

// URLが安全なプロトコルかチェック（javascript:等のXSS防止）
function isSafeUrl(url: string): boolean {
  try {
    const parsed = new URL(url);
    return parsed.protocol === "http:" || parsed.protocol === "https:";
  } catch {
    return false;
  }
}

interface ProviderDetailProps {
  /** 事業者データ */
  provider: Provider;
}

/**
 * 事業者詳細コンポーネント
 * - 画像・基本情報・紹介文・料金・特徴をセクション分けで表示
 * - Server Component として動作
 */
export default function ProviderDetail({ provider }: ProviderDetailProps) {
  const priceVariant = PRICE_VARIANT_MAP[provider.priceRange];
  const priceLabel = PRICE_RANGE_LABELS[provider.priceRange] ?? provider.priceRange;

  return (
    <div className="space-y-8">
      {/* === 画像エリア === */}
      <section>
        {provider.images.length > 0 ? (
          <img
            src={provider.images[0]}
            alt={`${provider.name}の画像`}
            className="aspect-video w-full rounded-xl object-cover"
          />
        ) : (
          /* プレースホルダ（画像なし） */
          <div className="flex aspect-video w-full items-center justify-center rounded-xl bg-neutral-200">
            <span className="text-6xl">🏢</span>
          </div>
        )}
      </section>

      {/* === 事業者名 === */}
      <section>
        <h1 className="text-2xl font-bold text-gray-900">{provider.name}</h1>
      </section>

      {/* === 基本情報テーブル === */}
      <section>
        <h2 className="mb-4 text-lg font-bold text-gray-900">基本情報</h2>
        <dl className="divide-y divide-gray-100">
          <div className="flex gap-4 py-3">
            <dt className="w-28 shrink-0 font-bold text-gray-700">住所</dt>
            <dd className="text-gray-600">{provider.address}</dd>
          </div>
          <div className="flex gap-4 py-3">
            <dt className="w-28 shrink-0 font-bold text-gray-700">電話番号</dt>
            <dd className="text-gray-600">
              <a
                href={`tel:${provider.phone}`}
                className="text-primary-600 hover:underline"
              >
                {provider.phone}
              </a>
            </dd>
          </div>
          <div className="flex gap-4 py-3">
            <dt className="w-28 shrink-0 font-bold text-gray-700">営業時間</dt>
            <dd className="text-gray-600">{provider.businessHours}</dd>
          </div>
          <div className="flex gap-4 py-3">
            <dt className="w-28 shrink-0 font-bold text-gray-700">公式サイト</dt>
            <dd className="text-gray-600">
              {provider.website && isSafeUrl(provider.website) ? (
                <a
                  href={provider.website}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-primary-600 hover:underline"
                >
                  {provider.website}
                </a>
              ) : provider.website ? (
                <span className="text-gray-600">{provider.website}</span>
              ) : (
                <span className="text-gray-400">情報なし</span>
              )}
            </dd>
          </div>
        </dl>
      </section>

      {/* === 紹介文 === */}
      {provider.description && (
        <section>
          <h2 className="mb-4 text-lg font-bold text-gray-900">紹介</h2>
          <p className="leading-relaxed text-gray-600">{provider.description}</p>
        </section>
      )}

      {/* === 料金情報 === */}
      <section>
        <h2 className="mb-4 text-lg font-bold text-gray-900">料金情報</h2>
        <div className="rounded-lg bg-neutral-50 p-4">
          {/* 料金帯バッジ */}
          <div className="mb-3">
            <Badge variant={priceVariant}>{priceLabel}</Badge>
          </div>
          {/* 料金詳細（改行対応） */}
          {provider.priceDetail && (
            <p className="whitespace-pre-line text-sm leading-relaxed text-gray-600">
              {provider.priceDetail}
            </p>
          )}
        </div>
      </section>

      {/* === 特徴 === */}
      {provider.features.length > 0 && (
        <section>
          <h2 className="mb-4 text-lg font-bold text-gray-900">特徴</h2>
          <div className="flex flex-wrap gap-2">
            {provider.features.map((feature) => (
              <Badge key={feature} variant="primary">
                {feature}
              </Badge>
            ))}
          </div>
        </section>
      )}
    </div>
  );
}
