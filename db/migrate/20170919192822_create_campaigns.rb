class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns, id: :uuid do |t|
      t.string :description
      t.datetime :finished_at
      t.integer :min_buyers
      t.integer :total_buyers
      t.boolean :successful

      t.references :product, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
