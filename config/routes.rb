Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  # get 'events/create'
  post '/events' => 'events#create' 
  # get 'events/show'
  get 'events/:id' => 'events#show'
  resources :events
  root :to => "tickets#index" 
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
