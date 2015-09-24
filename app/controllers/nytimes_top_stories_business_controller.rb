class NytimesTopStoriesBusinessController < ApplicationController
  def index
    @business_articles = NytimesTopStory.all_business[:results]
  end
end
