class CategoriesController < ApplicationController
  # mms: this is already in ApplicationController, so it a before_action for ALL controllers (that inherit from ApplicationController).
  before_action :authenticate

  def index
    # mms: This code looks familiar - aren't we already finding the User from the session somwhere?
    @user = User.find(session[:user_id])
    if @user
      @posts = Post.all
      @categories = Category.all
    # else
      # mms: what should index do if there wasn't a current user?
    end

  end
end
