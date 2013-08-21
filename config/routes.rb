IceCreamApp::Application.routes.draw do
  resources :icecreams
  get "sessions/new", :as => :new_session
  post "sessions/create", :as => :sessions
  delete "logout" => 'sessions#destroy', :as => :logout
end
