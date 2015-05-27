require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "vote has candidate" do
    miguel = Candidate.create!(name: "Miguel Gibson", hometown: "Jenkinsborough", district: "NC 25")
    halie = Voter.create!(name: "Halie Mitchell")

    vote_one = Vote.new(candidate: miguel, voter: halie)
    vote_two = Vote.new(voter: halie)

    assert vote_one.save
    refute vote_two.save
  end

  test "vote has voter" do
    miguel = Candidate.create!(name: "Miguel Gibson", hometown: "Jenkinsborough", district: "NC 25")
    halie = Voter.create!(name: "Halie Mitchell")

    vote_one = Vote.new(candidate: miguel, voter: halie)
    vote_two = Vote.new(candidate: miguel)

    assert vote_one.save
    refute vote_two.save
  end

end
