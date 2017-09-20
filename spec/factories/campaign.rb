FactoryGirl.define do
  factory :campaign do
    description  { Faker::Lorem.paragraph(5, false, 5) }
    finished_at  { Faker::Date.forward(30) }
    min_buyers   { 50 }
    total_buyers { Faker::Number.between(1, 50) }
  end
end
