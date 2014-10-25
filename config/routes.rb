Rails.application.routes.draw do
  root 'target#index'
  resources :votes, except: %i(index destroy)
end
