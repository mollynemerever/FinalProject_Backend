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

  def show
    if Userbook.find_by(user_id: params[:id])
      @userbooks = Userbook.where(user_id: params[:id]).order(:created_at)
      render json: @userbooks, status: :accepted
    else
      render json: {errors: 'Cannot find books for this user'}, status: :failure
    end
  end

  private

  def userbooks_params
    params.require(:userbook).permit!
  end
end
