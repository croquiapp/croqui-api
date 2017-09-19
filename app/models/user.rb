class User < ApplicationRecord
  has_many :credit_card_tokens, dependent: :destroy
  has_many :shipping_addresses, dependent: :destroy
  has_secure_password

  validates :first_name, :last_name, :email, :picture_url, :is_designer, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "Invalid email format" }
  validates :atelier_url, uniqueness: true, presence: true, if: :is_designer?
end
