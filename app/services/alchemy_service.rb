class AlchemyService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("https://gateway-a.watsonplatform.new/calls/data/GetNews")
    connection.header[:content_type] = "application/json"
    connection.request_options.timeout = 1000
    connection.query[:apikey] = ENV["alchemy_api_key"]
    connection.query[:outputMode]= "json"
    connection.query[:start] = "now-2h"
    connection.query[:end] = "now"
    connection.query[:maxResults] = "1"
  end

  def obama
    response = connection.get("") do |req|
      req.query["q.enriched.url.title"] = "Obama"
    end
    response.body
    # parse(response.body)
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
