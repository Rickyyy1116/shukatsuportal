import Link from "next/link";

/** パンくずリストのアイテム型 */
interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbProps {
  items: BreadcrumbItem[];
}

/** パンくずリストコンポーネント（Schema.org構造化データ付き） */
export default function Breadcrumb({ items }: BreadcrumbProps) {
  // Schema.org BreadcrumbList 構造化データ
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: items.map((item, index) => ({
      "@type": "ListItem",
      position: index + 1,
      name: item.label,
      ...(item.href ? { item: `https://portal.shukatsu-ansin.com${item.href}` } : {}),
    })),
  };

  return (
    <>
      {/* JSON-LD構造化データ */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      {/* パンくずリストUI */}
      <nav aria-label="パンくずリスト" className="py-3">
        <ol className="flex flex-wrap items-center gap-1 text-sm text-gray-500">
          {items.map((item, index) => {
            const isLast = index === items.length - 1;

            return (
              <li key={index} className="flex items-center gap-1">
                {/* 区切り文字（先頭以外） */}
                {index > 0 && (
                  <span className="mx-1 text-gray-400" aria-hidden="true">
                    &gt;
                  </span>
                )}

                {/* リンクまたはテキスト */}
                {item.href && !isLast ? (
                  <Link
                    href={item.href}
                    className="text-primary-600 transition-colors hover:text-primary-800 hover:underline"
                  >
                    {item.label}
                  </Link>
                ) : (
                  <span className="text-gray-700" aria-current={isLast ? "page" : undefined}>
                    {item.label}
                  </span>
                )}
              </li>
            );
          })}
        </ol>
      </nav>
    </>
  );
}
