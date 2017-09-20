require 'rails_helper'

RSpec.describe Campaign, type: :model do
  subject { FactoryGirl.build(:campaign) }

  it { should belong_to(:product) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:min_buyers) }
  it { should validate_presence_of(:total_buyers) }
  it { should validate_presence_of(:finished_at) }
end
