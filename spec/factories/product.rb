require "money"

FactoryGirl.define do
  factory :product do
    price       { Money.from_amount(rand(1..100), "BRL") }
    title       { Faker::Name.title }
    description { Faker::StarWars.quote }
    images_url  { Faker::Internet.unique.url }

    after(:create) do |product|
      create(:campaign, product: product)
    end
  end
end
