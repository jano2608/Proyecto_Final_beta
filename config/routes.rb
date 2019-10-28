Rails.application.routes.draw do
  get 'users', to: 'users#index', as: 'user'
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :posts

  post 'like/:post_id', to: 'likes#create', as: 'likes'
  get 'users', to: 'users#show', as:'show_like'
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
