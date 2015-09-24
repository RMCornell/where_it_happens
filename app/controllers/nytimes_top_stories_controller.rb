class NytimesTopStoriesController < ApplicationController
  def index

  end

  def world_index
    @world_articles = NYtimesTopStory.all_world
  end

end