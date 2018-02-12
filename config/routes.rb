
RottenMangoes::Application.routes.draw do
  
  get 'reviews/new'

  get 'reviews/create'

  # Nested resources
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

end


# Rails.application.routes.draw do
  # get 'reviews/new'

  # get 'reviews/create'

#   get 'sessions/new'

#   get 'sessions/create'

#   # get 'movies/index'

#   # get 'movies/show'

#   # get 'movies/new'

#   # get 'movies/edit'

#   resources :movies
#   resources :users,     only: [:new, :create]
#   resources :sessions,  only: [:new, :create, :destroy]
# end
