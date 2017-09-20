class Campaign < ApplicationRecord
  belongs_to :product
  validates :description, :finished_at, :min_buyers, :total_buyers, presence: true
end
