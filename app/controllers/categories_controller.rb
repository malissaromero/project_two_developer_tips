class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @posts = Post.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name, :category_id)
  end
end
