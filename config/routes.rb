Rails.application.routes.draw do
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants/:id', to: 'restaurants#create', as: :restaurant
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  get 'restaurants/:id', to: 'restaurants#show'

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :review
end
