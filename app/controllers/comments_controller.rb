class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @success = @comment.save
    respond_to do |format|
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :issue_id, :content)
  end
end
