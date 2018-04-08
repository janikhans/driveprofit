Rails.application.routes.draw do
  devise_for :brands, path: :brands
  devise_for :users,
    path: :users,
    controllers: { sessions: 'users/sessions' }
  get 'request' => 'leads#new'

  resources :users

  namespace :app do
    resources :contracts
    resources :campaigns
    resources :users, only: :show
    resource :dashboard
  end
  # resources :brands, only: [] do
  #   resources :campaigns, except: :index
  # end

  resources :leads, only: :create
  resources :pages, only: :index
  root 'pages#index'
end
