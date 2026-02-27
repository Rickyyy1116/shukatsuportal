import Link from "next/link";
import type { Category } from "@/lib/data/types";

interface CategoryCardsProps {
  categories: Category[];
}

/** カテゴリカード一覧コンポーネント */
export default function CategoryCards({ categories }: CategoryCardsProps) {
  return (
    <section className="px-4 py-12 sm:py-16">
      <div className="mx-auto max-w-6xl">
        <h2 className="mb-8 text-center text-2xl font-bold text-gray-900">
          カテゴリから探す
        </h2>

        <div className="mx-auto grid max-w-2xl grid-cols-2 gap-4 sm:gap-6">
          {categories.map((category) => (
            <Link
              key={category.id}
              href={`/${category.slug}/`}
              className="group flex flex-col items-center rounded-xl border border-primary-200 bg-white p-6 text-center shadow-sm transition-all hover:shadow-lg"
            >
              {/* カテゴリアイコン */}
              <span className="text-4xl" role="img" aria-label={category.name}>
                {category.icon}
              </span>

              {/* カテゴリ名 */}
              <h3 className="mt-3 text-base font-bold text-gray-900 group-hover:text-primary-700">
                {category.name}
              </h3>

              {/* 説明テキスト */}
              <p className="mt-2 text-xs leading-relaxed text-gray-500">
                {category.description}
              </p>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}
