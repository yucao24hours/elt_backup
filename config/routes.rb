Rails.application.routes.draw do
  get '/auth/:provider/callback/' => 'sessions#create'
  get 'signin'      => 'sessions#new'
  delete '/signout' => 'sessions#destroy'

  mount RailsAdmin::Engine => '/yamatoji', as: 'rails_admin'

  devise_for :yamatojis
  root 'vote_targets#index'

  resources :votes, except: %i(index destroy)
  resources :vote_targets, only: %i(index)

  resources :result_targets, only: %i(index)
  resources :results, only: %i(index show)
end
