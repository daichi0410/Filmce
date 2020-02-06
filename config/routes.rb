Rails.application.routes.draw do
  devise_for :users
  get "posts/index"
  root "posts#index"
  resources :users, only: [:edit, :update, :show]
  resources :feelings, only: [:new,:show, :index, :create]
  resources :movies, only: [:index,:create, :show] do
   resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
