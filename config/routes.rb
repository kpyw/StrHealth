StrHealth::Application.routes.draw do

root 'exercises#index'

get '/about' => 'pages#about'
get '/signin' => 'pages#signin'

resources :exercises


end
