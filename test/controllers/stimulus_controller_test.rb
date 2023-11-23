require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get effect" do
    get stimulus_effect_url
    assert_response :success
  end
end
