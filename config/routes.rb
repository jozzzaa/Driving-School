Rails.application.routes.draw do
  
  resources :subscriptions

  get '/', to: 'application#index'

end
