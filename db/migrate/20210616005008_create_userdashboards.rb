class CreateUserdashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :userdashboards do |t|
      t.string :detail
      t.integer :user_id

      t.timestamps
    end
  end
end
