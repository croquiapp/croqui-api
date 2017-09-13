class Product < ApplicationRecord
  validate :price, :title, :description, :images_url, presence: true

end
