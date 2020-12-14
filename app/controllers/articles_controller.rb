class ArticlesController < ApplicationController
  def index
    # @articles = fetch_top_headlines(params[:query])
    @articles = fetch_articles_testing
  end
  
  def new; end

  def create; end
  
  def destroy; end

  private

  def fetch_top_headlines(query)
    query != '' ? user_query = "q=#{query}" : user_query = 'country=us'

    response = HTTP.headers(:'X-Api-Key' => "#{ENV["NEWS_API_KEY"]}").get("https://newsapi.org/v2/top-headlines?#{user_query}")
    
    return nil if response.status != 200
    JSON.parse(response)['articles']
  end

  def fetch_articles_testing
    response = [
      {
        "source"=>{"id"=>nil, "name"=>"YouTube"}, 
        "author"=>nil,
        "title"=>"Florida defender throws cleat in wild ending vs. LSU | 2020 College Football Highlights - ESPN","description"=>"With two minutes to go in a tied game, Florida's Marco Wilson gets hit with an unsportsmanlike conduct penalty as he throws the cleat of LSU’s Kole Taylor ac...",
        "url"=>"https://www.youtube.com/watch?v=Fif3Rkl5_nQ",
        "urlToImage"=>"https://i.ytimg.com/vi/Fif3Rkl5_nQ/maxresdefault.jpg",
        "publishedAt"=>"2020-12-13T06:11:10Z",
        "content"=>nil
      },
      {
        "source"=>{"id"=>nil, "name"=>"YouTube"}, 
        "author"=>nil,
        "title"=>"Florida defender throws cleat in wild ending vs. LSU | 2020 College Football Highlights - ESPN","description"=>"With two minutes to go in a tied game, Florida's Marco Wilson gets hit with an unsportsmanlike conduct penalty as he throws the cleat of LSU’s Kole Taylor ac...",
        "url"=>"https://www.youtube.com/watch?v=Fif3Rkl5_nQ",
        "urlToImage"=>"https://i.ytimg.com/vi/Fif3Rkl5_nQ/maxresdefault.jpg",
        "publishedAt"=>"2020-12-13T06:11:10Z",
        "content"=>nil
      },
      {
        "source"=>{"id"=>nil, "name"=>"YouTube"}, 
        "author"=>nil,
        "title"=>"Florida defender throws cleat in wild ending vs. LSU | 2020 College Football Highlights - ESPN","description"=>"With two minutes to go in a tied game, Florida's Marco Wilson gets hit with an unsportsmanlike conduct penalty as he throws the cleat of LSU’s Kole Taylor ac...",
        "url"=>"https://www.youtube.com/watch?v=Fif3Rkl5_nQ",
        "urlToImage"=>"https://i.ytimg.com/vi/Fif3Rkl5_nQ/maxresdefault.jpg",
        "publishedAt"=>"2020-12-13T06:11:10Z",
        "content"=>nil
      }
    ]
  end
end
