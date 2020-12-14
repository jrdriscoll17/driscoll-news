module ArticlesHelper
  def article_params(article)
    {
      image_url: article['urlToImage']
      title: article['title']
      description: article['description']
      source: article['source']['name']
    }
  end
end
