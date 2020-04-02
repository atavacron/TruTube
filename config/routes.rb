Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do

    resources :videos, only: [:index, :show] do
      resources :likes, only: [:create, :update, :destroy]

      resources :comments, only: [:create, :edit, :destroy, :update, :index]

    end

    resources :comments do
      resources :likes, only: [:create, :update, :destroy]
    end 

    resources :search, only: [:index]
    

    resources :users, only: [:create] do
      resources :videos, only: [:create]
      
    end

    resource :session, only: [:create, :destroy, :show]
  end
  
end
