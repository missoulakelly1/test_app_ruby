require "application_system_test_case"

class ArticleNewsTest < ApplicationSystemTestCase
  setup do
    @article_news = article_news(:one)
  end

  test "visiting the index" do
    visit article_news_url
    assert_selector "h1", text: "Article News"
  end

  test "creating a Article new" do
    visit article_news_url
    click_on "New Article New"

    fill_in "Description", with: @article_news.description
    fill_in "Title", with: @article_news.title
    click_on "Create Article new"

    assert_text "Article new was successfully created"
    click_on "Back"
  end

  test "updating a Article new" do
    visit article_news_url
    click_on "Edit", match: :first

    fill_in "Description", with: @article_news.description
    fill_in "Title", with: @article_news.title
    click_on "Update Article new"

    assert_text "Article new was successfully updated"
    click_on "Back"
  end

  test "destroying a Article new" do
    visit article_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article new was successfully destroyed"
  end
end
