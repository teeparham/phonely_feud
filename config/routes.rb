PhonelyFeud::Application.routes.draw do
  root 'welcomes#index'

  resources :numbers, only: [:show] do
    post :search
  end

end
