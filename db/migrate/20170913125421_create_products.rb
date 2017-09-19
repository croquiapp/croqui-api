class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :description
      t.string :title
      t.string :images_url
      t.monetize :price
      t.timestamps
    end
  end
end
