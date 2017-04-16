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
  get 'administration/index'

  root to: 'admin/dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
