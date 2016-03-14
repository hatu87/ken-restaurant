class FoodsController < ApplicationController
  def show
    # current_cart
    @food = Food.get_food(params[:id], true)
    @comment = Comment.new
  end
end
