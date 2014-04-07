BusSystem::Application.routes.draw do
  resources :stations
  resources :stops, only: [:index, :create, :destroy]
  resources :lines
  resources :buses


end
