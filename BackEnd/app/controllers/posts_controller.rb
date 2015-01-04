class PostsController < ApplicationController
   before_action :require_login!
   
  def index
    @posts = current_user.posts
  end

  def show
    @post = current_user.posts.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_url(@post)
    else
      render :edit
    end
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to post_url(@post)
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
