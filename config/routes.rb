Rails.application.routes.draw do
	root 'home#top'
	get 'home/about' => 'home#show'
	#devise_for :users
  devise_for :users, controllers: {
  	passwords: 'users/passwords',
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

  resources :users, only: [:show, :edit, :update, :index, :new]
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
