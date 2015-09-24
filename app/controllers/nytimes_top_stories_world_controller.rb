class NytimesTopStoriesWorldController < ApplicationController
  def index
    @world_articles = NytimesTopStory.all_world[:results]
  end

end
