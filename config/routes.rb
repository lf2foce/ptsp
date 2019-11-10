Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
  	resources :posts
  end
  get 'project/index'
  root to: "home#index", as: 'home'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
