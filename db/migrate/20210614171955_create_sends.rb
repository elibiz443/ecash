class CreateSends < ActiveRecord::Migration[6.1]
  def change
    create_table :sends do |t|
      t.string :recipient_email
      t.decimal :amount

      t.timestamps
    end
  end
end
