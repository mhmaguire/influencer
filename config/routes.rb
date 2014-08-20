Rails.application.routes.draw do
  
  ActiveAdmin.routes(self)
  
  devise_for :users, skip: :registrations
  devise_for :visitors, skip: [:sessions]

  root to: 'pages#index'

  resources :looks
  scope :looks do 
  	resources :categories, only: :show, as: :by_category
  end
  resources :influencers
end
