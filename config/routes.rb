Rails.application.routes.draw do	
  resources :products
  resources :image1s
  root to: 'toppages#index'	
	
  get 'login', to: 'sessions#new'	
  post 'login', to: 'sessions#create'	
  delete 'logout', to: 'sessions#destroy'	
	
  get 'signup', to: 'users#new'	
  resources :users, only: [:index, :show, :create]	do
    member do
      get :purchaseds
    end
  end  
  
  resources :relationships, only: [:create, :destroy]
  
  resources :image1s
end	