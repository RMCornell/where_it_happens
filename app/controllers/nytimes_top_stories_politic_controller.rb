class NytimesTopStoriesPoliticController < ApplicationController
  def index
    @politic_articles = NytimesTopStory.all_politics[:results]
  end
end
