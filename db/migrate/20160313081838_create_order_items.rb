class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :food_id
      t.integer :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
