Rails.application.routes.draw do
  root 'vote_targets#index'
  resources :votes, except: %i(index destroy)
  resources :vote_targets, only: %i(index)
end
