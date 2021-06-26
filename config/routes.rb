Rails.application.routes.draw do
  namespace :admin do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:create]
    resources :dashboards
    resources :editusers
    resources :homes

    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    root 'dashboards#index'
  end

  resources :dashboards
  resources :users, only: [:new, :create]
  resources :sessions, only: [:create]
  resources :homes
  resources :sends
  resources :success, only:[:index]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  root 'dashboards#index'
end
