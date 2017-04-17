Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "awards#index"
  
  get "/from_nomination_cycle" => 'awards#from_nomination_cycle', as: 'fetch_nominees'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :awards do
    resources :nominations, :controller => "award_nominations"
  end
  resources :awards do
    resources :nominees, :controller => "award_nominees"
  end
  resources :nominations
  resources :admins
end
