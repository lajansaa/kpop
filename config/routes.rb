Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "awards#index"
  
  get 'api/v1/update_nominations' => 'nominations#update_nominations'
  get 'api/v1/get_nominations' => 'nominations#get_nominations'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards
  resources :nominations
end
