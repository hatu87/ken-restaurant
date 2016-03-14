class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    order = params[:order]
    new_order = Order.new(order_params)
    # new_order.total_price = current_cart.total_price
    new_order.status = 0 # 0 is 
    new_order.delivery_fee = 20000
    # byebug
    new_order.is_discount = true if order[:discount_code] == "CODERSCHOOL"

    if new_order.save
      current_cart.cart_items.each do |item|
        new_order.order_items.create(food_id: item.food_id, quantity: item.quantity, price: item.price)
      end

      current_cart.destroy
      OrderMailer.finished_order_email(new_order).deliver_now
      send_sms(new_order)

      redirect_to order_finished_order_path(new_order.id)
    else
      redirect_to new_order
    end
  end

  def send_sms(order)
    account_sid = "ACe48bf4e46d29f5693a27974073458ab6"
    auth_token = "66867f9d572d852a8c93ea9474375209"
    client = Twilio::REST::Client.new account_sid, auth_token
    from = "+18627720063" # Your Twilio number
    body = "Your order #{order.id} is created at #{order.created_at.to_formatted_s(:long)} with total price is #{order.total_price}"

    client.account.messages.create(from: from, to:order.phone, body: body)
  end

  def finished_order
    @order = Order.find(params[:order_id])
  end

  private
    def order_params
      params.require(:order).permit(:customer_name, :email, :phone, :address, :discount_code, :is_discount)
    end
end
