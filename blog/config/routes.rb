Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  get 'sessions/login' => 'sessions#login'
  post 'sessions/login_attempt' => 'sessions#login_attempt'
  get 'sessions/home' => 'sessions#home'
  get 'sessions/logout' => 'sessions#logout'
  get 'sessions/profile' => 'sessions#profile'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
