Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'users/registrations', passwords: 'users/passwords' }

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  root to: "awards#index"

  # test fetch nominees button
  get "/fetch_mcountdown_nominees" => 'awards#fetch_mcountdown_nominees', as: 'fetch_mcountdown_nominees'

  # choose nomination cycle in awards index
  get "/from_nomination_cycle" => 'awards#from_nomination_cycle', as: 'fetch_nominees'

  # sign in modal
  get "award_nominees/sign_in_modal" => 'award_nominees#sign_in_modal', :as => 'sign_in_modal'

  # add to cart modal
  get "award_nominees/add_to_cart_modal" => 'award_nominees#add_to_cart_modal', :as => 'add_to_cart_modal'

  get "mylistings" => 'listings#current_user_listings', :as => 'mylistings'

  get "myrequests" => 'requests#current_customer_requests', :as => 'myrequests'

  patch 'myrequests' => 'requests#approve_request'

  post '/requests/:id/charge' => 'charges#create', :as => 'request_charged'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards do
    resources :nominations, :controller => "award_nominations"
  end
  resources :awards do
    resources :nominees, :controller => "award_nominees"
  end
  resources :nominations
  resources :admins

  resources :listings do
    resources :requests
  end

  resources :requests

  resources :charges
end
