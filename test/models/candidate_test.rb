require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "candidate has name, hometown, district" do
    miguel = Candidate.new(name: "Miguel Gibson", hometown: "Jenkinsborough", district: "NC 25", party_name: "D")
    lane = Candidate.new(name: "Lane Ritchie", hometown: "North Myronside")

    assert miguel.save
    refute lane.save
  end

  test "candidate has votes" do
    miguel = Candidate.create!(name: "Miguel Gibson", hometown: "Jenkinsborough", district: "NC 25", party_name: "D")
    halie = Voter.create!(name: "Halie Mitchell", party_name: "D")

    vote_one = Vote.create!(candidate: miguel, voter: halie)

    assert_equal 1, miguel.votes.count
    assert_equal miguel, vote_one.candidate
  end
end
