class RemoveColumnTotalPriceFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :total_price
  end
end
