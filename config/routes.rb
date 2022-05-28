Rails.application.routes.draw do
  resources :courses
  resources :users

  root "users#index"
end
