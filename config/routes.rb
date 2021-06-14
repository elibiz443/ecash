Rails.application.routes.draw do
	get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  resources :homes
  resources :dashboards
  
  # root 'homes#index'
  root 'dashboards#index'
end
