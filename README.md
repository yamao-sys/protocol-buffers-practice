# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## コマンド類
スキーマからmessageとserviceのコードを自動生成する
```
bundle exec grpc_tools_ruby_protoc -I app/proto --ruby_out=lib --grpc_out=lib app/proto/hello.proto
```

## 所管
次のページを参考に、モノリスのrailsアプリをgRPC × Goのマイクロサービス化することを見越して、protoでスキーマ定義したpackageを作るためのキャッチアップとして行った。

(アプリのエンドポイントしてはapp/controllersで、packageのエントリポイント(各packageのapp/public)とのIFをprotoで行うイメージ)

(目的としては、マイクロサービス化する時の引数の型の見直し・チェックの工数を低減すること)

https://techblog.hacomono.jp/entry/2023/08/22/110000

結構簡単に構築できそうでpackageのI/Oの型安全性を向上が見込めることはわかったけど、以下の点が気になった。

- grpcのgemのインストールがめっちゃ時間かかる。(10分くらい...)
  - ネイティブエクステンションのコンパイルを含むためっぽい → コンパイル済みのgemをインストールするのもありかも。(gem install grpc --platform ruby)
- フロントエンドとrailsのpackageでそれぞれスキーマ定義がいるのが、少し認知不可かかるかも

## 参考
- https://techblog.hacomono.jp/entry/2023/08/22/110000
- https://zenn.dev/nozomi_iida/articles/1022_proto_learning
- https://l-light-note.hatenablog.com/entry/2023/09/12/112234
- https://naokirin.hatenablog.com/entry/2023/03/30/193054
- protoを用いたrailsアプリ
	- https://qiita.com/t0yohei/items/8b04bd427767c8df7465
