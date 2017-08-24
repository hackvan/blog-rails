class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: { message: "debe ser ingresado." }
  validates :body,  presence: { message: "debe ser ingresado." }
  validates :body,  length: { minimum: 250,
                              too_short: 'El cuerpo del post debe contener como minimo %{count} caracteres.' }
end
