/** バッジコンポーネント（カテゴリ・料金帯・特徴などの表示用） */

import type { ReactNode } from "react";

/** バリアントごとの色定義 */
const VARIANT_CLASSES = {
  default: "bg-gray-100 text-gray-700",
  primary: "bg-primary-100 text-primary-800",
  "price-low": "bg-blue-100 text-blue-700",
  "price-mid": "bg-gray-100 text-gray-700",
  "price-high": "bg-orange-100 text-orange-700",
} as const;

interface BadgeProps {
  children: ReactNode;
  /** バッジの表示パターン */
  variant?: keyof typeof VARIANT_CLASSES;
}

/**
 * 汎用バッジコンポーネント
 * - rounded-full のピル形状
 * - 料金帯やカテゴリの識別に使用
 */
export default function Badge({ children, variant = "default" }: BadgeProps) {
  return (
    <span
      className={`inline-block rounded-full px-3 py-1 text-xs font-medium ${VARIANT_CLASSES[variant]}`}
    >
      {children}
    </span>
  );
}
