Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
 # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
 # or exposing all the RESTful routes using ex below
 resources :articles
 get 'signup', to: 'users#new'
 resources :users, except: [:new]

   end
