Rails.application.routes.draw do
  devise_for :admins,
             :skip => [:registrations],
             path: 'admin',
             path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :members

  root 'site/home#index'
  get 'backoffice', to: 'backoffice/dashboard#index'


  namespace :site do
    get 'home', to: 'home#index'
  end

  namespace :backoffice do
    get 'backoffice', to: 'backoffice/dashboard#index'
    get 'dashboard', to: 'dashboard#index'

    resources :categories, except: [:show, :destroy]
    resources :admins, except: [:show, :destroy]
  end
end
