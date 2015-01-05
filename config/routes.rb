Rails.application.routes.draw do
  resources :reviews, except: [:show, :index]

  devise_for :users

  resources :movies do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end
  
  root 'movies#index'

end
