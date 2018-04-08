Rails.application.routes.draw do

  get 'request' => 'leads#new'
  resources :leads, only: :create
  resources :pages, only: :index
  root 'pages#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
