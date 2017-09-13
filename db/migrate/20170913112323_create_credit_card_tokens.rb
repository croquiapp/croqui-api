class CreateCreditCardTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_card_tokens, id: :uuid do |t|
      t.string :token, null: false, unique: true
      t.references :user, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
