class CategoriesController < ApplicationController
  before_action :authenticate, only: [:index]

  def index
    @user = User.find(session[:user_id])
    if @user
      @posts = Post.all
      @categories = Category.all
    else
      @categories = Category.all
    end
  end

  private
  def category_params
    params.require(:category).permit(:name, :category_id)
  end

  private
  def post_params
    params.require(:post).permit(:title, :category, :command, :description)
  end
end
