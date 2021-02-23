require "test_helper"

class ArticleNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_news = article_news(:one)
  end

  test "should get index" do
    get article_news_url
    assert_response :success
  end

  test "should get new" do
    get new_article_news_url
    assert_response :success
  end

  test "should create article_news" do
    assert_difference('ArticleNew.count') do
      post article_news_url, params: { article_news: { description: @article_news.description, title: @article_news.title } }
    end

    assert_redirected_to article_news_url(ArticleNew.last)
  end

  test "should show article_news" do
    get article_news_url(@article_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_news_url(@article_news)
    assert_response :success
  end

  test "should update article_news" do
    patch article_news_url(@article_news), params: { article_news: { description: @article_news.description, title: @article_news.title } }
    assert_redirected_to article_news_url(@article_news)
  end

  test "should destroy article_news" do
    assert_difference('ArticleNew.count', -1) do
      delete article_news_url(@article_news)
    end

    assert_redirected_to article_news_url
  end
end
