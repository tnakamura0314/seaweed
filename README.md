# テーブル設計

## usersテーブル

| Column             | Type   | Options                    |
| ------------------ | ------ | -------------------------- |
| nickname           | string | null: false                |
| email              | string | null: false                |
| encrypted_password | string | null: false                |
| birthday           | date   | null: false                |
| sex_id             | string | null: false, (active_hash) |
| position_id        | string | null: false, (active_hash) |
| household_id       | string | null: false, (active_hash) |

### Association

- has_many :foods


## foodsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| quantity_id      | integer    | null: false, (active_hash)     |
| sell_by_id       | integer    | null: false, (active_hash)     |
| expiration_id    | integer    | null: false, (active_hash)     |
| status           | radio      |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user