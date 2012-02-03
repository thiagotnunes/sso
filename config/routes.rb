Sso::Application.routes.draw do
  get "secure/index"

  get "home/index"

  match "/auth/:provider/callback" => "sessions#create"
  match "/sign_in" => "sessions#new", :as => :sign_in
  match "/sign_out" => "sessions#destroy", :as => :sign_out

  resources :identities

  root :to => "home#index"
end
