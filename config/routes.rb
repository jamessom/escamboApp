Rails.application.routes.draw do
  namespace :site do
    get 'home', to: 'home#index'
  end

  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :admins, path: 'admin', path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :members

  root 'site/home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
