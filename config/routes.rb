Rails.application.routes.draw do
  devise_for :users
  root to: "diaries#index"
  resources :diaries, only: [:new, :create, :edit, :update, :show, :destroy]
end
