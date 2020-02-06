class Movie < ApplicationRecord
belongs_to :user
belongs_to :feeling
has_many :comments

validates :text,:image,:name,:feeling_id, presence: true
mount_uploader :image, ImageUploader
end
