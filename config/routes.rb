Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users', to: 'users#index', as: 'user'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :posts

  post 'like/:post_id', to: 'likes#create', as: 'likes'
  get 'users/show_like', to: 'users#show_like', as:'show_like'
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
