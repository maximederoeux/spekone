Rails.application.routes.draw do
  resources :accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users

  match '/', to: 'visitors#index', constraints: { subdomain: '' }, via: [:get, :post, :put, :patch, :delete]
  match '/', to: 'accounts#show', constraints: { subdomain: /.+/ }, via: [:get, :post, :put, :patch, :delete]
end
