class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: {error: 'Could not save comment'}, status: :unprocessible_entity
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render json: @comment, status: :accepted
  end

  def update
    #byebug
    @comment = Comment.find_by(id: params[:comment_id])
    Comment.delete(@comment)
    render json: {message: 'Comment Deleted'}
  end


  private
  def comment_params
    params.require(:comment).permit!
  end
end
