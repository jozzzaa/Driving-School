Rails.application.routes.draw do

  resources :sms
  resources :emails
  resources :locations
  resources :appointments
  resources :instructors
  # resources :students
  # resources :leads
  resources :subscriptions

  namespace :api do
    resources :leads
  end

  # HomePage and Information
  get '/', to: 'application#index'

  # Student Onboarding and Leads
  get '/get-started', to: 'students#start'
  get '/more-info', to: 'students#lead'
  get '/booking', to: 'students#new'

  # Login
  get '/login', to: 'application#login'


  # dashboard
  # get '/dashboard', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW/:id', to: 'dashboard#lead'



  # getting the login form
  get '/session/new', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'

  # lead handler - Current
  post '/api/leads', to: 'api/leads#create'
  post '/api/leads_2', to: 'api/leads#edit_stage2'
  post '/api/leads_3', to: 'api/leads#edit_stage3'

end
