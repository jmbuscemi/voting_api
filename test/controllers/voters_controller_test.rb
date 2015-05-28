require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should be able to create" do
      assert_difference("Voter.count") do
        post :create, {name: "Muriel Botsford", party_name: "Green"}
      end
      assert_equal "Muriel Botsford", Voter.last.name
    end

  test "show" do
    terry = Voter.create!(name: "Terrance Torp", party_name: "D")
    get :show, id: terry.id
    assert response.body =~ /Terrance/
  end

  test "can update" do
    brad = Voter.create(name: "Brad Roob", party_name: "R")
    cora = Voter.create(name: "Cora Schuppe", party_name: "D")

    patch :update, {id: brad.id, party_name: "Independent"}
    assert response.body =~ /Independent/
  end

end
