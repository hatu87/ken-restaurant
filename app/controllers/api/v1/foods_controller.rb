class Api::V1::FoodsController < ApplicationController
  def index
    section_id = params[:section_id]
    sort_mode = params[:sort_mode].to_i || 0

    if params[:section_id]
      @foods = Food.where(section_id: params[:section_id])
    else  
      @foods = Food.all
    end
    
    sort_params = ['name asc', 'price asc', 'price desc']

    @foods = @foods.ordered(sort_params[sort_mode])

    render json: @foods
  end

  def show
    id = params[:id]
    food = Food.find(id)

    render json: food
  end
end
