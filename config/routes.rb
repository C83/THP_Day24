Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'static_pages#home'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users', to: 'users#create', as: 'users'
  get 'users/:id', to: 'users#show', as: 'user'
  
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'

  get 'events/new', to: 'events#new', as: 'new_event'
  get 'events', to: 'events#index', as: 'events'
  post 'events', to: 'events#create'
  get 'events/:id', to: 'events#show', as: 'event'
end
