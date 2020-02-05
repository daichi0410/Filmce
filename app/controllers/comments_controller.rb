class CommentsController < ApplicationController
  def create
    comment = Feeling.find(params[:feeling_id]).comments.new(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:name)
  end
end