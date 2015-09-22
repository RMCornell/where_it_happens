Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'nytimes_newswire#index'
  get '/', to: "nytimes_newswire#index"
  get '/newswires', as: "newswires", to: "nytimes_newswire#index"
  get '/newswires/:id', as: "newswire", to: 'nytimes_newswire#show'

end
