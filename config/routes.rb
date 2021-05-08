Rails.application.routes.draw do
  get 'groups/new'
  root 'home#index'
  resources :groups

  get 'create_group', to: 'groups#new'
  post 'create_group', to: 'groups#create'

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
end
