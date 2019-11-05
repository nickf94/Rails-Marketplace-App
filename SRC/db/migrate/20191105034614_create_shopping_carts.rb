class CreateShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_carts do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
