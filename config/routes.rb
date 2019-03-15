Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :services, only: [:index, :show]
  resources :companies, only: [:index, :show]

  root :to => 'companies#index'

end
