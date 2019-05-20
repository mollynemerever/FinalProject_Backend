class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if User.find_by(email: user_params[:email]) #if user exists
      @user = User.find_by(email: user_params[:email])
      render json: @user, status: :accepted
    else
      @user = User.new(user_params) #create user
      if @user.save #if user able to save/valid
        render json: @user, status: :accepted
      else
        render json: {errors: 'Failed to create user'}, status: :unprocessible_entity
      end
    end
  end

  def show
    if User.find_by(id: params[:id])
      @user = User.where(id: params[:id]).order(:created_at)
      render json: @user, status: :accepted
    else
      render json: {errors: 'Cannot find books for this user'}, status: :failure
    end
  end

  def update
    if User.find_by(id: params[:id])
      @user = User.update(full_name: user_params[:full_name], industry: user_params[:industry])
      render json: @user, status: :accepted
    else
      render json: {errors: 'Cannot update user'}, status: :failure
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end

end
