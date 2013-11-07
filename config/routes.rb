StrHealth::Application.routes.draw do

  # Routes for the Workout resource:
  # CREATE
  get '/workouts/new', controller: 'workouts', action: 'new', :as => 'new_workout'
  post '/workouts', controller: 'workouts', action: 'create'

  # READ
  get '/workouts', controller: 'workouts', action: 'index'
  get '/workouts/:id', controller: 'workouts', action: 'show', :as => 'workout'

  # UPDATE
  get '/workouts/:id/edit', controller: 'workouts', action: 'edit', :as => 'edit_workout'
  patch '/workouts/:id', controller: 'workouts', action: 'update'

  # DELETE
  delete '/workouts/:id', controller: 'workouts', action: 'destroy'
  #------------------------------

root 'exercises#index'

get '/about' => 'pages#about'
get '/signin' => 'pages#signin'

resources :exercises


end
