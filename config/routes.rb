Rails.application.routes.draw do
  namespace :admin do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:create]
    resources :dashboards

    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    root 'dashboards#index'
  end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:create]
  resources :home
  resources :userdashboards
  resources :sends
  resources :success, only:[:index]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  root 'userdashboards#index'
end
