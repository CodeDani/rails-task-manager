Rails.application.routes.draw do
  # Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # Read
  get 'index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show'
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'task'
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
