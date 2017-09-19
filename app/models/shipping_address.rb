class ShippingAddress < ApplicationRecord
  belongs_to :user

  validates :street, :neighborhood, :zip_code, :number, :complement, :city, :state, :country, presence: true
end
