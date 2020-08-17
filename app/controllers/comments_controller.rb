class CommentsController < ApplicationController
  def add
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:topic_id, :comment)
  end
end
