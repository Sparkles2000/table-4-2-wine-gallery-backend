Rails.application.routes.draw do
  resources :winepurchases, only: [:index, :show, :create]
  resources :artpieces, only: [:index, :show, :create, :update, :destroy]
  resources :artsessions, only: [:index, :show, :create, :update, :destroy]
  resources :brandofwines, only: [:index, :show, :create, :update, :destroy]
  resources :customergroups, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
