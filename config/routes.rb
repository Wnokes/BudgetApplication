Rails.application.routes.draw do

  resources :amortization_schedules
  get 'pages/user_dash'

  get 'pages/home'

  get 'pages/error'

  resources :debt_accounts

  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
end

