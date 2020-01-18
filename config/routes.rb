Rails.application.routes.draw do
  devise_for :users
  get 'events/index'
  get 'events/new'
  # get 'events/create'
  post '/events' => 'events#create' 
  # get 'events/show'
  get 'events/:id' => 'events#show'
  resources :events
  root :to => "tickets#index" 
  resources :tickets
  
  # root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
