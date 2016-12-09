Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "awards#index"
  
  get 'api/v1/update_nominations' => 'nominations#nominations_fetcher'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards
  resources :nominations
end
