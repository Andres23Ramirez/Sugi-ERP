Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :contract_employees
  resources :employees
  resources :outflows
  resources :entries
  get 'financial/index'
  resources :contrac_establishments
  resources :bills
  resources :establishments
  resources :administration
  root to: 'admin/dashboard#index'
  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
