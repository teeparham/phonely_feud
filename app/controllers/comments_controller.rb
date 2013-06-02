class CommentsController < ApplicationController

  def create
    @number = Number.find(params[:number_id])
    @number.comments.create!(comment_params)
    redirect_to @number
  end

private

  def comment_params
    params.require(:comment).permit(:text, :vote)
  end

end
