Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "awards#index"
  
  get 'api/v1/update_nominations' => 'nominations#update_nominations'
  get 'api/v1/get_nominations' => 'nominations#get_nominations'
  get 'api/v1/get_artiste_info' => 'artistes#profile_img_fetcher'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards do
    resources :nominations, :controller => "award_nominations"
  end
  resources :nominations
end
