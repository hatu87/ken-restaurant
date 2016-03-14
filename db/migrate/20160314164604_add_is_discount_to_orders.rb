class AddIsDiscountToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :is_discount, :boolean, default: false
    add_column :orders, :discount_code, :string
  end
end
