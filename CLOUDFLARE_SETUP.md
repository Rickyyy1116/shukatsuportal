# Cloudflare Environment Setup

対象リポジトリ:
- `https://github.com/Rickyyy1116/shukatsuportal`

対象ドメイン:
- `portal.shukatsu-ansin.com`

## 1. Cloudflare Pagesプロジェクト作成

Cloudflare Dashboard > Workers & Pages > Create application > Pages から作成。

- Project name: `shukatsuportal`（任意だがGitHub Secretと一致させる）
- Production branch: `main`
- Build command / Output directory は使わない（GitHub Actionsで `out/` を直接deploy）

## 2. Cloudflare API Token作成

Cloudflare Dashboard > My Profile > API Tokens > Create Token。

推奨権限:
- Account: `Cloudflare Pages:Edit`
- Account: `Account Settings:Read`

発行後、Token文字列を控える。

## 3. Account ID確認

Cloudflare Dashboard右サイドバーの `Account ID` を控える。

## 4. GitHub Secrets設定

GitHub `Rickyyy1116/shukatsuportal` の
`Settings > Secrets and variables > Actions > New repository secret` で以下を登録。

- `CLOUDFLARE_API_TOKEN` = 手順2のToken
- `CLOUDFLARE_ACCOUNT_ID` = 手順3のAccount ID
- `CLOUDFLARE_PAGES_PROJECT` = `shukatsuportal`（Project name）

## 5. デプロイ実行

- `main` へpush
- または `Actions > Deploy to Cloudflare Pages > Run workflow`

成功時は Cloudflare Pages の `*.pages.dev` URL が更新される。

## 6. カスタムドメイン設定（portal.shukatsu-ansin.com）

Cloudflare Pages Project > Custom domains > Set up a custom domain。

- Domain: `portal.shukatsu-ansin.com`
- DNSがCloudflare管理であれば自動でCNAMEが作成される
- SSL/TLS が `Active` になるまで待つ

## 7. 運用メモ

- このリポジトリには GitHub Pages Workflow も残っている
- Cloudflare一本化するなら `.github/workflows/deploy-pages.yml` は無効化または削除する
- 失敗時はActionsログで `Missing secret: ...` 表示を確認する
