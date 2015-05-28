require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert response.body =~ /candidate/
  end

  test "should be able to create" do
    mckenna = Candidate.create!(name: "Mckenna Schowalter", hometown: "North Forrestfort",
        district: "NC32", party_name: "Independent")
    donald = Candidate.create!(name: "Donald Heaney", hometown: "North Garfieldside",
        district: "NC32", party_name: "Republican")
    henry = Voter.create!(name: "Henry Fahey", party_name: "Democrat")
    mariano = Voter.create!(name: "Mariano Brakus", party_name: "Democrat")

    assert_difference("Vote.count") do
      post :create, {candidate_id: mckenna.id, voter_id: henry.id}
    end
  end


  test "can destroy" do
    number_of_votes = Vote.count
    miguel = Candidate.create!(name: "Miguel Gibson", hometown: "Jenkinsborough",
        district: "NC 25", party_name: "I")
    halie = Voter.create!(name: "Halie Mitchell", party_name: "D")
    vote = Vote.create!(candidate: miguel, voter: halie)

    assert_equal 1, Vote.count - number_of_votes

    delete :destroy, id: vote.id

    assert_equal number_of_votes, Vote.count
    assert response.body =~ /delete/

  end

end
