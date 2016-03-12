class MenuController < ApplicationController
  def index 
    @sections = Section.all
  end

  def show_food
    @food = Food.find(params[:food_id])
  end
end
