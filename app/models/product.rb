class Product < ApplicationRecord
  has_many :campaigns

  monetize :price_cents, with_model_currency: :price_currency
  validates :price, :title, :description, :images_url, presence: true

  validate :price_cannot_be_empty

  def price_cannot_be_empty
    if price == Money.new(0, price_currency)
      errors.add :price, "price cannot be 0 or empty"
    end
  end
end
