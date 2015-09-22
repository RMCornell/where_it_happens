class NytimesNewswire
  def self.service
    @service ||= NytimesNewswireService.new
  end

  def self.all
    service.all_articles
  end
end