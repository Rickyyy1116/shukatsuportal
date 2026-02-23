"use client";

import { useState } from "react";
import Link from "next/link";

/** ナビゲーションリンク定義 */
const NAV_LINKS = [
  { label: "葬儀", href: "/sougi/" },
  { label: "お墓", href: "/ohaka/" },
  { label: "介護", href: "/kaigo/" },
  { label: "相続", href: "/souzoku/" },
  { label: "遺品整理", href: "/ihinseiri/" },
  { label: "保険", href: "/hoken/" },
] as const;

/** サイト共通ヘッダーコンポーネント */
export default function Header() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  return (
    <header className="sticky top-0 z-50 bg-white border-b border-gray-200">
      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="flex h-16 items-center justify-between">
          {/* ロゴ */}
          <Link href="/" className="flex items-center gap-2">
            <span className="text-xl font-bold text-primary-700">
              安心終活ナビ
            </span>
          </Link>

          {/* デスクトップナビ */}
          <nav className="hidden md:flex md:items-center md:gap-1">
            {NAV_LINKS.map((link) => (
              <Link
                key={link.href}
                href={link.href}
                className="rounded-md px-3 py-2 text-sm font-medium text-gray-700 transition-colors hover:bg-primary-50 hover:text-primary-700"
              >
                {link.label}
              </Link>
            ))}
          </nav>

          {/* 無料相談ボタン（デスクトップ） */}
          <div className="hidden md:block">
            <Link
              href="/inquiry/"
              className="inline-flex items-center rounded-full bg-primary-600 px-5 py-2 text-sm font-medium text-white transition-colors hover:bg-primary-700"
            >
              無料相談
            </Link>
          </div>

          {/* ハンバーガーメニューボタン（モバイル） */}
          <button
            type="button"
            className="inline-flex items-center justify-center rounded-md p-2 text-gray-700 md:hidden"
            onClick={() => setIsMenuOpen(!isMenuOpen)}
            aria-expanded={isMenuOpen}
            aria-label="メニューを開く"
          >
            {isMenuOpen ? (
              /* 閉じるアイコン */
              <svg
                className="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={2}
                stroke="currentColor"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            ) : (
              /* ハンバーガーアイコン */
              <svg
                className="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={2}
                stroke="currentColor"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
                />
              </svg>
            )}
          </button>
        </div>
      </div>

      {/* モバイルメニュー */}
      {isMenuOpen && (
        <div className="border-t border-gray-200 md:hidden">
          <nav className="space-y-1 px-4 py-3">
            {NAV_LINKS.map((link) => (
              <Link
                key={link.href}
                href={link.href}
                className="block rounded-md px-3 py-2 text-base font-medium text-gray-700 transition-colors hover:bg-primary-50 hover:text-primary-700"
                onClick={() => setIsMenuOpen(false)}
              >
                {link.label}
              </Link>
            ))}
            <Link
              href="/inquiry/"
              className="mt-2 block rounded-full bg-primary-600 px-4 py-2 text-center text-base font-medium text-white transition-colors hover:bg-primary-700"
              onClick={() => setIsMenuOpen(false)}
            >
              無料相談
            </Link>
          </nav>
        </div>
      )}
    </header>
  );
}
