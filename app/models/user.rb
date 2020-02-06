class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :user_feelings
   has_many :feelings, through: :user_feelings
   has_many :movies
   has_many :comments
end
