class NytimesArticlesService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://api.nytimes.com/svc/search/v2/articlesearch.json")
    connection.header[:content_type] = "application/json"
    connection.query["api-key"] = ENV["nytimes_articles_api_key"]
  end

  def query_term(term)
    response = connection.get("") do |req|
      req.query[:q] = term
    end
    parse(response.body)
  end

  private

  def parse(response)
    JSON.parse(response, symbolize_names: true)
  end

end