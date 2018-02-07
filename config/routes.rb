Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :stations, only: [:index, :show, :create, :destroy]
    resources :searches, only: [:index]
  end

  root to: "static_pages#root"
end
