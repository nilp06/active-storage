class User < ApplicationRecord
  # validates :name, presence: true, length: { minimum: 3, maximum: 10 }
  # validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_one_attached :avtar
end
