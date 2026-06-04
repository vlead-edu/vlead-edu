# 追加募集ページの公開前確認手順

追加募集ページと応募書類を公開日前に関係者だけで確認するための運用手順です。

## 方針

- 本番公開は現在の GitHub Pages を使います。
- 公開前確認は、別に作成した private repo と認証付きプレビュー環境で行います。
- 追加募集の内容や書類は、公開日まで public repo に push しません。
- `robots.txt`、`noindex`、非公開風の URL、リンクを貼らない運用はアクセス制御として使いません。

## 1. 確認用 private repo を作成する

GitHub で確認用の private repo を作成します。

推奨名:

```text
vlead-edu-preview
```

設定:

- Visibility: Private
- README: なし、または任意
- Pages: 使わない

関係者全員を GitHub repo に招待する必要はありません。Netlify、Vercel、Cloudflare Pages などのプレビュー URL と認証で確認してもらう想定です。

## 2. 確認用 repo にサイトを配置する

この repo の次のファイルとディレクトリを確認用 private repo にコピーします。

```text
index.html
past-recruitment.html
styles.css
robots.txt
assets/
downloads/
```

スクリプトで同期する場合:

```sh
./scripts/export-preview-site.sh ../vlead-edu-preview
```

追加募集の応募書類は `downloads/` に置き、`index.html` の「追加募集 受講生応募書類」のリンクを実ファイルに差し替えます。

## 3. 認証付きプレビュー環境を設定する

どれか 1 つを選びます。

### Netlify

- private repo を Netlify に接続します。
- Site settings で password protection または team login protection を有効にします。
- 確認用 URL とパスワードを関係者に共有します。

### Vercel

- private repo を Vercel に接続します。
- Deployment Protection を有効にします。
- 関係者が Vercel アカウントを使える場合は Vercel Authentication、そうでなければ password protection を使います。

### Cloudflare Pages

- private repo を Cloudflare Pages に接続します。
- Cloudflare Access で対象ドメインまたはプレビュー URL を保護します。
- メールアドレス、メールドメイン、Google Workspace などで許可対象を制限します。

## 4. 関係者に確認依頼を送る

共有するもの:

- 確認用 URL
- パスワードまたはログイン方法
- 確認期限
- 修正依頼の連絡先
- 確認してほしい項目

確認項目の例:

- 募集名、対象、応募資格
- 募集期間、締切日、提出先
- PDF / Word の内容
- ダウンロードできるか
- 問い合わせ先
- スマートフォンで読みにくい箇所がないか

## 5. 公開日に本番 repo へ反映する

関係者確認が完了したら、公開日に次を本番 repo の `main` に反映します。

- `index.html`
- `past-recruitment.html`
- `styles.css`
- 追加募集の応募書類

`main` に push すると GitHub Actions により GitHub Pages へ自動公開されます。

## 関係者向け依頼文テンプレート

```text
V-LEAD 追加募集ページの公開前確認をお願いします。

確認用 URL:
（ここに URL）

閲覧方法:
（パスワードまたはログイン方法）

確認期限:
（日付）

確認していただきたい点:
- 募集名、対象、応募資格に誤りがないか
- 募集期間、締切日、提出先に誤りがないか
- PDF / Word の内容に誤りがないか
- 各書類をダウンロードできるか
- 問い合わせ先に誤りがないか

修正依頼は以下へお送りください。
（連絡先）
```
