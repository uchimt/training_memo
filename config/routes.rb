Rails.application.routes.draw do
  get 'users/new'
  # userログイン/ログアウト用のルーティング
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :user, only: [:new, :create, :edit, :update, :show, :destroy]


  resources :home, only: [:index]

  resources :training, only: [:index, :new]

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
