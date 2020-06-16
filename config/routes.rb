Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }
  root to: 'home#top'
  get 'about' => 'home#show'
  resources :users, only: [:show, :edit, :update, :index, :new]
  resources :books, only: [:create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
