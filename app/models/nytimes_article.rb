class NytimesArticle

  def self.service
    @service ||= NytimesArticlesService.new
  end

  def self.all
    service.articles
  end

  def self.find
    service.article(id)
  end
end