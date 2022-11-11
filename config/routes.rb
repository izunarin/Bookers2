Rails.application.routes.draw do

  get "homes/about"=>"homes#about", as: "about"
  devise_for :users
  root to: 'homes#top'
  resources :books,only: [:new, :create, :index, :destroy]do
  end
  resources :users,only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
