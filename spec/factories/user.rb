FactoryGirl.define do
  factory :user do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name  }
    email       { Faker::Internet.unique.email }
    picture_url { Faker::Internet.url }
    atelier_url { Faker::Internet.unique.url }
  end
end
