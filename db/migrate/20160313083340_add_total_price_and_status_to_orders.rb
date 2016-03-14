class AddTotalPriceAndStatusToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_price, :decimal
    add_column :orders, :status, :integer
  end
end
