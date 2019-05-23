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
    if @comment = Comment.find_by(id: params[:comment_id])
      @comment = Comment.find_by(id: params[:comment_id])
      if params[:text] != nil
       @comment.update(text: params[:text])
       render json: @comment, status: :accepted
      else
       Comment.delete(@comment)
       render json: {message: 'Comment Deleted'}
      end
    else
      render json: {error: 'Comment Not Found'}
    end
  end


  private
  def comment_params
    params.require(:comment).permit!
  end
end
