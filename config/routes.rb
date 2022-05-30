Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "/aboout" => "homes#about"

  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]

end
