/** 事業者カードコンポーネント（一覧表示用） */

import Link from "next/link";
import type { Provider } from "@/lib/data/types";
import { PRICE_RANGE_LABELS } from "@/lib/constants";
import Badge from "@/components/ui/Badge";

/** 料金帯からバッジvariantへの変換 */
const PRICE_VARIANT_MAP = {
  low: "price-low",
  mid: "price-mid",
  high: "price-high",
} as const;

interface ProviderCardProps {
  /** 事業者データ */
  provider: Provider;
  /** カテゴリスラッグ（リンクURL用） */
  categorySlug: string;
}

/**
 * 事業者カードコンポーネント
 * - 左に画像、右に事業者情報を表示
 * - ホバーで影のエフェクト
 * - 詳細ページへのリンクボタン付き
 */
export default function ProviderCard({ provider, categorySlug }: ProviderCardProps) {
  const priceVariant = PRICE_VARIANT_MAP[provider.priceRange];
  const priceLabel = PRICE_RANGE_LABELS[provider.priceRange] ?? provider.priceRange;
  // 特徴は最大3つまで表示
  const displayFeatures = provider.features.slice(0, 3);

  return (
    <div className="flex gap-4 rounded-xl border border-gray-200 bg-white p-4 transition-shadow hover:shadow-md">
      {/* 画像エリア */}
      <div className="shrink-0">
        {provider.images.length > 0 ? (
          <img
            src={provider.images[0]}
            alt={`${provider.name}の画像`}
            className="h-32 w-32 rounded-lg object-cover"
          />
        ) : (
          /* プレースホルダ（画像なし） */
          <div className="flex h-32 w-32 items-center justify-center rounded-lg bg-neutral-200">
            <span className="text-3xl">🏢</span>
          </div>
        )}
      </div>

      {/* 情報エリア */}
      <div className="flex min-w-0 flex-1 flex-col">
        {/* 事業者名 */}
        <h3 className="truncate text-lg font-bold text-gray-900">
          {provider.name}
        </h3>

        {/* 住所 */}
        <p className="mt-1 truncate text-sm text-gray-500">
          {provider.address}
        </p>

        {/* バッジ群（料金帯 + 特徴） */}
        <div className="mt-2 flex flex-wrap gap-1.5">
          <Badge variant={priceVariant}>{priceLabel}</Badge>
          {displayFeatures.map((feature) => (
            <Badge key={feature} variant="default">
              {feature}
            </Badge>
          ))}
        </div>

        {/* 詳細リンクボタン */}
        <div className="mt-3">
          <Link
            href={`/${categorySlug}/detail/${provider.slug}/`}
            className="inline-flex items-center rounded-lg bg-primary-600 px-4 py-2 text-sm font-medium text-white transition-colors hover:bg-primary-700"
          >
            詳細を見る
          </Link>
        </div>
      </div>
    </div>
  );
}
