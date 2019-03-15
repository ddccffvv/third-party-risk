Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'services/index'
  get 'services/show'
  get 'companies/index'
  get 'companies/show'
  get 'countries/index'
  get 'countries/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
