Rails.application.routes.draw do

  resources :leads
  resources :subscriptions

  namespace :api do
    resources :leads
  end

  get '/', to: 'application#index'

  # lead handler
  post '/api/leads', to: 'api/leads#create'
  post '/api/leads_2', to: 'api/leads#edit_stage2'
  post '/api/leads_3', to: 'api/leads#edit_stage3'


end
