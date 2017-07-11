Rails.application.routes.draw do

  resources :campaigns
  resources :sms
  resources :emails
  resources :locations
  resources :appointments
  resources :instructors
  # resources :students
  # resources :leads
  resources :subscriptions
  resources :charges

  namespace :api do
    resources :leads
  end

  # HomePage and Information
  get '/', to: 'application#index'

  # Offer
  get "/o/:hash_token" => "application#index_offer", as: "/"

  # User Shares
  get "/s/:hash_token" => "application#index_share", as: "/"

  # Booking
  get '/booking-address', to: 'booking#address'
  get '/booking-time', to: 'booking#time'
  post '/booking-time', to: 'booking#time'
  get '/booking-confirmation', to: 'booking#thanks'

  # get '/booking-time', to: 'students#new'
  # post '/booking-time', to: 'students#new'
  # get 'booking-details', to: 'students#thanks'
  # get '/booking-confirmation', to: 'booksings#thanks'



  # Student Onboarding and Leads
  get '/get-started', to: 'students#start'
  get '/thank-you', to: 'students#thanks'
  get '/more-info', to: 'students#lead'
  get '/more-info-two', to: 'students#lead_two'
  get '/more-info-three', to: 'students#lead_three'
  # get '/booking', to: 'students#new'

  # Lead form
  post '/more-info-two', to: 'students#stage_one'
  post '/more-info-three', to: 'students#stage_two'
  post '/more-info-final', to: 'students#stage_three'

  # Login
  get '/login', to: 'application#login'


  # dashboard
  # get '/dashboard', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW', to: 'dashboard#index'
  get '/j42jvn590H23nfnuRVJNW/:id', to: 'dashboard#lead'
  delete '/remove-lead', to: 'dashboard#remove'



  # getting the login form
  get '/session/new', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'

  # Lead Handler - Current
  post '/api/leads', to: 'api/leads#create'
  post '/api/leads_2', to: 'api/leads#edit_stage2'
  post '/api/leads_3', to: 'api/leads#edit_stage3'

end
