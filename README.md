# テーブル設計

## users テーブル

| Column                | Type       | Options                 |
| --------------------- | -------    | ----------------------- |
| nickname              | string     | null: false             |
| email                 | string     | null: false, default:"" |
| password              | string     | null: false, default:"" |

### Association
- has_one :enneagram


## enneagram テーブル

| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| user                  | references | foreign_key: true |
| type_result_id        | integer    |                   |
| perfectionist_sum     | integer    |                   |
| giver_sum             | integer    |                   |
| achiever_sum          | integer    |                   |
| individualist_sum     | integer    |                   |
| investigator_sum      | integer    |                   |
| skeptic_sum           | integer    |                   |
| enthusiast_sum        | integer    |                   |
| challenger_sum        | integer    |                   |
| peacemaker_sum        | integer    |                   |

### Association
- belongs_to :users