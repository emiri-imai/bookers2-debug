Rails.application.routes.draw do
  resources :books
  devise_for :users
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  root 'homes#top'
end