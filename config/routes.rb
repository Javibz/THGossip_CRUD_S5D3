Rails.application.routes.draw do
  root 'static_pages#home'
  resources :gossips
  get '/:id', to: 'gossips#show'
end
