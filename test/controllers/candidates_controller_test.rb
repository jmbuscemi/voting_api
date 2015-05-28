require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert response.body =~ /name/
  end

  test "show" do
    john = Candidate.create!(name: "John", hometown: "Manteo", district: "NC 25", party_name: "D")
    get :show, id: john.id
    assert response.body =~ /district/
  end
end
