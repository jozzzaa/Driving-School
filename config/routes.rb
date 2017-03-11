Rails.application.routes.draw do

  # resources :leads
  resources :subscriptions

  namespace :api do
    resources :leads
  end

  get '/', to: 'application#index'
  get '/free-lesson', to: 'application#lead'
  get '/login', to: 'application#login'
  # get '/dashboard', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW/:id', to: 'dashboard#lead'



  # getting the login form
  get '/session/new', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'

  # lead handler
  post '/api/leads', to: 'api/leads#create'
  post '/api/leads_2', to: 'api/leads#edit_stage2'
  post '/api/leads_3', to: 'api/leads#edit_stage3'

end
