Rails.application.routes.draw do
	root "concerts#index"
	resources :users, except: [:index, :update, :edit, :destroy]
	resources :sessions, only: [:new, :create, :destroy] 
	resources :concerts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
