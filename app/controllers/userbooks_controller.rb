class UserbooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if Userbook.find_by(user_id: userbooks_params[:user_id], book_id: userbooks_params[:book_id]) #if relationship already exists
      @userbook = Userbook.find_by(user_id: userbooks_params[:user_id], book_id: userbooks_params[:book_id])
      render json: @userbook, status: :accepted
    else
      @userbook = Userbook.new(userbooks_params)
      if @userbook.save
        render json: @userbook, status: :accepted
      else
        render json: {errors: 'Failed to save book'}, status: :unprocessible_entity
      end
    end
  end

  private

  def userbooks_params
    params.require(:userbook).permit!
  end
end
