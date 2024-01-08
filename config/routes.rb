Rails.application.routes.draw do
  # resources :providers
  # resources :orgs
  # resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/orgs', to: 'orgs#index'
  get '/orgs/:id', to: 'orgs#show'
  get '/providers', to: 'providers#index'
  get '/providers/:id', to: 'providers#show'
  get '/patients', to: 'patients#index'
  get '/patients/:id', to: 'patients#show'
  post '/patients', to: 'patients#create'
  # Defines the root path route ("/")
  root "orgs#index"
end
