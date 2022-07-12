# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| introduction       | string | null: false |

## アソシエーション

has_many :diaries
has_many :comments

## diary テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| explanation   | text       | null: false                    |

## アソシエーション

belongs_to :user
has_many :comments


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| diary   | references | null: false, foreign_key: true |

## アソシエーション

belongs_to :user
belongs_to :diary