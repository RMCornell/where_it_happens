Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'nytimes_newswire#index'
  get '/', to: "nytimes_newswire#index"
  get '/newswires', as: "newswires", to: "nytimes_newswire#index"

  get '/topworldstories', as: "topworldstories", to: "nytimes_top_stories_world#index"
  get '/topnationstories', as: "topnationstories", to: "nytimes_top_stories_nation#index"
  get '/topbusinessstories', as: "topbusinessstories", to: "nytimes_top_stories_business#index"
  get '/toptechnologystories', as: "toptechnologystories", to: "nytimes_top_stories_technology#index"
  get '/toppoliticstories', as: "toppoliticstories", to: "nytimes_top_stories_politic#index"

  get '/search_articles', as: "search_articles", to: "nytimes_article_search#index"

end
