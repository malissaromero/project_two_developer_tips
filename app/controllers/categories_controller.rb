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

  def show
    @category = Category.find(params[:id])
    @post = Post.all
  end

  private
  def category_params
    params.require(:category).permit(:name, :category_id)
  end
end
