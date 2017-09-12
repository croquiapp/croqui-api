class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :email, :picture_url, :is_designer, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "Invalid email format" }
  validates :atelier_url, uniqueness: true, presence: true, if: :is_designer?
end
