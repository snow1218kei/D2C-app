Rails.application.routes.draw do	
  resources :products
  resources :image1s
  root to: 'toppages#index'	
	
  get 'login', to: 'sessions#new'	
  post 'login', to: 'sessions#create'	
  delete 'logout', to: 'sessions#destroy'	
	
  get 'signup', to: 'users#new'	
  resources :users, only: [:index, :show, :create]	
  
  resources :image1s
end	