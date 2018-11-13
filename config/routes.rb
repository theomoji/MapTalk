Rails.application.routes.draw do
  resources :imagetags
  resources :hashtags
  resources :images
  resources :comments
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :sessions, only: [:new, :create]
  delete "/sessions", to: "sessions#destroy", as: "session"
  resources :comments, only: [:index, :destroy]

end
