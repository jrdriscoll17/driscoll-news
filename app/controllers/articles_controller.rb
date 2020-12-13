class ArticlesController < ApplicationController
  def index
    @articles = fetch_articles
  end
  
  def new; end

  def create; end
  
  def destroy; end
  
  def show; end
end
