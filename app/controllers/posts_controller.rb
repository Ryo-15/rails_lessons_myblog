class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: 'desc')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    
  end

  def create
    # render plain: params[:post].inspect
    # @post = Post.new(params[:post])
    # @post = Post.new(params.require(:post).permit(:title, :body))
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
  

end
