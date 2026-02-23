# Shukatsu Portal

終活サービス比較ポータル（Next.js App Router）です。

本番運用は `Cloudflare Workers + OpenNext` 前提です。

## Local Development

```bash
npm ci --legacy-peer-deps
npm run dev
```

## Workers Build / Preview / Deploy

```bash
npm run build:worker
npm run preview:worker
npm run deploy:worker
```

## CI/CD (GitHub -> Cloudflare Workers)

Workflow:
- `.github/workflows/deploy-cloudflare-workers.yml`
  - `main` pushで自動デプロイ
  - `workflow_dispatch` で手動実行

必要なGitHub Secrets:
- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_ACCOUNT_ID`

詳細手順:
- `CLOUDFLARE_SETUP.md`
