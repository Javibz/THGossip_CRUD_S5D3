Rails.application.routes.draw do
  root 'static_pages#home'
  resources :static_pages
  resources :gossips
  get '/:id', to: 'gossips#show'
end
