Rails.application.routes.draw do
  resources :record_blocks, only: [:index]
  resources :record_settings, only: [:index]
  get 'daily_record/:date', to: 'daily_records#show'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
