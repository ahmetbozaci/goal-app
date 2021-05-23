Rails.application.routes.draw do
  resources :goals
  get 'groups/new'
  root 'home#index'
  resources :groups
  
  get 'all_goal', to: 'goals#all_goal'
  get 'ancient_goals', to:'goals#index_ancient'
  
  get 'create_group', to: 'groups#new'
  post 'create_group', to: 'groups#create'

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
end
