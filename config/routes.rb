Rails.application.routes.draw do

  resources :tournaments
  resources :teams
  root 'statics#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :matches
  resources :match_predictions do 
    member do
      get :route
    end
  end

  resources :users
  resources :sessions 

  get 'statics/login', to: 'statics#login', as: 'modal_login'
  get 'pages/admin', to: 'pages#admin', as: 'admin'
  get 'pages/info', to: 'pages#info', as: 'info'
  get 'pages/home', to: 'pages#home', as: 'home'
  post 'pages/select', to: 'pages#select', as: 'select_page'
  post 'pages/:id/approve', to: 'pages#approve', as: 'approve_user'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
