Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "/about" => "homes#about"

  resources :users, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]

end
