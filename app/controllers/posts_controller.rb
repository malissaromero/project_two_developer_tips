class PostsController < ApplicationController
  before_action :authenticate

  def index
    @category = Category.find(params[:category_id])
    # mms: don't you want the posts for the category you just retrieved?  Or is this carry-over from the previous implementation?
    @posts = Post.all
  end

  def new
    # mms: Due to the nested routes, I was expecting a category here.  If not, I recommend you adjust your routes using `only:` or `except:`
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
    # mms: we probably want to use `current_user.posts...` here too
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    # mms: we probably want to use `current_user.posts...` here too
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to categories_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :command, :description, :category_ids => [])
  end
end
