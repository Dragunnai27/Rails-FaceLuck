class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.author = current_user.email
    @comment.user_id = current_user.id

    if @comment.save 
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :author, :post_id, :user_id)
  end
  
end
