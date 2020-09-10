class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private
  def comment_params
    pramas.require(:comment).permit(:body)
  end
end
