require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

  it { should have_many(:credit_card_tokens).dependent(:destroy) }
  it { should have_many(:shipping_addresses).dependent(:destroy) }
  it { should have_secure_password }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:picture_url) }
  it { should validate_presence_of(:is_designer) }

  context "as a designer" do
    before { subject.is_designer = true }

    it { should validate_presence_of(:atelier_url) }
    it { should validate_uniqueness_of(:atelier_url) }
  end

  context "as a non-designer" do
    before { subject.is_designer = false }

    it { should_not validate_presence_of(:atelier_url) }
    it { should_not validate_uniqueness_of(:atelier_url) }
  end
end
