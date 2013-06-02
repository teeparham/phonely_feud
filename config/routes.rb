PhonelyFeud::Application.routes.draw do
  root 'numbers#index'
  resources :numbers, only: [:index, :show, :create] do
    resources :comments, only: [:create]
  end

end
