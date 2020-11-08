# filenote-app

## 概要

今までに作ったアプリケーションや作品をまとまる事ができ、別ページで簡易的なメモを投稿する事ができる。

## 本番環境

https://filenote-app.herokuapp.com/

## 制作背景

勉強した内容を簡単にまとめたい。

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