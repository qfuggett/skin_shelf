Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', :omniauth_callbacks => 'callbacks'}
  root to: 'application#welcome'

  devise_scope :user do
    get 'login', to:'devise/sessions#new', as: 'login'
    get 'signup', to:'devise/registrations', as: 'signup'
  end
end
