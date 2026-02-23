"use client";

import { useState, useCallback } from "react";
import { useRouter } from "next/navigation";
import type { Category, Area } from "@/lib/data/types";
import { REGION_GROUPS } from "@/lib/constants";
import { mockCities } from "@/lib/mock/areas";

interface ServiceSearchProps {
  categories: Category[];
  prefectures: Area[];
}

/** タブ型統合検索コンポーネント（カテゴリ×エリアの2段階選択） */
export default function ServiceSearch({
  categories,
  prefectures,
}: ServiceSearchProps) {
  const router = useRouter();

  // カテゴリタブ（デフォルト: 葬儀 = インデックス0）
  const [activeCategory, setActiveCategory] = useState(0);
  // 地域タブ（デフォルト: 関東 = インデックス1）
  const [activeRegion, setActiveRegion] = useState(1);
  // 選択中の都道府県
  const [selectedPrefecture, setSelectedPrefecture] = useState<string | null>(
    null
  );
  const [selectedPrefectureName, setSelectedPrefectureName] = useState("");
  // 選択中の市区町村
  const [selectedCity, setSelectedCity] = useState<string | null>(null);
  const [selectedCityName, setSelectedCityName] = useState("");
  // 市区町村リスト（API取得）
  const [cities, setCities] = useState<Area[]>([]);
  const [loadingCities, setLoadingCities] = useState(false);

  /** 都道府県選択 → 市区町村を取得 */
  const handlePrefectureSelect = useCallback(
    async (prefSlug: string, prefName: string) => {
      setSelectedPrefecture(prefSlug);
      setSelectedPrefectureName(prefName);
      setSelectedCity(null);
      setSelectedCityName("");
      setCities([]);
      setLoadingCities(true);

      try {
        const data = mockCities.filter((city) => city.parentSlug === prefSlug);
        setCities(data);
      } catch {
        setCities([]);
      } finally {
        setLoadingCities(false);
      }
    },
    []
  );

  /** 市区町村選択 */
  const handleCitySelect = (citySlug: string, cityName: string) => {
    setSelectedCity(citySlug);
    setSelectedCityName(cityName);
  };

  /** 全域検索（市区町村なしで都道府県のみ） */
  const handleSearchAll = () => {
    setSelectedCity(null);
    setSelectedCityName("");
  };

  /** 検索ボタン */
  const handleSearch = () => {
    if (!selectedPrefecture) return;
    const catSlug = categories[activeCategory]?.slug;
    if (!catSlug) return;

    if (selectedCity) {
      router.push(`/${catSlug}/${selectedPrefecture}/${selectedCity}/`);
    } else {
      router.push(`/${catSlug}/${selectedPrefecture}/`);
    }
  };

  // 現在の地域に属する都道府県を取得
  const currentRegion = REGION_GROUPS[activeRegion];
  const currentPrefectures = prefectures.filter((pref) =>
    (currentRegion.prefectures as readonly string[]).includes(pref.slug)
  );

  // 検索ボタンのラベルを動的に生成
  const currentCategory = categories[activeCategory];
  const searchLabel = selectedCity
    ? `${selectedCityName}の${currentCategory?.providerLabel ?? "事業者"}を検索する`
    : selectedPrefecture
      ? `${selectedPrefectureName}の${currentCategory?.providerLabel ?? "事業者"}を検索する`
      : `エリアを選択してください`;

  return (
    <section className="px-4 py-12 sm:py-16">
      <div className="mx-auto max-w-4xl">
        <h2 className="mb-8 text-center text-2xl font-bold text-gray-900">
          サービスを探す
        </h2>

        <div className="overflow-hidden rounded-2xl border border-gray-200 bg-white shadow-sm">
          {/* カテゴリタブ */}
          <div className="border-b border-gray-200 bg-gray-50">
            <div className="flex flex-wrap">
              {categories.map((cat, index) => (
                <button
                  key={cat.id}
                  type="button"
                  onClick={() => {
                    setActiveCategory(index);
                    // カテゴリ切替時にエリア選択はリセットしない（UX向上）
                  }}
                  className={`flex items-center gap-1.5 px-4 py-3 text-sm font-medium transition-colors sm:px-6 sm:py-4 ${
                    activeCategory === index
                      ? "border-b-2 border-primary-600 bg-white text-primary-700"
                      : "text-gray-600 hover:bg-gray-100 hover:text-gray-900"
                  }`}
                >
                  <span className="text-lg">{cat.icon}</span>
                  <span>{cat.name}</span>
                </button>
              ))}
            </div>
          </div>

          <div className="p-4 sm:p-6">
            {/* ステップ1: エリア選択 */}
            <div>
              <p className="mb-3 text-sm font-medium text-gray-700">
                <span className="mr-2 inline-flex h-5 w-5 items-center justify-center rounded-full bg-primary-600 text-xs font-bold text-white">
                  1
                </span>
                エリアを選択してください
              </p>

              {/* 地域タブ */}
              <div className="mb-3 flex flex-wrap gap-1">
                {REGION_GROUPS.map((region, index) => (
                  <button
                    key={region.name}
                    type="button"
                    onClick={() => {
                      setActiveRegion(index);
                      // 地域切替時は都道府県選択をリセット
                      setSelectedPrefecture(null);
                      setSelectedPrefectureName("");
                      setSelectedCity(null);
                      setSelectedCityName("");
                      setCities([]);
                    }}
                    className={`rounded-full px-3 py-1.5 text-xs font-medium transition-colors sm:text-sm ${
                      activeRegion === index
                        ? "bg-primary-600 text-white"
                        : "bg-gray-100 text-gray-600 hover:bg-primary-100 hover:text-primary-700"
                    }`}
                  >
                    {region.name}
                  </button>
                ))}
              </div>

              {/* 都道府県ボタン */}
              <div className="rounded-lg border border-gray-100 bg-gray-50 p-3">
                <div className="flex flex-wrap gap-2">
                  {currentPrefectures.map((pref) => (
                    <button
                      key={pref.id}
                      type="button"
                      onClick={() =>
                        handlePrefectureSelect(pref.slug, pref.name)
                      }
                      className={`rounded-lg border px-3 py-2 text-sm transition-colors ${
                        selectedPrefecture === pref.slug
                          ? "border-primary-500 bg-primary-50 font-medium text-primary-700"
                          : "border-gray-200 bg-white text-gray-700 hover:border-primary-400 hover:text-primary-700"
                      }`}
                    >
                      {pref.name}
                    </button>
                  ))}
                </div>
              </div>
            </div>

            {/* ステップ2: 市区町村選択（都道府県選択後に表示） */}
            {selectedPrefecture && (
              <div className="mt-6">
                <p className="mb-3 text-sm font-medium text-gray-700">
                  <span className="mr-2 inline-flex h-5 w-5 items-center justify-center rounded-full bg-primary-600 text-xs font-bold text-white">
                    2
                  </span>
                  市区町村を選択してください（{selectedPrefectureName}）
                </p>

                <div className="rounded-lg border border-gray-100 bg-gray-50 p-3">
                  {loadingCities ? (
                    <p className="py-4 text-center text-sm text-gray-500">
                      読み込み中...
                    </p>
                  ) : (
                    <div className="flex flex-wrap gap-2">
                      {/* 全域で検索ボタン */}
                      <button
                        type="button"
                        onClick={handleSearchAll}
                        className={`rounded-lg border px-3 py-2 text-sm font-medium transition-colors ${
                          selectedCity === null
                            ? "border-primary-500 bg-primary-50 text-primary-700"
                            : "border-gray-300 bg-white text-gray-700 hover:border-primary-400 hover:text-primary-700"
                        }`}
                      >
                        {selectedPrefectureName}全域
                      </button>

                      {/* 市区町村ボタン */}
                      {cities.map((city) => (
                        <button
                          key={city.id}
                          type="button"
                          onClick={() =>
                            handleCitySelect(city.slug, city.name)
                          }
                          className={`rounded-lg border px-3 py-2 text-sm transition-colors ${
                            selectedCity === city.slug
                              ? "border-primary-500 bg-primary-50 font-medium text-primary-700"
                              : "border-gray-200 bg-white text-gray-700 hover:border-primary-400 hover:text-primary-700"
                          }`}
                        >
                          {city.name}
                        </button>
                      ))}

                      {cities.length === 0 && !loadingCities && (
                        <p className="py-2 text-sm text-gray-500">
                          ※ この都道府県の市区町村データは準備中です。都道府県全域で検索できます。
                        </p>
                      )}
                    </div>
                  )}
                </div>
              </div>
            )}

            {/* 検索ボタン */}
            <div className="mt-6">
              <button
                type="button"
                onClick={handleSearch}
                disabled={!selectedPrefecture}
                className="w-full rounded-lg bg-primary-600 px-6 py-4 text-base font-bold text-white transition-colors hover:bg-primary-700 disabled:cursor-not-allowed disabled:opacity-40"
              >
                🔍 {searchLabel}
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
