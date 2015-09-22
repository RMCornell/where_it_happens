class NytimesNewswire
  def self.service
    @service ||= NytimesNewswireService.new
  end

  def self.all
    service.all_articles
  end

  def self.find
    service.article(url)
  end
end