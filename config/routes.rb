Rails.application.routes.draw do
  root 'static_pages#home'
  resources :static_pages
  resources :gossips
  get 'gossips', to: 'gossips#index'
  get 'gossips/:id', to: 'gossips#show'
end
