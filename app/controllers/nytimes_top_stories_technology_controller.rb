class NytimesTopStoriesTechnologyController < ApplicationController
  def index
    @technology_articles = NytimesTopStory.all_technology[:results]
  end
end
