Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "transactions#index"
  resources :categories
  resources :items
  resources :comments
  resources :user2s
  resources :users
  resources :transactions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
