Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'menu', to: 'pages#menu'
get 'carte', to: 'pages#carte'
get 'joined', to: 'pages#joined'
get 'connection', to: 'pages#connection'
get 'panier', to: 'pages#panier'
end
