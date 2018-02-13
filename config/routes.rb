
RottenMangoes::Application.routes.draw do
  get 'actors/show'

  get 'actors/new'

  get 'actors/create'

  get 'actors/edit'

  # Nested resources: a review belongs to movie
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'movies#index'

end


# Rails.application.routes.draw do
  get 'actors/show'

  get 'actors/new'

  get 'actors/create'

  get 'actors/edit'

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
