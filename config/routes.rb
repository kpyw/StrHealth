StrHealth::Application.routes.draw do



root 'pages#start'

get '/about' => 'pages#about'

get '/login' => 'sessions#new'
get '/logout' => 'sessions#destroy'
post '/sessions' => 'sessions#create'

get '/start' => 'pages#start'

resources :exercises
resources :workouts
resources :users

end
