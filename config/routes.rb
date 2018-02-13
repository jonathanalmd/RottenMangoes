
RottenMangoes::Application.routes.draw do
  # get 'users/show'

  # get 'actors/show'

  # get 'actors/new'

  # get 'actors/create'

  # get 'actors/edit'

  # Nested resources: a review belongs to movie
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :actors

  root to: 'movies#index'

end