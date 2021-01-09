Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ (all)
  get '/tasks', to: 'tasks#index'
  # CREATE ---  order is important: '/tasks/new' needs to come before 'tasks/:id'
  #             otherwise 'new' gets interpreted as an id (id can be anything, not just numbers)
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # READ (one)
  get '/tasks/:id', to: 'tasks#show', as: :task
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy'
end
