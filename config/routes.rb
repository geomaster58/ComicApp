Rails.application.routes.draw do
  devise_for :authors
  resources :pages
  resources :author_control
  root to: 'pages#index'

end
