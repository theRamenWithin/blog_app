Rails.application.routes.draw do
  root to: "posts#index"
  resources :comments
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
