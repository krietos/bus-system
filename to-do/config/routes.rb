ToDo::Application.routes.draw do

  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  match('tasks/:id/delete', {:via => :delete, :to => 'tasks#destroy'})

  match('lists', {:via => :post, :to => 'lists#create'})
  match('lists', {:via => :get, :to => 'lists#index'})
  match('lists/:id', {:via => :get, :to => 'lists#show'})
  match('lists/:id/delete', {:via => :delete, :to => 'lists#destroy'})
end
