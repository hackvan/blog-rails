class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :validatable, password_length: 8..20
  has_many :posts
  has_many :comments
end
