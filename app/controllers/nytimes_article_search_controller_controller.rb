class NytimesArticleSearchControllerController < ApplicationController
  def index
    @search_articles = NytimesArticle.query(params["q"])[:response]
  end

end
