class CartItemsController < ApplicationController
  def create
    cart = current_cart
    food = Food.find(params[:food_id])

    selected_item = cart.cart_items.where(food_id: food.id).first

    if selected_item 
      selected_item.quantity += params[:quantity].to_i
    else
      selected_item = cart.cart_items.build(quantity: params[:quantity], price: food.price, food_id: food.id)
    end
    
    respond_to do |format|
      if selected_item.save
        format.html {redirect_to food_path(food.id)}
      else
        format.html {redirect_to food_path(food.id), notice: 'Error when adding item to cart.'}
      end
    end
  end
end
