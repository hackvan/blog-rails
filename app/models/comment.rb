class Comment < ApplicationRecord
  belongs_to :user
  validates_associated :user
  belongs_to :post
  validates_associated :post
end
