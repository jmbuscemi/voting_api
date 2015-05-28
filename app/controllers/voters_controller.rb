class VotersController < ApplicationController
  # before_filter :restrict_access

  def create
    voter = Voter.create(name: params[:name], party_name: params[:party_name])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def show
      render json: Voter.find_by_id(params[:id])
  end

  def update
    voter = Voter.find_by_id(params[:id])
    voter.update(name: params[:name]) if params[:name]
    voter.update(party_name: params[:party_name]) if params[:party_name]
    render json: voter
  end

  # private def restrict_access
  #   authenticate_or_request_with_http_token do |token, options|
  #     Voter.exists?(access_token: token)
  #   end
  # end

end
