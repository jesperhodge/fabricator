Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  post 'test', to: 'home#test'
  match '*path', to: 'home#index', via: :get
end
