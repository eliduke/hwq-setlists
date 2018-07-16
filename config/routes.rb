Rails.application.routes.draw do
  root "setlists#index"

  resources :songs do
    delete "audio/:id", action: :audio_destroy, as: :audio_destroy
  end

  resources :setlists do
    delete "audio/:id", action: :audio_destroy, as: :audio_destroy
  end
end
