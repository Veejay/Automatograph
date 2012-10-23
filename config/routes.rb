Automatograph::Application.routes.draw do
  
  resources :instructions, :only => [:index]
  resources :answers,      :only => [:create]
  resources :users,        :only => [:index, :new, :create, :update, :destroy]
  resources :questions,    :only => [:index]
  resources :sessions, :only => [:new, :create, :destroy]
  
  match "experiment/start/:session_number" =>"experiments#start", :via => :get, :constraints => {:session_number => /[1-2]/}

  root :to => "sessions#new" 
end
