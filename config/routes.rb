Rails.application.routes.draw do
  get "live_scores/index"
  get "/articles" => "articles#index"
  resources :live_scores, only: [:index]
  get "articles/show"
  get "articles/new"
  get "articles/create"
  devise_for :users

  post "/newsletter_subscribe", to: "newsletter#subscribe"


  get"/about" => "about#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/home' => 'home#index'
  
  resources :live_scores, only: [:index]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :articles, only: [:index, :show, :new, :create] 
  root 'articles#index'
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
