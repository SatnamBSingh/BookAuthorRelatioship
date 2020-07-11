Rails.application.routes.draw do
  resources :authors
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root 'pages#home'
	get 'about', to: 'pages#about'
	namespace :api do
	  namespace :v1 do
	    resources :books
	    resources :authors
	  end
  end 
end
