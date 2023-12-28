Rails.application.routes.draw do
  root 'projects#index'
  get 'projects/new', to: 'projects#new', as: 'new_project'
  get 'projects/:id/new_task', to: 'tasks#new', as: 'new_project_task'
  get 'projects/:project_id/tasks/:id', to: 'tasks#show', as: 'project_task'
  post 'projects/:project_id/tasks/:id/update_status', to: 'tasks#update_status', as: 'update_status_task'
  resources :projects do
    resources :tasks, only: [:show,:create, :destroy]
  end

end