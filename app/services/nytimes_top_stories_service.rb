class NytimesTopStoriesService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://api.nytimes.com/svc/topstories/v1")
    connection.header[:content_type] = "application/json"
    connection.query["api-key"] = ENV["nytimes_top_stories_api_key"]
  end

  def world
    parse(response = connection.get("world.json").body)
  end

  def national
    parse(connection.get("national.json").body)
  end

  def politics
    parse(connection.get("politics.json").body)
  end

  def business
    parse(connection.get("business.json").body)
  end

  def technology
    parse(connection.get("technology.json").body)
  end

  private

  def parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end