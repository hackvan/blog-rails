class Post < ApplicationRecord
  validates :title, presence: true
  validates :body,  presence: true
  validates :body,  length: { minimum: 250 }
  belongs_to :user
  validates_associated :user
  has_many :comments
end
