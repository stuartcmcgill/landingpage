BasicStarterTemplate::Application.routes.draw do
  get "admin" => "admin#index"
  resources :landing_pages

  resources :prospects

  devise_for :users
  root 'home#index'
end
