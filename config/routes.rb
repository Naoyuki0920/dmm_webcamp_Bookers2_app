Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users
  resources :users
  resources :books
  get "home/about", to: "homes#about"
  resources :book, only: [:new, :create, :index, :show, :destroy] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
