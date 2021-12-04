Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "application#index"

  get '/local', to: 'dashboard#local'
  get '/produto', to: 'dashboard#produto'
  get '/praga', to: 'dashboard#praga'
  get '/incidente', to: 'dashboard#incidente'


  post '/create_local', to: 'dashboard#create_local'
  post '/create_produto', to: 'dashboard#create_produto'
  post '/create_praga', to: 'dashboard#create_praga'
  post '/create_incidente', to: 'dashboard#create_incidente'
end
