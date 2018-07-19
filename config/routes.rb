# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :admins, only: [] do
    collection do
      get :current_admin
      post :login, controller: 'admin_sessions'
      post :logout, controller: 'admin_sessions'
    end
  end

  post 'test', to: 'home#test'
  match '*path', to: 'home#index', via: :get
end
