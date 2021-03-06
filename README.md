# Seaweed(シーウィード)
### サスティナブルな世界を目指し、食品廃棄を減らすことを目的とした、食品在庫管理アプリケーション

![image](https://user-images.githubusercontent.com/70365627/112243982-df557b80-8c91-11eb-899f-7181c05330ab.png)
<br>


# 制作背景

### 目的

1人1人のユーザーが食品廃棄ロスの削減を目指し、ご家庭の食材を管理することで、
全ての人が、SDGsへの関心・貢献の意識を持てる社会を目指す。

### 課題

SDGsという言葉は、最近ではニュースなどで頻繁に取り上げられているが、サスティナブル(人間・社会・地球環境の持続可能な発展)を意識して生活している人はごく少数であるという課題。<br>
また、日本における食品ロスの半数近くが家庭から出ているという現状の課題から、1人1人が今日から取り組むことのできる、SDGsの「12. つくる責任、つかう責任持続可能な消費と生産パターンを確保する」という目標にフォーカスした。

### Seaweedの名前の由来

Seaweedとは、海藻という意味の言葉である。
海藻は地球上の約2/3の酸素を、光合成によって生み出してくれていることはご存知だろうか？<br>
私たち一人一人も海藻を見習い、一人一人が「地球環境を守る」という意識を持って欲しいという思いから、この名前をつけた。
<br>

# App URL
### **https://seaweed-34460.herokuapp.com/** 
<br>


# 使用方法

#### `トップページのヘッダーからログイン・新規登録`
#### `ログイン後に、食品管理一覧が表示される`<br>

![Animated GIF-downsized (4)](https://user-images.githubusercontent.com/70365627/112406842-4d647600-8d58-11eb-93fc-83fb170c8f4f.gif)
<br>

#### `右下の「食品追加」ボタンより、食品を追加する`
#### `登録完了後は食品一覧画面に表示される`<br>

![Animated GIF-downsized](https://user-images.githubusercontent.com/70365627/112404842-771b9e00-8d54-11eb-88fb-a877e81f4057.gif)
 <br>
 <br>

#### `食品を消費または廃棄した場合は、該当の食品をクリックし、編集ページから状態を指定する`
#### `状態の指定によって、食品一覧/消費一覧/廃棄一覧ページに食品を移動できる`
#### `登録した食品の削除ができる`<br>

![Animated GIF-downsized (1)](https://user-images.githubusercontent.com/70365627/112405396-864f1b80-8d55-11eb-8e09-c2187a29fff0.gif)
<br>
<br>
![Animated GIF-downsized (2)](https://user-images.githubusercontent.com/70365627/112405707-260ca980-8d56-11eb-92aa-e6a1ebac5f36.gif)
<br>
<br>
  
#### `登録した食品は賞味/消費期限の近い順に並ぶ`
#### `賞味/消費期限の３日前になると青色で表示される`
#### `賞味/消費期限が切れると赤色で表示される`<br>

![image](https://user-images.githubusercontent.com/70365627/112134307-f5225c80-8c0f-11eb-809b-2a66e76e4290.png)
<br>
<br>

#### `買い足す食品をメモに残すことができる`
#### `食品一覧ページの「買い物メモ」ボタンより、買い物メモページに遷移`
#### `メモを投稿することができる`
#### `使い終わったメモをクリックすることで、グレーカラーになり既読にすることができる`<br>

![Animated GIF-downsized (5)](https://user-images.githubusercontent.com/70365627/112410261-42144900-8d5e-11eb-8831-a40292dfa3eb.gif)
<br>
<br>

#  ペルソナ

| 項目                | 内容                                            |
| ------------------ | ----------------------------------------------- |
| 性別と年齢           | 性別は問わず、10代後半〜40代の世代                   |
| 世帯状況             | ジャンルは設定せず、全ての世帯を対象                 |
| 職業                | 職業は設定せず、全ての職業の方を対象                 |
| 趣味                | 食べることや料理が好きで、食品を比較的多く保管している  |
| 価値観              | 小さなことでも、社会貢献がしたいと思っている           |
| 興味                | 何か継続的に取り組めることを探している                |
| 悩み                | 食品の管理ができず、食品を廃棄してしまうことがある      |

#  ユーザーストーリー

| ユーザーストーリーから考える課題                              | 課題解決                                                                                                        |
| ------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| SDGsへの理解・関心が少ないという課題                         | 食品を管理することにより、廃棄ロスを減らしSDGsへの貢献意識が持てるようにする                                                |
| 気がついたら賞味/消費期限が切れてしまっている食品が出るという課題  | 食品を一括管理し、賞味/消費期限が切れる前に消費できるようにする。                                                         |
| スーパーなどの買い物の際に、買いすぎてしまうという課題           | 食品を一括管理し、どの食品があり、何を買い足すべきかが一目でわかるようにする。また、購入する食品をメモに残すことができるようにする    |
| 献立を考えるのが面倒であるという課題                          | おすすめのレシピサイトのリンクを貼り付け、今ある食材から料理を簡単に検索できるようにする。                                      |
| 消費した食材を把握しておくという課題                          | 最近食べた食品を消費一覧ページで管理でき、献立の重複を避けることや、食品を買い足す際の参考にできるようにする。                     |
| どれだけ食品を廃棄しているか把握できていないという課題           | 廃棄した食品を廃棄一覧ページで管理でき、どれだけの食材を廃棄しているかの確認と廃棄ロスを可視化することで削減の意識が持てるようにする。 |


# 機能一覧

| 機能                  | 概要                               |
| -------------------- | --------------------------------- |
| ユーザー管理機能        | 新規登録・ログイン・ログアウトが可能    |
| 食品登録機能           | 画像つきで食品の登録が可能             |
| 食品一覧表示機能        | 各ユーザーの食品一覧が閲覧可能         |
| 食品編集・削除機能      | 投稿者本人のみ食品の編集・削除が可能    |
| 消費した食品一覧表示機能 | 各ユーザーの消費した食品の一覧が閲覧可能 |
| 廃棄した食品一覧表示機能 | 各ユーザーの廃棄した食品の一覧が閲覧可能 |
| 買い物リスト（メモ）機能 | 買い足す食品をメモできる機能           |

# 追加予定機能

- 検索機能
- ソート機能
- PUSH通知機能
- SNSアカウントでのログイン機能
- 食品・レシピの豆知識共有機能
- 食品マイリスト機能


# 開発環境

- VScode
- Ruby 2.6.5
- Rails 6.0.3.5
- mysql2 5.6.50
- gem 3.0.3
- heroku 7.50.0

# DB設計

## usersテーブル

| Column             | Type    | Options                    |
| ------------------ | ------  | -------------------------- |
| nickname           | string  | null: false                |
| email              | string  | null: false, unique:true   |
| encrypted_password | string  | null: false                |
| birthday           | date    | null: false                |
| sex_id             | integer | null: false, (active_hash) |
| position_id        | integer | null: false, (active_hash) |
| household_id       | integer | null: false, (active_hash) |

### Association

- has_many :foods
- has_many :posts
- has_many :recipes


## foodsテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| number      | string     | null: false                    |
| quantity_id | integer    | null: false, (active_hash)     |
| deadline    | date       | null: false                    |
| status      | integer    | (radio_button)                 |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## postsテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| text        | text       |                                |
| checked     | boolean    |                                |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## recipesテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| food_text   | text       | null: false                    |
| recipe_text | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user