class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, unique: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :picture_url
      t.string :atelier_url
      t.string :password_digest
      t.boolean :is_designer, null: false

      t.timestamps
    end
  end
end
