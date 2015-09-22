class NytimesNewswireController < ApplicationController
  def index
    @articles = NytimesNewswire.all
  end

  def show
    @article = NytimesNewswire.find_by(url: params[:url])
  end
end
