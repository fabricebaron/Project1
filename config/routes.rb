Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/home' => 'users#home'
  get 'users/login' => 'users#login'
  delete 'users/login' => 'users#logout'
  post 'users/login' => 'users#check'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'menu', to: 'pages#menu'
  get 'carte', to: 'pages#carte'
  get 'joined', to: 'pages#joined'
  get 'login', to: 'pages#login'
  get 'panier', to: 'pages#panier'
  # config/routes.rb
end
