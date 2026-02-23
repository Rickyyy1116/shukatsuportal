import type { NextConfig } from "next";

const isGithubActions = process.env.GITHUB_ACTIONS === "true";
const repositoryName = process.env.GITHUB_REPOSITORY?.split("/")[1] ?? "";
const isUserOrOrgPages = repositoryName.endsWith(".github.io");
const basePath =
  isGithubActions && repositoryName && !isUserOrOrgPages
    ? `/${repositoryName}`
    : "";

const nextConfig: NextConfig = {
  // package.jsonで--webpackフラグを使用（Turbopackは日本語パスに未対応）
  output: "export",
  images: {
    unoptimized: true,
  },
  trailingSlash: true,
  basePath,
  assetPrefix: basePath || undefined,
};

export default nextConfig;
