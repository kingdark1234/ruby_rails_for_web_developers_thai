BlogKApp::Application.routes.draw do

  devise_for :users
  resources :contact
  resources :pages 
  
  resources :blogs do
  		resources :comments, except: [:show]
  end

  resources :photos do 
    resources :comments, except: [:show]
  end
 
  #'Response#chunked' = true
  root :to => 'pages#index'
end
