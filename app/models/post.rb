class Post < ApplicationRecord
belongs_to :comment
has_many :users
has_many :feelings
has_many :movies
end
