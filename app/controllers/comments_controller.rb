class CommentsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.comments.create(comment_params)
    redirect_to @restaurant, notice: 'Your comment was added. Thank you!'
  end

  def comment_params
    params.require(:comment).permit(:body, :rating)
  end
end
