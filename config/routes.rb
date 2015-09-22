Rails.application.routes.draw do
  root 'nytimes_newswire#index'

  get '/newswires', as: "newswires", to: "nytimes_newswire#index"
  get '/newswires/:id', as: "newswire", to: 'nytimes_newswire#show'

end
