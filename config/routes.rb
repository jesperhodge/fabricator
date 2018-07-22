# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :users, only: [] do
    collection do
      get :current_user
      post :login, controller: 'user_sessions'
      post :logout, controller: 'user_sessions'
    end
  end

  post 'test', to: 'home#test'
  match '*path', to: 'home#index', via: :get
end
