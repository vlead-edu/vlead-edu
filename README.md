# GitHub Pages 用 受講生募集ページ

GitHub Pages で公開する受講生募集ページです。`main` ブランチに push すると GitHub Actions 経由で自動デプロイされます。

## 含まれる機能

- 受講生募集の概要掲載
- PDF ファイルのダウンロード
- Word ファイルのダウンロード

## 公開方法

1. この内容を GitHub リポジトリの `main` ブランチに push します。
2. GitHub の `Actions` タブで `Deploy GitHub Pages` が成功することを確認します。
3. 初回のみ、`Settings` -> `Pages` の `Build and deployment` で `Source` が `GitHub Actions` になっていることを確認します。
4. 公開 URL は `https://vlead-edu.github.io/vlead-edu/` です。

## 追加募集ページの事前確認

本番公開は現在の GitHub Pages のままとし、公開日前の確認は認証付きプレビュー環境で行います。

詳しい手順は `/docs/private-preview.md` を参照してください。推奨する運用は次の流れです。

1. 追加募集の修正を `main` ではなく作業ブランチで行います。
2. Netlify、Vercel、Cloudflare Pages などのプレビュー環境に接続し、プレビュー URL を発行します。
3. プレビュー環境側でパスワード保護、チームログイン、メールドメイン制限などを設定します。
4. 関係者確認が完了したら、公開日に `main` へ merge して GitHub Pages に反映します。

URL を共有しない、`robots.txt` で隠す、`noindex` を付ける、といった方法はアクセス制御ではないため、公開日前確認には使わないでください。

## 編集ポイント

- ページ本文: `/index.html`
- 見た目の調整: `/styles.css`
- 配布ファイル: `/downloads/`
- 過去の募集情報: `/past-recruitment.html`
- 確認用 private repo への同期: `/scripts/export-preview-site.sh`

## 配布ファイルの差し替え

追加募集の応募書類は `/downloads/` に配置し、`index.html` の「追加募集 受講生応募書類」内のリンク先を差し替えてください。

現在の通常募集の応募書類は `past-recruitment.html` にまとめています。過去の募集情報として残す書類を変更する場合は、`past-recruitment.html` 内のリンク先も合わせて修正してください。
