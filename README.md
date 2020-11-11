# filenote-app
<img width="500" alt="スクリーンショット 2020-11-11 23 20 01" src="https://user-images.githubusercontent.com/71426314/98845129-9ba36780-2490-11eb-90cd-acc641b7f6a6.png">

## 概要

今までに作ったアプリケーションや参考にしたい作品をまとまる事ができ、別ページで簡易的なメモを投稿する事ができる。

## 本番環境

https://filenote-app.herokuapp.com/

### テストアカウント

- email：sample@sample.com
- password：radish12

## 制作背景

プログラミングで学習した内容を簡単にまとめたい。

## DEMO

## 開発環境

Html/CSS/Ruby/Ruby on Rails/Jquery




# DB設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :filenotes
- has_many :works

## filenotes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| memo   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## works テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| app_name | string     | null: false                    |
| url      | string     | null: false                    |
| text     | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
