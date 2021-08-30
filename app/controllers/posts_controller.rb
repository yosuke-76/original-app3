class PostsController < ApplicationController
  before_action :set_post, only: [:derete, :edit, :update, :show]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    post.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:name, :text).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end