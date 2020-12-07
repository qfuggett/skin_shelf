Rails.application.routes.draw do
  resources :routines
  resources :products
  
  devise_for :users, :controllers => {:registrations => 'registrations', :omniauth_callbacks => 'callbacks'}
  root to: 'application#welcome'

    resources :routines do
      resources :products
    end

  devise_scope :user do
    get 'login', to:'devise/sessions#new', as: 'login'
    get 'signup', to:'devise/registrations#new', as: 'signup'
  end
end
