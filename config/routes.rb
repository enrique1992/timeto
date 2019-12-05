Rails.application.routes.draw do
  resources :notes
  root 'principal#home'
  resources :users, except: [:new]
  resources :tasks

  get 'signin', to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
