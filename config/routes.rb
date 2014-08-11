Rails.application.routes.draw do
  root to: 'pages#index'

  namespace :admin do 
  	resources :looks
  	resources :influencers
  end

  resources :looks
  resources :influencers
end
