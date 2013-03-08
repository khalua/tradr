class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :password_digest
      t.decimal :balance
      t.timestamps
    end
  end
end
