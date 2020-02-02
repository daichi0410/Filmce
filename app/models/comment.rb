class Comment < ApplicationRecord
belongs_to :post
belongs_to :movie
has_many :users
has_many :feelings
end
