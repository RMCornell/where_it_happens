class NytimesNewswireController < ApplicationController
  def index
    @articles = NytimesNewswire.all
  end

  def map(geo_facet)
    @map = Googlemap.article_location(geo_facet)
  end

end
