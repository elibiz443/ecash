class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :email
      t.decimal :balance, default: 0
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
