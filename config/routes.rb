Rails.application.routes.draw do
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :classrooms, only: [:show]
  resources :students
end
