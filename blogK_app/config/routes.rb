BlogKApp::Application.routes.draw do

  devise_for :users

  resources :pages
  resources :blogs
 
  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
  root :to => 'high_voltage/pages#show', :id => 'home'
end
