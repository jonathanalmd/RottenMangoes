
RottenMangoes::Application.routes.draw do
  # namespace :admin do
  #   get 'users/show'
  # end

  # namespace :admin do
  #   get 'users/edit'
  # end

  # namespace :admin do
  #   get 'users/index'
  # end

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
  resources :session, only: [:new, :create, :destroy]

  resources :actors

  root to: 'movies#index'
  
  namespace :admin do
    resources :users, only: [:index, :edit, :show, :update, :destroy]
  end

end