class CategoriesController < ApplicationController
  before_action :authenticate

  def index
    @user = User.find(session[:user_id])
    if @user
      @posts = Post.all
      @categories = Category.all
    end
  end
end
