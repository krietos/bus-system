BusSystem::Application.routes.draw do
  resources :stations
  resources :stops
  resources :lines
  resources :buses

end
