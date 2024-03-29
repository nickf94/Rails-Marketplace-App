class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name, null: false
      t.decimal :sub_total, null: false, precision: 8, scale: 2

      t.timestamps
    end
  end
end
