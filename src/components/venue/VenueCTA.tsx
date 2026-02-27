"use client";

/** 斎場CTA固定バー — 電話番号なし、見積もりフォームへ誘導 */

import Link from "next/link";
import type { Venue } from "@/lib/data/types";

interface VenueCTAProps {
  venue: Venue;
}

export default function VenueCTA({ venue }: VenueCTAProps) {
  return (
    <div className="fixed bottom-0 left-0 right-0 z-50 border-t border-gray-200 bg-white shadow-2xl">
      <div className="mx-auto flex max-w-3xl items-center gap-3 px-4 py-3">
        {/* 無料見積もりボタン（フル幅） */}
        <Link
          href={`/estimate?venue=${venue.slug}`}
          className="flex flex-1 items-center justify-center gap-2 rounded-lg bg-accent-warning px-6 py-3.5 text-base font-bold text-white transition-colors hover:opacity-90"
        >
          <svg
            className="h-5 w-5"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M9 12h3.75M9 15h3.75M9 18h3.75m3 .75H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08m-5.801 0c-.065.21-.1.433-.1.664 0 .414.336.75.75.75h4.5a.75.75 0 00.75-.75 2.25 2.25 0 00-.1-.664m-5.8 0A2.251 2.251 0 0113.5 2.25H15c1.012 0 1.867.668 2.15 1.586m-5.8 0c-.376.023-.75.05-1.124.08C9.095 4.01 8.25 4.973 8.25 6.108V8.25m0 0H4.875c-.621 0-1.125.504-1.125 1.125v11.25c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V9.375c0-.621-.504-1.125-1.125-1.125H8.25z"
            />
          </svg>
          無料見積もり
        </Link>
      </div>
    </div>
  );
}
