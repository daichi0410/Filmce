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

# Filmce DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :posts
- has_many :comments
- has_many :users_movies
- has_many :movies, through: :users_movies
- has_many :users_feelings
- has_many :feelings, through: :users_feelings

## users_feelingsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|feeling_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :feeling

## users_moviesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :movie

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|feeling_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :comment
- has_many :users
- has_many :feelings
- has_many :movies

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|feelings_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :movie
- has_many :users
- has_many :feelings

## moviesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|feelings_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :comment
- has_many :users_movies
- has_many :users, through: :users_movies
- has_many :feelings_movies
- has_many :feelings, through: :feelings_movies

## feelingsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :comment
- has_many :users_feelings
- has_many :users, through: :users_feelings
- has_many :feelings_movies
- has_many :movies, through: :feelings_movies

## feelings_moviesテーブル
|Column|Type|Options|
|------|----|-------|
|feeling_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :feeling
- belongs_to :movie




