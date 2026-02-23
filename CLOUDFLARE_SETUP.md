# Cloudflare Workers Setup

対象リポジトリ:
- `https://github.com/Rickyyy1116/shukatsuportal`

目的:
- openclaw / このPC のどちらで開発しても、GitHubにpushすれば同じCloudflare環境で確認できる状態を作る

## 1. Cloudflare API Token

Cloudflare Dashboard > My Profile > API Tokens > Create Token

推奨権限:
- Account: `Workers Scripts:Edit`
- Account: `Workers Routes:Edit`
- Account: `Account Settings:Read`
- Zone: `Zone:Read`（対象ドメインゾーン）
- Zone: `DNS:Edit`（対象ドメインゾーン、カスタムドメイン設定時）

## 2. Account ID確認

Cloudflare Dashboard右サイドバーの `Account ID` を控える。

## 3. GitHub Secrets設定

`Settings > Secrets and variables > Actions` に以下を追加:

- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_ACCOUNT_ID`

## 4. デプロイ実行

- `main` へpush（推奨）
- もしくは Actions の `Deploy to Cloudflare Workers` を手動実行

成功すると、OpenNextで生成されたWorkerが更新される。

## 5. カスタムドメイン

`portal.shukatsu-ansin.com` をWorkerに割り当てる。

手順例:
1. Cloudflare Dashboard > Workers & Pages > `shukatsuportal`
2. Domains & Routes > Add route
3. Route: `portal.shukatsu-ansin.com/*`
4. Zoneを選択して保存

## 6. 運用ルール（推奨）

- `main` を本番ブランチに固定
- openclaw側/このPC側ともに `feature/*` -> PR -> `main` マージ
- 本番確認URLは常にCloudflare側を使う（ローカル差異を避ける）
