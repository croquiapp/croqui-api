require 'rails_helper'

RSpec.describe CreditCardToken, type: :model do
  subject { FactoryGirl.build(:credit_card_token) }

  it { should belong_to(:user) }
  it { should validate_presence_of :token  }
  it { should validate_uniqueness_of :token }
end
