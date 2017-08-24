class Post < ApplicationRecord
  validates :title, presence: { message: "debe ser ingresado." }
  validates :body,  presence: { message: "debe ser ingresado." }
  validates :body,  length: { minimum: 250,
                              too_short: 'El cuerpo del post debe contener como minimo %{count} caracteres.' }
  belongs_to :user
  validates_associated :user
  has_many :comments
end
