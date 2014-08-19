Rails.application.routes.draw do
  
  ActiveAdmin.routes(self)
  devise_for :users, skip: :registrations
  devise_for :visitors, skip: [:sessions]
  devise_for :admins, skip: [:registrations, :sessions]

  root to: 'pages#index'

  # namespace :admin do 
  # 	resources :looks
  # 	resources :influencers do 
  #     resources :looks
  #   end
  # end

  resources :looks
  scope :looks do 
  	resources :categories, only: :show, as: :by_category
  end
  resources :influencers
end
