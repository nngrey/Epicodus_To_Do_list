ToDo::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks/:id', {:via => :get, :to => 'tasks#show'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
end
