class VotesController < ApplicationController
  def index
    render json: Vote.all
  end

  def create
    vote = Vote.create(candidate_id: params[:candidate_id], voter_id: params[:voter_id])
    if vote.save
      render json: vote
    else
      render json: vote.errors
    end
  end

  def destroy
    vote = Vote.find_by_id(params[:id])
    vote.destroy
    render json: "Your vote has been deleted."
  end

end
