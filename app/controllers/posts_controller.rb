class PostsController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    if session[:user_id]
      @posts = Post.all
      @user = User.find(session[:user_id])
      @categories = Category.all
    else
      @posts = Post.all
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :command, :description)
  end

end
