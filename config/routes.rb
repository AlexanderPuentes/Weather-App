Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'sessions/new' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  get 'users/new'
  post 'welcome/index' => 'sessions#create'


  resources :users do
    resources :cities
  end
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
