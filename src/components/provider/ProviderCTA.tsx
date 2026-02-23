"use client";

/** 事業者CTA（電話相談・資料請求）固定バーコンポーネント */

import Link from "next/link";
import type { Provider } from "@/lib/data/types";

interface ProviderCTAProps {
  /** 事業者データ */
  provider: Provider;
  /** カテゴリスラッグ */
  categorySlug: string;
}

/**
 * 画面下部固定のCTAバー
 * - 左: 電話で相談ボタン（tel:リンク）
 * - 右: 無料で資料請求ボタン（問い合わせページへ）
 * - モバイルで2ボタン横並び
 * - Client Component（固定表示のためCSR）
 */
export default function ProviderCTA({ provider, categorySlug }: ProviderCTAProps) {
  return (
    <div className="fixed bottom-0 left-0 right-0 z-50 border-t border-gray-200 bg-white shadow-2xl">
      <div className="mx-auto flex max-w-3xl items-center gap-3 px-4 py-3">
        {/* 電話で相談ボタン */}
        <a
          href={`tel:${provider.phone}`}
          className="flex flex-1 items-center justify-center gap-2 rounded-lg bg-primary-600 px-4 py-3 text-sm font-bold text-white transition-colors hover:bg-primary-700"
        >
          <svg
            className="h-4 w-4"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 002.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 01-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 00-1.091-.852H4.5A2.25 2.25 0 002.25 4.5v2.25z"
            />
          </svg>
          電話で相談 {provider.phone}
        </a>

        {/* 無料で資料請求ボタン */}
        <Link
          href={`/inquiry?provider=${provider.slug}`}
          className="flex flex-1 items-center justify-center gap-2 rounded-lg bg-accent-warning px-4 py-3 text-sm font-bold text-white transition-colors hover:opacity-90"
        >
          <svg
            className="h-4 w-4"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M19.5 14.25v-2.625a3.375 3.375 0 00-3.375-3.375h-1.5A1.125 1.125 0 0113.5 7.125v-1.5a3.375 3.375 0 00-3.375-3.375H8.25m0 12.75h7.5m-7.5 3H12M10.5 2.25H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 00-9-9z"
            />
          </svg>
          無料で資料請求
        </Link>
      </div>
    </div>
  );
}
