class VotersController < ApplicationController
  # before_filter :restrict_access

  def create
    voter = Voter.create(name: params[:name], party_name: params[:party_name]) #, access_token: SecureRandom.hex)
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def show
      render json: Voter.find_by_id(params[:id])
  end

  # private def restrict_access
  #   authenticate_or_request_with_http_token do |token, options|
  #     Voter.exists?(access_token: token)
  #   end
  # end

end
