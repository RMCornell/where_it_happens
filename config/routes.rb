Rails.application.routes.draw do
  root 'nytimes_newswire#index'

  get '/newswire', to: "nytimes_newswire#index"
  get '/newswire/:url', to: 'nytimes_newswire#show'

end
