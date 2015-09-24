class NytimesTopStoriesNationController < ApplicationController
  def index
    @nation_articles = NytimesTopStory.all_national[:results]
  end
end
