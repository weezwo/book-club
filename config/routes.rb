Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#home'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users

  resources :clubs do
    resources :books, only: [:index, :new, :create]
  end

  resources :books, only: [:show, :edit, :update, :destroy] do
    resources :thoughts
    member do
      patch 'update_page'
    end
  end


end
