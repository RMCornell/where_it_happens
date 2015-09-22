class NytimesNewswireController < ApplicationController
  def index
    @articles = NytimesNewswire.all
  end
end
