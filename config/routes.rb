Rails.application.routes.draw do
  resources :awards
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'welcome/hello'
  root to: "awards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "api/fake_nominations" => "nominations#fake_nominations"
  resources :nominations
end
