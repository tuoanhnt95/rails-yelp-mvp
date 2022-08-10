Rails.application.routes.draw do
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create', as: :restaurants
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
