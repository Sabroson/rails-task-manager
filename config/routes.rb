Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # show all
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # form create new
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # action create new
  post 'tasks', to: 'tasks#create'

  # show one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # form edit one
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # action update one
  patch 'tasks/:id', to: 'tasks#update'

  # delete one
  delete 'tasks/:id', to: 'tasks#destroy'
end
