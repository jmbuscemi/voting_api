require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "voter has name" do
    halie = Voter.new(name: "Halie Mitchell", party_name: "R")
    rachelle = Voter.new()
    assert halie.save
    refute rachelle.save
  end

  test "voter has only one vote" do
    miguel = Candidate.create!(name: "Miguel Gibson", hometown: "Jenkinsborough", district: "NC 25", party_name: "I")
    trudie = Candidate.create!(name: "Trudie Daniel", hometown: "Hilpertfurt", district: "NC 25", party_name: "R")
    halie = Voter.create(name: "Halie Mitchell", party_name: "R")

    vote_one = Vote.create!(candidate: miguel, voter: halie)
    vote_two = Vote.new(candidate: trudie, voter: halie)

    refute vote_two.save
    assert_equal halie, vote_one.voter
  end

  test "has acces token" do

  end
end
