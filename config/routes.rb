Rails.application.routes.draw do
  root "setlists#index"

  resources :songs
  resources :setlists
end
