require "test_helper"

class AddPasswordDigestToDevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_password_digest_to_dev = add_password_digest_to_devs(:one)
  end

  test "should get index" do
    get add_password_digest_to_devs_url, as: :json
    assert_response :success
  end

  test "should create add_password_digest_to_dev" do
    assert_difference("AddPasswordDigestToDev.count") do
      post add_password_digest_to_devs_url, params: { add_password_digest_to_dev: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show add_password_digest_to_dev" do
    get add_password_digest_to_dev_url(@add_password_digest_to_dev), as: :json
    assert_response :success
  end

  test "should update add_password_digest_to_dev" do
    patch add_password_digest_to_dev_url(@add_password_digest_to_dev), params: { add_password_digest_to_dev: {  } }, as: :json
    assert_response :success
  end

  test "should destroy add_password_digest_to_dev" do
    assert_difference("AddPasswordDigestToDev.count", -1) do
      delete add_password_digest_to_dev_url(@add_password_digest_to_dev), as: :json
    end

    assert_response :no_content
  end
end
