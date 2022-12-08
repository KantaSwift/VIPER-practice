# VIPER-practice
## 概要
本プロジェクトは[RPGStudyApp](https://github.com/KantaSwift/RPGStudyApp.git)で使用するVIPERアーキテクチャについて理解を深めるために練習するプロジェクトになっている。
## アプリ仕様
本アプリはGithubのリポジトリーを検索するアプリです。
### 環境
- IDE : 基本最新の安定版(本概要更新時点ではXcode )
- Swift: 基本最新の安定版(本概要更新時点ではSwift)
- 開発ターゲット: 基本最新の安定版(本概要更新時点ではiOS 16.0)
### 動作
1. 何かしらのキーワードを入力
2. Github APIを使ってリポジトリーを検索し、結果一覧を概要(リポジトリ名)で表示
3. 特定の結果を選択したら、該当リポジトリの詳細(リポジトリ名、オーナーアイコン、プロジェクト言語、Star数、Fork数、Issue数)を表示
### ブランチ
練習用アプリというのもあり、mainとdevelopブランチのみで開発。本当はXcodeGenを学習して謎のコンフリクトを防ぎたいが、コストがなかなかかかるので今回のみこのような形で開発を行う。
## 使用ライブラリ
snapkit
## アーキテクチャ
VIPER
