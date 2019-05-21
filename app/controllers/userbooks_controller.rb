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
    if Userbook.find_by(user_id: params[:user_id])
      @userbooks = Userbook.where(user_id: params[:user_id]).order(:created_at)
      render json: @userbooks, status: :accepted
    else
      render json: {errors: 'Cannot find books for this user'}, status: :failure
    end
  end

  def update #remove book or update read status

    if Userbook.find_by(id: userbooks_params[:id])
      @userbook = Userbook.find_by(id: userbooks_params[:id])
      
      if userbooks_params[:read_status] != nil
        @userbook.update(read_status: userbooks_params[:read_status])

        render json: @userbook, status: :accepted
      else
        Userbook.delete(@userbook)
        render json: {message: 'book removed'} , status: :accepted
      end
    else
      render json: {errors: 'Cannot find book for this user'}, status: :failure
    end
  end

  private

  def userbooks_params
    params.require(:userbook).permit!
  end
end
