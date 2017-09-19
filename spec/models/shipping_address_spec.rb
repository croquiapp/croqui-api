require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  it { should belong_to(:user)  }
  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:neighborhood) }
  it { should validate_presence_of(:zip_code) }
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:complement) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:country) }
end
