■ 画面遷移図
https://www.figma.com/design/uCwxo2gTmsbj3ZzZxnH5O6/Diary-Application?node-id=0-1&t=eDly5tGJKtBEKPuJ-1

### README に記載した機能

- [✓] ユーザー登録機能
- [✓] ログイン機能
- [✓] 記事投稿機能（画像投稿含む）
- [✓] 記事閲覧機能
- [✓] 記事編集機能
- [✓] 記事削除機能
- [✓] 記事検索機能
- [✓] 記事並べ替え機能
- [✓] コメント投稿機能
- [✓] コメント閲覧機能
- [✓] コメント編集機能
- [✓] コメント削除機能
- [✓] タグ投稿機能
- [✓] お気に入り機能
- [✓] お気に入り解除機能

### 各画面の作り込み

画面遷移だけでなく、必要なボタンやフォームが確認できるくらい作り込めているか？

- [✓] 作り込みはある程度完了している（Figma を見て画面の作成ができる状態にある）

■ サービス概要
短い文章や画像などを投稿できる日記投稿アプリケーション。
日記を家族や友達と共有し、コメントやイイねを送りあう SNS 的な要素を持つ。
また、自分だけの非公開日記なども作成することができる。

■ このサービスへの思い・作りたい理由
ランテックに入学してから、学習記録を書いていたが、その時つまずいたことや、感じたくだらない思いなども
記録していれば、学習するモチベーションにつながると思った。
また、日記を書きたい気持ちはあるが、ついつい三日坊主になってしまう自身の正確から、
日記を家族や友達と共有する楽しみがあれば続けることができると思った。

■ ユーザー層について
ファーストターゲットは自己管理やメンタルケアに関心がある 20 代～ 30 代の女性とする。
自己成長につなげるため、日々の出来事や反省点などを記録するツールを求めている方が多い印象。
また、若い女性はメンタルの浮き沈みが有る為、感情管理やストレス解消の一環として日記を書いている方が多い。

■ サービスの利用イメージ
毎日の記録を日記という形で残しておくことで、後から出来事を振り返ることができ、一つのアルバムになる。
また、それを身近な人間と共有することでモチベーションの向上や、コミュニケーションの場となると考える。

■ ユーザーの獲得について
難易度などは不明だが、Twitter や他の SNS とアカウントを紐づけることができたら、
若者に届けられる可能性があると考える。

■ サービスの差別化ポイント・推しポイント
つぶやきを投稿するようなアプリケーションはたくさん存在するが、今回のアプリでは日記という前提を
押しポイントとする。日記とすることで、より親密なコミュニケーションの向上が図れると考える。
また、日記的な要素を含んでいるため、感情タグ（喜怒哀楽）で日記を分類したり、
日記の振り返り機能で過去の投稿が自動的に表示されるような機能がある。

■ 機能候補
ログイン機能
投稿機能（編集、削除なども含む）
投稿一覧機能
投稿検索機能
投稿並べ替え機能（日付新旧）
コメント機能
いいね機能
タグ機能
通知機能

■ 機能の実装方針予定
ログイン機能: OAuth や JWT を使って認証を行う
