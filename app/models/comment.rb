class Comment < ApplicationRecord
  belongs_to :movie  # tweetsテーブルとのアソシエーション
  belongs_to :user
end