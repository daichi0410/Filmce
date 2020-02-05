class Feeling < ApplicationRecord
has_many :user_feelings
has_many :users, through: :user_feelings
has_many :movies
accepts_nested_attributes_for :movies
end
