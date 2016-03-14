class OrderItem < ActiveRecord::Base
  belongs_to :food
  belongs_to :order

  def total_price
    price * quantity
  end
end
