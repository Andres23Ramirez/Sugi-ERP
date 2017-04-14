Rails.application.routes.draw do
  resources :contrac_establishments
  resources :bills
  resources :establishments

  get 'home/index'

  get 'administration/index'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
