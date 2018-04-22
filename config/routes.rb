Rails.application.routes.draw do
  devise_for :users
  resources :patients do
    resources:comments
end
  resources :users 
  post '/validate', :controller=>'patients', :action=>'checker'
  root 'patients#index'
end


