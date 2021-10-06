Rails.application.routes.draw do
  resources :winepurchases
  resources :artpieces
  resources :artsessions
  resources :brandofwines
  resources :customergroups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
