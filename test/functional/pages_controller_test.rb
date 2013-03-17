require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get core_values" do
    get :core_values
    assert_response :success
  end

end
