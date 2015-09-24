class NytimesArticleSearchController < ApplicationController
  def index
    @search_articles = NytimesArticle.query(params[:q])[:response][:docs]
  end

end
