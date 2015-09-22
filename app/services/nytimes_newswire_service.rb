class NytimesNewswireService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://api.nytimes.com/svc/news/v3/content/all/all.json")
    connection.header[:content_type] = "applicaton/json"
    connection.query["api-key"] = ENV["nytimes_newswire_api_key"]
  end

  def all_articles
    response = connection.get("")
    parse(response.body)[:results]
  end

  private

  def parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end