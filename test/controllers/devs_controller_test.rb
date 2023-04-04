require "test_helper"

class DevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev = devs(:one)
  end

  test "should get index" do
    get devs_url, as: :json
    assert_response :success
  end

  test "should create dev" do
    assert_difference("Dev.count") do
      post devs_url, params: { dev: { email: @dev.email, fname: @dev.fname, lname: @dev.lname, username: @dev.username } }, as: :json
    end

    assert_response :created
  end

  test "should show dev" do
    get dev_url(@dev), as: :json
    assert_response :success
  end

  test "should update dev" do
    patch dev_url(@dev), params: { dev: { email: @dev.email, fname: @dev.fname, lname: @dev.lname, username: @dev.username } }, as: :json
    assert_response :success
  end

  test "should destroy dev" do
    assert_difference("Dev.count", -1) do
      delete dev_url(@dev), as: :json
    end

    assert_response :no_content
  end
end
