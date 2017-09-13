FactoryGirl.define do
  factory :credit_card_token do
    token { Faker::Crypto.sha256 }
  end
end
