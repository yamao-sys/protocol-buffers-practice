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

## 参考
- https://techblog.hacomono.jp/entry/2023/08/22/110000
- https://zenn.dev/nozomi_iida/articles/1022_proto_learning
- https://l-light-note.hatenablog.com/entry/2023/09/12/112234
- https://naokirin.hatenablog.com/entry/2023/03/30/193054
- protoを用いたrailsアプリ
	- https://qiita.com/t0yohei/items/8b04bd427767c8df7465
