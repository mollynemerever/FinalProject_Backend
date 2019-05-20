class UserfollowerrelationshipsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @relationship = Userfollowerrelationship.new(relationship_params)
    if @relationship.save
      render json: @relationship, status: :accepted
    else
      render json: {errors: 'Failed to follow user'}, status: :unprocessible_entity
    end
  end

  private

  def relationship_params
    params.require(:userfollowerrelationship).permit!
  end



end
