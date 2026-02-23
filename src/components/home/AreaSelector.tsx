"use client";

import { useState } from "react";
import Link from "next/link";
import { REGION_GROUPS } from "@/lib/constants";
import { mockPrefectures } from "@/lib/mock/areas";

/** エリア選択タブコンポーネント */
export default function AreaSelector() {
  // デフォルトで「関東」を選択（インデックス1）
  const [activeRegion, setActiveRegion] = useState(1);

  /** 選択中のリージョンに属する都道府県を取得 */
  const currentRegion = REGION_GROUPS[activeRegion];
  const currentPrefectures = mockPrefectures.filter((pref) =>
    (currentRegion.prefectures as readonly string[]).includes(pref.slug)
  );

  return (
    <section className="px-4 py-12 sm:py-16">
      <div className="mx-auto max-w-4xl">
        <h2 className="mb-8 text-center text-2xl font-bold text-gray-900">
          エリアから探す
        </h2>

        {/* 地域タブ */}
        <div className="flex flex-wrap justify-center gap-1 sm:gap-2">
          {REGION_GROUPS.map((region, index) => (
            <button
              key={region.name}
              type="button"
              onClick={() => setActiveRegion(index)}
              className={`rounded-full px-4 py-2 text-sm font-medium transition-colors ${
                activeRegion === index
                  ? "bg-primary-600 text-white"
                  : "bg-gray-100 text-gray-700 hover:bg-primary-100 hover:text-primary-700"
              }`}
            >
              {region.name}
            </button>
          ))}
        </div>

        {/* 都道府県リスト */}
        <div className="mt-6 rounded-xl border border-gray-200 bg-white p-6">
          <div className="flex flex-wrap gap-3">
            {currentPrefectures.map((pref) => (
              <Link
                key={pref.id}
                href={`/sougi/${pref.slug}/`}
                className="rounded-lg border border-gray-200 px-4 py-2 text-sm text-gray-700 transition-colors hover:border-primary-400 hover:bg-primary-50 hover:text-primary-700"
              >
                {pref.name}
              </Link>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
