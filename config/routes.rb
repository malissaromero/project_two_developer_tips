Rails.application.routes.draw do
  root to: 'posts#index'

  resources :users do
    # for "my" posts,  user_posts_path(user) -> /users/:user_id/posts/
    resources :posts, only: [:index]
  end

  resources :posts do
    # resources :comments
  end

  get '/signin', to: 'users#signin_prompt'
  post '/signin', to: 'users#signin'
  get '/signout', to: 'users#signout'

  ## YES mine? /users/:user_id/posts/
  ## YES      /posts/:id/edit # current_user.posts.find(params[:id])
end
