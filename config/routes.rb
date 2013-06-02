PhonelyFeud::Application.routes.draw do
  root 'numbers#index'
  resources :numbers, only: [:index, :show, :create]
end
