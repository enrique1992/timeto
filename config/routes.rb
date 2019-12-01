Rails.application.routes.draw do
  resources :notes
  root 'principal#home'
  resources :users, except: [:new]
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
