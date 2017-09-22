require 'faker'
require 'money'

products = (1..10).map do
  attrs = {
    description: Faker::StarWars.quote,
    title:       Faker::StarWars.character,
    images_url:  Faker::Internet.url,
    price:       Money.from_amount(rand(25..50), "BRL")
  }

  Product.create attrs
end

products.each do |product|
  attrs = {
    description: Faker::StarWars.quote,
    finished_at: 10.days.from_now,
    min_buyers:  rand(15..25),
    product:     product
  }

  Campaign.create attrs
end
