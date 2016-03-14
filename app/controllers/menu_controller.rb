class MenuController < ApplicationController
  def index 
    # current_cart
    @sections = Section.all
  end
end
