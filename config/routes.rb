Rails.application.routes.draw do
  devise_for :authors
  resources :pages
  root to: 'pages#index'

end
