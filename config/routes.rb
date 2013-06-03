class NumberRouteConstraint
  def self.matches?(request)
    id = request.params[:id]
    id.length >= 10 && !id.include?("/")
  end
end

PhonelyFeud::Application.routes.draw do
  root 'numbers#index'
  resources :numbers, only: [:index, :create] do
    resources :comments, only: [:create]
  end

  # route /123-123-1234
  get '*id' => 'numbers#show', constraints: NumberRouteConstraint, as: :number
end

