require "test_helper"

class AddToArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_to_article = add_to_articles(:one)
  end

  test "should get index" do
    get add_to_articles_url, as: :json
    assert_response :success
  end

  test "should create add_to_article" do
    assert_difference("AddToArticle.count") do
      post add_to_articles_url, params: { add_to_article: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show add_to_article" do
    get add_to_article_url(@add_to_article), as: :json
    assert_response :success
  end

  test "should update add_to_article" do
    patch add_to_article_url(@add_to_article), params: { add_to_article: {  } }, as: :json
    assert_response :success
  end

  test "should destroy add_to_article" do
    assert_difference("AddToArticle.count", -1) do
      delete add_to_article_url(@add_to_article), as: :json
    end

    assert_response :no_content
  end
end
