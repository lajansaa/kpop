Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions' }

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  root to: "awards#index"

  namespace :api do
    namespace :v1 do

      resources :awards do
        resources :nominations, :controller => "award_nominations"
      end

      resources :awards do
        resources :nominees, :controller => "award_nominees"
      end

      resources :nominations
      resources :admins
      resources :listings
      
      # track award nominees
      post "awards/:award_id/nominees/:nominee_id/track" => 'award_nominees#track', :as => 'track_award_nominee'

    end
  end

  # test fetch nominees button
  get "/fetch_mcountdown_nominees" => 'awards#fetch_mcountdown_nominees', as: 'fetch_mcountdown_nominees'

  # choose nomination cycle in awards index
  get "/from_nomination_cycle" => 'awards#from_nomination_cycle', as: 'fetch_nominees'

  # sign in modal
  get "award_nominees/sign_in_modal" => 'award_nominees#sign_in_modal', :as => 'sign_in_modal'

  # add to cart modal
  get "award_nominees/add_to_cart_modal" => 'award_nominees#add_to_cart_modal', :as => 'add_to_cart_modal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
