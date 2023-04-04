require "test_helper"

class AddToProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_to_profile = add_to_profiles(:one)
  end

  test "should get index" do
    get add_to_profiles_url, as: :json
    assert_response :success
  end

  test "should create add_to_profile" do
    assert_difference("AddToProfile.count") do
      post add_to_profiles_url, params: { add_to_profile: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show add_to_profile" do
    get add_to_profile_url(@add_to_profile), as: :json
    assert_response :success
  end

  test "should update add_to_profile" do
    patch add_to_profile_url(@add_to_profile), params: { add_to_profile: {  } }, as: :json
    assert_response :success
  end

  test "should destroy add_to_profile" do
    assert_difference("AddToProfile.count", -1) do
      delete add_to_profile_url(@add_to_profile), as: :json
    end

    assert_response :no_content
  end
end
