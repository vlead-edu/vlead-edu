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

## 配布ファイルの差し替え

現在はサンプルファイルを配置する想定です。実運用時は次のファイルを差し替えてください。

- `downloads/recruitment-guidelines.pdf`
- `downloads/survey-sheet.docx`
- `downloads/teacher-opinion.docx`
- `downloads/student-handbook.pdf`

ファイル名を変更する場合は、`index.html` 内のリンク先も合わせて修正してください。
