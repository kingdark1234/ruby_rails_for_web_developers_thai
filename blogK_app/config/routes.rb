BlogKApp::Application.routes.draw do

  devise_for :users
  resources :contact

  resources :pages 
  resources :blogs do
  		resources :comments, except: [:show]
  end
 
  
  root :to => 'pages#index'
end
