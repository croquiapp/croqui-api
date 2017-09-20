class AddDefaultValueToTotalBuyers < ActiveRecord::Migration[5.1]
  def change
    change_column :campaigns, :total_buyers, :integer, default: 0
  end
end
