Rails.application.routes.draw do

  devise_for :brands, path: :brands
  devise_for :users, path: :users
  get 'request' => 'leads#new'

  resources :users

  resource :dashboard
  
  resources :leads, only: :create
  resources :pages, only: :index
  root 'pages#index'
end
