Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users, only: [:new, :create, :show, :edit, :update] do 
    resources :compliments, only:[:new , :create , :show] 
    end 

  get '/sign_in', to: 'sessions#new', as: 'new_session'

  resources :sessions, only: [:new, :create]

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  
  end

  
