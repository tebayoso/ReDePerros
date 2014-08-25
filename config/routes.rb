Rails.application.routes.draw do
  root to: 'static#home'

  devise_for :users

  resources :users do
    resources :messages
  end
  resources :advertises
  get '/my_advertises/:user_id', to: 'advertises#user_advertises', as: "user_advertises"
end
