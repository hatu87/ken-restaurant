class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Food.find(params[:food_id]).comments.recent

    render json: @comments
  end

  def create
    new_comment = Comment.create(customer_name: params[:customer_name],
                                 text: params[:text],
                                 rating: params[:rating],
                                 avatar_url: Faker::Avatar.image)
    Food.find(params[:food_id]).comments << new_comment
    render json: new_comment
  end

  private
  def comment_params
    params.require(:comment).permit(:customer_name, :text, :rating)
  end
end
