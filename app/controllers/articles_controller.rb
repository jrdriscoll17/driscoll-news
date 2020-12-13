class ArticlesController < ApplicationController
  def index
    @articles = fetch_articles
  end
  
  def new; end

  def create; end
  
  def destroy; end
  
  def show; end

  private

  def fetch_articles
    response = HTTP.headers(:'X-Api-Key' => "#{ENV["NEWS_API_KEY"]}").get("https://newsapi.org/v2/top-headlines?country=us")

    return nil if response.status != 200
    JSON.parse(response)['articles']
  end
end
