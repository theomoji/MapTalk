Rails.application.routes.draw do
  resources :imagetags
  resources :hashtags
  resources :images
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
