Rails.application.routes.draw do
  root to: 'categories#index'

  resources :users do
    resources :posts
  end

  resources :posts do
  end

  resources :categories do
    resources :posts
  end

  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#signin!'
  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#signup!'
  get '/signout', to: 'users#signout'

end
