require 'test_helper'

class SecretsControllerTest < ActionController::TestCase
  test "should get so_very_secret" do
    get :so_very_secret
    assert_response :success
  end

end
