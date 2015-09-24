Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'nytimes_newswire#index'
  get '/', to: "nytimes_newswire#index"
  get '/newswires', as: "newswires", to: "nytimes_newswire#index"

  get '/topworldstories', as: "topworldstories", to: "nytimes_top_stories_world#index"
  get '/topnationstories', as: "topnationstories", to: "nytimes_top_stories_nation#index"

end
