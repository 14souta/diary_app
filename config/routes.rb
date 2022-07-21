Rails.application.routes.draw do
  root to: "diaries#index"
  resources :diaries, only: [:new, :create, :edit, :update, :show]
end
