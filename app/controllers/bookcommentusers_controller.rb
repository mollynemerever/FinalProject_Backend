class BookcommentusersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @all = Bookcommentuser.all
    render json: @all 
  end

  def create
    @bookcommentuser = Bookcommentuser.new(bookcommentuser_params)
    if @bookcommentuser.save
      render json: @bookcommentuser, status: :accepted
    else
      render json: {error: 'Could not save comment'}
    end
  end

  private

  def bookcommentuser_params
    params.require(:bookcommentuser).permit!
  end

end
