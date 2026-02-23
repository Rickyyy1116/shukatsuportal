# Shukatsu Portal

終活サービス比較ポータル（Next.js, Static Export）です。

## Local Development

```bash
npm ci
npm run dev
```

## Build

```bash
npm run build
```

ビルド成果物は `out/` に出力されます。

## Cloudflare Pages Deployment (GitHub Actions)

このリポジトリには `main` push時に Cloudflare Pages へデプロイするWorkflowを追加済みです。

Workflow:
- `.github/workflows/deploy-cloudflare-pages.yml`

### 1. Cloudflare側でPagesプロジェクトを作成

Cloudflare Dashboardで Pages プロジェクトを作成してください。

- Project name 例: `shukatsuportal`
- Production branch: `main`

※ Git連携は不要です（この構成ではGitHub Actions経由で直接deployします）。

### 2. GitHub Secretsを設定

GitHubリポジトリ `Settings > Secrets and variables > Actions` に以下を追加します。

- `CLOUDFLARE_API_TOKEN`
  - Cloudflare API Token（権限: Pages Edit + Account Read 推奨）
- `CLOUDFLARE_ACCOUNT_ID`
  - Cloudflare account id
- `CLOUDFLARE_PAGES_PROJECT`
  - Cloudflare Pages project name（例: `shukatsuportal`）

### 3. デプロイ実行

- `main` にpushすると自動デプロイ
- もしくは `Actions > Deploy to Cloudflare Pages > Run workflow`

### 4. 補足

現在、GitHub Pages用Workflowも存在します。
Cloudflare運用に一本化する場合は次を無効化または削除してください。

- `.github/workflows/deploy-pages.yml`

## Cloudflare Detailed Setup

- `CLOUDFLARE_SETUP.md`
