class FoodsController < ApplicationController
  def show
    # current_cart
    @food = Food.find(params[:id])
    @comment = Comment.new
  end
end
