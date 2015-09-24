class NytimesArticle

  def self.service
    @service ||= NytimesArticlesService.new
  end

  def self.query(term)
    service.query_term(term)
  end
end