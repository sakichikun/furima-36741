# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| encrypted_password    | string | null: false |
| name_kanji            | string | null: false |
| name_katakana         | string | null: false |
| birthday              | data   | null: false |

### Association

- has_many :items
- has_one :card

## items テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| text       | text       | null: false                    |
| category   | string     | null: false                    |
| condition  | string     | null: false                    |
| burden     | string     | null: false                    |
| area       | string     | null: false                    |
| days       | string     | null: false                    |
| price      | string     | null: false                    |
| user       | references | null: false, foreign_key: true |
| card       | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :card

## cards テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| number    | integer    | null: false                    |
| date      | date       | null: false                    |
| cord      | integer    | null: false                    |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :items
- has_one :address

## addresses テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| postal_code           | string     | null: false                    |
| prefecture            | string     | null: false                    |
| city                  | string     | null: false                    |
| house_number          | string     | null: false                    |
| building              | string     | null: false                    |
| phone_number          | integer    | null: false                    |
| card                  | references | null: false, foreign_key: true |

### Association
- belongs_to :card