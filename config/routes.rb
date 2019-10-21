Rails.application.routes.draw do
  get 'users', to: 'users#index', as: 'user'
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :posts
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
