class CreateExchanges < ActiveRecord::Migration[5.2]
  def change
    create_table :exchanges do |t|
      t.references :offer_book, index: true, foreign_key: { to_table: :books }
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :trade_status, default: 0
      t.timestamps
    end
  end
end
