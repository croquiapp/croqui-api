class CreateShippingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_addresses, id: :uuid do |t|
      t.string :street
      t.string :neighborhood
      t.string :zip_code
      t.string :number
      t.string :complement
      t.string :city
      t.string :state
      t.string :country

      t.references :user, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
