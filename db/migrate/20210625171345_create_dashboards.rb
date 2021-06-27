class CreateDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboards do |t|
      t.string :detail
      t.integer :user_id

      t.timestamps
    end
  end
end
