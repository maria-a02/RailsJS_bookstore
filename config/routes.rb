Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :books
  patch "/books/:id/reserve", to: "books#reserve", as: "reserve"
  patch "/books/:id/anti_reserve", to: "books#anti_reserve", as: "anti_reserve"
  patch "/books/:id/buy", to: "books#buy", as: "buy"
  patch "/books/:id/anti_buy", to: "books#anti_buy", as: "anti_buy"
  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
