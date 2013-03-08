class CreateStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string  :name
      t.string  :symbol
      t.integer :user_id
      t.integer :quantity
      t.decimal :price
      t.timestamps
    end
  end
end
