Rails.application.routes.draw do
  root to: 'tasks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
#   IN console type "rails routes"
#   Prefix Verb   URI Pattern               Controller#Action
#   root      GET    /                         tasks#index
#   tasks     GET    /tasks(.:format)          tasks#index
#             POST   /tasks(.:format)          tasks#create
#   new_task  GET    /tasks/new(.:format)      tasks#new
#   edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#   task      GET    /tasks/:id(.:format)      tasks#show
#             PATCH  /tasks/:id(.:format)      tasks#update
#             PUT    /tasks/:id(.:format)      tasks#update
#             DELETE /tasks/:id(.:format)      tasks#destroy

end
