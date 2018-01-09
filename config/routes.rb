Rails.application.routes.draw do

get '/home', to: 'home#welcome'

post '/registration', to: 'registration#create_user'
get '/registration', to: 'home#welcome'

post '/login', to: 'session#create'
get '/logout', to: 'session#destroy'
get '/login', to: 'home#welcome'

get '/user_page', to: 'users#page'
get '/list', to: 'users#questions_list'
post '/edit', to: 'users#edit'
get '/edit', to: 'users#page'
resources :entries, defaults: { format: 'js' }
end

