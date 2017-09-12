class AddDefaultValueToIsDesigner < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :is_designer, :boolean, default: false
  end
end
