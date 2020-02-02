class Movie < ApplicationRecord
belongs_to :post
belongs_to :comment
has_many :user_movies
has_many :users, through: :user_movies
has_many :feeling_movies
has_many :feelings, through: :feeling_movies
end
