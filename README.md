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

## 編集ポイント

- ページ本文: `/index.html`
- 見た目の調整: `/styles.css`
- 配布ファイル: `/downloads/`
- 過去の募集情報: `/past-recruitment.html`

## 配布ファイルの差し替え

追加募集の応募書類は `/downloads/` に配置し、`index.html` の「2026年度　基礎・応用コース受講生応募書類（追加募集）」内のリンク先を差し替えてください。

現在の通常募集の応募書類は `past-recruitment.html` にまとめています。過去の募集情報として残す書類を変更する場合は、`past-recruitment.html` 内のリンク先も合わせて修正してください。
