Rails.application.routes.draw do
  root to: 'categories#index'

  resources :users do
    resources :posts, only: [:index]
  end

  resources :posts do
  end

  resources :categories do
    resources :posts
  end

  #user authentication routes
  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#signin!'
  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#signup!'
  get '/signout', to: 'users#signout'

end
