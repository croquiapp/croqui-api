class CreditCardToken < ApplicationRecord
  validates :token, presence: true, uniqueness: true
  belongs_to :user
end
