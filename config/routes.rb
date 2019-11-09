Rails.application.routes.draw do
  get 'project/index'
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
  	resources :posts
  end
  root to: "home#index", as: 'home'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
