Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "awards#index"
  
  get 'api/v1/update_nominations' => 'nominations#update_nominations'
  get 'api/v1/get_nominations' => 'nominations#get_nominations'
  get 'api/v1/get_artiste_info' => 'artistes#profile_img_mnet'
  get 'api/v2/get_artiste_info' => 'artistes#profile_img_kpop_scene'

  get 'awards/:id/:vote_start/:vote_end/:order(.:format)' => 'awards#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards do
    resources :nominations, :controller => "award_nominations"
  end
  resources :nominations
end
