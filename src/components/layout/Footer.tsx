import Link from "next/link";

/** カテゴリリンク */
const CATEGORY_LINKS = [
  { label: "葬儀", href: "/sougi/" },
  { label: "お墓", href: "/ohaka/" },
  { label: "介護", href: "/kaigo/" },
  { label: "相続", href: "/souzoku/" },
  { label: "遺品整理", href: "/ihinseiri/" },
  { label: "保険", href: "/hoken/" },
] as const;

/** エリアリンク（関東の都道府県） */
const AREA_LINKS = [
  { label: "東京都", href: "/sougi/tokyo/" },
  { label: "神奈川県", href: "/sougi/kanagawa/" },
  { label: "埼玉県", href: "/sougi/saitama/" },
  { label: "千葉県", href: "/sougi/chiba/" },
  { label: "茨城県", href: "/sougi/ibaraki/" },
  { label: "栃木県", href: "/sougi/tochigi/" },
  { label: "群馬県", href: "/sougi/gunma/" },
] as const;

/** サイト共通フッターコンポーネント */
export default function Footer() {
  return (
    <footer className="bg-primary-900 text-white">
      <div className="mx-auto max-w-7xl px-4 py-12 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 gap-8 md:grid-cols-3">
          {/* カテゴリリンク */}
          <div>
            <h3 className="mb-4 text-lg font-bold">カテゴリ</h3>
            <ul className="space-y-2">
              {CATEGORY_LINKS.map((link) => (
                <li key={link.href}>
                  <Link
                    href={link.href}
                    className="text-sm text-primary-200 transition-colors hover:text-white"
                  >
                    {link.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* エリアリンク */}
          <div>
            <h3 className="mb-4 text-lg font-bold">エリア（関東）</h3>
            <ul className="space-y-2">
              {AREA_LINKS.map((link) => (
                <li key={link.href}>
                  <Link
                    href={link.href}
                    className="text-sm text-primary-200 transition-colors hover:text-white"
                  >
                    {link.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* サイト情報 */}
          <div>
            <h3 className="mb-4 text-lg font-bold">サイト情報</h3>
            <div className="space-y-2 text-sm text-primary-200">
              <p className="font-medium text-white">安心終活ナビ</p>
              <p>運営: 株式会社Nexa</p>
              <p>
                <a
                  href="https://shukatsu-ansin.com"
                  className="underline transition-colors hover:text-white"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  shukatsu-ansin.com
                </a>
              </p>
            </div>
          </div>
        </div>

        {/* コピーライト */}
        <div className="mt-10 border-t border-primary-700 pt-6 text-center text-sm text-primary-300">
          &copy; 2026 安心終活ナビ All rights reserved.
        </div>
      </div>
    </footer>
  );
}
