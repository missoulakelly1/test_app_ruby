json.extract! article_news, :id, :title, :description, :created_at, :updated_at
json.url article_news_url(article_news, format: :json)
