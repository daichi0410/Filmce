class Movie < ApplicationRecord
belongs_to :user
belongs_to :feeling

mount_uploader :image, ImageUploader
end
