FactoryGirl.define do
  factory :shipping_address do
    street       { Faker::Address.street_name }
    neighborhood { Faker::Address.community }
    zip_code     { Faker::Address.zip_code }
    number       { Faker::Address.building_number }
    complement   { Faker::Address.secondary_address }
    city         { Faker::Address.city }
    state        { Faker::Address.state }
    country      { Faker::Address.country }
  end
end
