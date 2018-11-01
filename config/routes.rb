Rails.application.routes.draw do
  root 'static_pages#home'
  resources :gossips do
    resources :comments
  end
  # get '/:id', to: 'gossips#show'
end
