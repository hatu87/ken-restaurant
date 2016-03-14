class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :food_id
      t.integer :cart_id
      t.integer :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
