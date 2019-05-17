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

  private

  def user_params
    params.require(:user).permit!
  end

end
