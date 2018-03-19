Rails.application.routes.draw do
  devise_for :authors
  resources :pages
  resources :comics
  root to: 'pages#index'

end
