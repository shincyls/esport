Rails.application.routes.draw do

  root 'statics#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Model Routes
  resources :matches do
    collection do
      post :setquestion
    end
    member do
      get :question
    end
  end
  resources :match_predictions do 
    member do
      get :route
    end
  end
  resources :users
  resources :sessions 
  resources :tournaments
  resources :teams
  resources :password_resets

  # Custom Routes
  get 'statics/login', to: 'statics#login', as: 'modal_login'
  get 'pages/admin', to: 'pages#admin', as: 'admin'
  get 'pages/info', to: 'pages#info', as: 'info'
  get 'pages/home', to: 'pages#home', as: 'home'
  get 'pages/about', to: 'pages#about', as: 'about'
  get 'pages/faq', to: 'pages#faq', as: 'faq'
  post 'pages/select', to: 'pages#select', as: 'select_page'
  post 'pages/:id/approve', to: 'pages#approve', as: 'approve_user'
  post 'pages/:id/display', to: 'pages#display', as: 'display_tournament'
  post 'pages/:id/prediction', to: 'pages#prediction', as: 'display_prediction'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
