Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
  # resources :meanderings
  resources :users, only: [:index, :create, :update, :destroy]
  resources :types, only: [:index]

  
  get '/users/:username', to: 'users#show'
  get '/:username/scraps', to: 'meanderings#scraps'
  post '/:username/scraps', to: 'meanderings#create_scraps'
  get '/:username/scraps/:id', to: 'meanderings#show_scrap'
  patch '/:username/scraps/:id', to: 'meanderings#update_meandering'
  delete '/:username/scraps/:id', to: 'meanderings#delete_meandering'
  get '/:username/possibilities', to: 'meanderings#possibilities'
  post '/:username/possibilities', to: 'meanderings#create_possibilities'
  get '/:username/possibilities/:id', to: 'meanderings#show_possibility'
  patch '/:username/possibilities/:id', to: 'meanderings#update_meandering'
  delete '/:username/possibilities/:id', to: 'meanderings#delete_meandering'
  get '/:username/constraints', to: 'meanderings#constraints'
  post '/:username/constraints', to: 'meanderings#create_constraints'
  get '/:username/constraints/:id', to: 'meanderings#show_constraint'
  patch '/:username/constraints/:id', to: 'meanderings#update_meandering'
  delete '/:username/constraints/:id', to: 'meanderings#delete_meandering'
  get '/:username/undecideds', to: 'meanderings#undecideds'
  get '/:username/undecideds/:id', to: 'meanderings#show_undecided'
  post '/:username/undecideds', to: 'meanderings#create_undecideds'
  patch '/:username/undecideds/:id', to: 'meanderings#update_meandering'
  delete '/:username/undecideds/:id', to: 'meanderings#delete_meandering'
  get '/:username/inspirings', to: 'meanderings#inspirings'
  post '/:username/inspirings', to: 'meanderings#create_inspirings'
  get '/:username/inspirings/:id', to: 'meanderings#show_inspiring'
  patch '/:username/inspirings/:id', to: 'meanderings#update_meandering'
  delete '/:username/inspirings/:id', to: 'meanderings#delete_meandering'
  get '/:username/uninspirings', to: 'meanderings#uninspirings'
  post '/:username/uninspirings', to: 'meanderings#create_uninspirings'
  get '/:username/uninspirings/:id', to: 'meanderings#show_uninspiring'
  patch '/:username/uninspirings/:id', to: 'meanderings#update_meandering'
  delete '/:username/uninspirings/:id', to: 'meanderings#delete_meandering'
  get '/:username/musings', to: 'meanderings#musings'
  post '/:username/musings', to: 'meanderings#create_musings'
  get '/:username/musings/:id', to: 'meanderings#show_musing'
  patch '/:username/musings/:id', to: 'meanderings#update_meandering'
  delete '/:username/musings/:id', to: 'meanderings#delete_meandering'
  get '/:username/techniques', to: 'meanderings#techniques'
  post '/:username/techniques', to: 'meanderings#create_techniques'
  get '/:username/techniques/:id', to: 'meanderings#show_technique'
  patch '/:username/techniques/:id', to: 'meanderings#update_meandering'
  delete '/:username/techniques/:id', to: 'meanderings#delete_meandering'
  get '/:username/landscapes', to: 'meanderings#landscapes'
  post '/:username/landscapes', to: 'meanderings#create_landscapes'
  get '/:username/landscapes/:id', to: 'meanderings#show_landscape'
  patch '/:username/landscapes/:id', to: 'meanderings#update_meandering'
  delete '/:username/landscapes/:id', to: 'meanderings#delete_meandering'
  get '/:username/worlds', to: 'meanderings#worlds'
  post '/:username/worlds', to: 'meanderings#create_worlds'
  get '/:username/worlds/:id', to: 'meanderings#show_world'
  patch '/:username/worlds/:id', to: 'meanderings#update_meandering'
  delete '/:username/worlds/:id', to: 'meanderings#delete_meandering'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
