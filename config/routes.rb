Rails.application.routes.draw do
  resources :users
  resources :sends
	get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  resources :home
  resources :dashboards
  resources :success, only:[:index]

  root 'dashboards#index'
end
