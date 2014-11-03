Rails.application.routes.draw do
  root 'targets#index'
  resources :votes, except: %i(index destroy)
  resources :targets, only: %i(index)
end
