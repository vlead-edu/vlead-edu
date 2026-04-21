# GitHub Pages 用 受講生募集ページ

GitHub Pages で公開できる、受講生募集ページの最小構成です。

## 含まれる機能

- 受講生募集の概要掲載
- PDF ファイルのダウンロード
- Word ファイルのダウンロード

## 公開方法

1. この内容を GitHub リポジトリに push します。
2. GitHub の `Settings` -> `Pages` で、公開元を対象ブランチの `/ (root)` に設定します。
3. 数分後に GitHub Pages の URL で公開されます。

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
