Rails.application.routes.draw do
  resources :restaurants, only: %i[new create index show] do
    resources :reviews
  end

  post 'restaurant/:id', to: 'reviews#create'
end
