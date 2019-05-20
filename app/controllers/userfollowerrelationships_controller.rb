class UserfollowerrelationshipsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
  if Userfollowerrelationship.find_by(relationship_params)
    @relationship = Userfollowerrelationship.find_by(relationship_params)
    @relationship.destroy
    render json: {message: 'follow relationship destroyed'}, status: :accepted
  else
    @relationship = Userfollowerrelationship.new(relationship_params)
    if @relationship.save
      render json: @relationship, status: :accepted
    else
      render json: {errors: 'Failed to follow user'}, status: :unprocessible_entity
    end
  end
  end

  def index
    @all = Userfollowerrelationship.all
    render json: @all, status: :accepted
  end

  private

  def relationship_params
    params.require(:userfollowerrelationship).permit!
  end



end
