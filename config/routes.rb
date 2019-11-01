Rails.application.routes.draw do
=begin
  get 'profil/:id', to: 'profil#show_profil', as: 'profil'
  get 'welcome/:id', to: 'welcome#welcome'
  get 'team', to: 'team#show_team'
  get 'contact', to: 'contact#show_contact'
  get '/', to: 'index#index', as: 'index'
	
  get 'show/:id', to: 'show#show', as: 'show'
=end


	resources :gossips do
		resources :commentaries
	end

	resources :users 
	resources :cities, only: [:show]
	resources :sessions, only: [:new, :create, :destroy]
	resources :likes, only: [:new, :create, :destroy]
	resources :comment_likes, only: [:new, :create, :destroy]

  get 'team', to: 'team#show_team'
  get 'contact', to: 'contact#show_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
end
