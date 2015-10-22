class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    user_hash = { user: current_user}
    @restaurant.comments.create(comment_params.merge!(user_hash))
    redirect_to @restaurant, notice: 'Your comment was added. Thank you!'
  end

  def comment_params
    params.require(:comment).permit(:body, :rating)
  end
end
