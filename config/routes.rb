Rails.application.routes.draw do
  get 'user/show'
  get 'session/create'
  get 'session/destroy'
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # the session routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'
end
