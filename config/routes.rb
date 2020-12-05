Rails.application.routes.draw do
  get 'routines/index'
  get 'routines/show'
  get 'routines/new'
  get 'routines/edit'
  get 'routines/create'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  get 'products/create'
  
  devise_for :users, :controllers => {:registrations => 'registrations', :omniauth_callbacks => 'callbacks'}
  root to: 'application#welcome'

  devise_scope :user do
    get 'login', to:'devise/sessions#new', as: 'login'
    get 'signup', to:'devise/registrations#new', as: 'signup'
  end
end
