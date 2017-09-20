require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { FactoryGirl.build(:product) }
  
  it { should have_many(:campaigns) }
  it { should monetize(:price) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price).with_message("price cannot be 0 or empty") }
  it { should validate_presence_of(:images_url) }
end
