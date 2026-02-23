import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // package.jsonで--webpackフラグを使用（Turbopackは日本語パスに未対応）
  images: {
    unoptimized: true,
  },
  trailingSlash: true,
};

export default nextConfig;
