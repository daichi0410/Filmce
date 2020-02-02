class Feeling < ApplicationRecord
belongs_to :post
belongs_to :comment
has_many :user_feelings
has_many :users, through: :user_feelings
has_many :feeling_movies
has_many :movies, through: :feeling_movies
end
