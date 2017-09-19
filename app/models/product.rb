class Product < ApplicationRecord
  validates :price, :title, :description, :images_url, presence: true
end
