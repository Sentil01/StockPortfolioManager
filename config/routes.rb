Rails.application.routes.draw do

  resources :stocks
  root 'home#index'
  devise_for :users
  get 'search_stocks',to: 'stocks#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
