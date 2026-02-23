/** 星評価コンポーネント（1〜5段階、半分の星にも対応） */

/** サイズに応じたCSSクラス */
const SIZE_CLASSES = {
  sm: "text-sm",
  md: "text-base",
  lg: "text-lg",
} as const;

interface StarRatingProps {
  /** 評価値（0〜5、0.5刻みを推奨） */
  rating: number;
  /** 星のサイズ */
  size?: "sm" | "md" | "lg";
}

/**
 * 星評価表示コンポーネント
 * - 5段階の星で評価を視覚的に表示
 * - full（塗り）/ half（半分）/ empty（空）の3パターン
 * - accent-warning（黄色系）で表示
 */
export default function StarRating({ rating, size = "md" }: StarRatingProps) {
  // 各星の状態を計算
  const stars = Array.from({ length: 5 }, (_, i) => {
    const position = i + 1;
    if (rating >= position) return "full";
    if (rating >= position - 0.5) return "half";
    return "empty";
  });

  return (
    <span
      className={`inline-flex items-center gap-0.5 ${SIZE_CLASSES[size]}`}
      role="img"
      aria-label={`${rating}点（5点満点）`}
    >
      {stars.map((state, i) => (
        <span key={i} className="relative inline-block">
          {state === "full" && (
            <span className="text-accent-warning">★</span>
          )}
          {state === "half" && (
            <span className="relative">
              {/* 空の星を背景に配置 */}
              <span className="text-gray-300">★</span>
              {/* 半分だけ塗りの星を重ねる */}
              <span className="absolute inset-0 overflow-hidden" style={{ width: "50%" }}>
                <span className="text-accent-warning">★</span>
              </span>
            </span>
          )}
          {state === "empty" && (
            <span className="text-gray-300">★</span>
          )}
        </span>
      ))}
    </span>
  );
}
