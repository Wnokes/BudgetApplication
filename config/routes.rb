Rails.application.routes.draw do

  get 'pages/user_dash'

  get 'pages/home'

  get 'pages/error'

  resources :debt_accounts

  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
end

