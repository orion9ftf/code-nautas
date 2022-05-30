Rails.application.routes.draw do
  post 'user_courses/add_courses'
  post 'user_courses/destroy_courses'
  resources :courses
  resources :users
  #resources :user_courses, only: [:add_courses, :destroy_courses]
  root "users#index"
end
