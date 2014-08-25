Rails.application.routes.draw do

  devise_for :users do
    resources :messages
  end
  root to: 'static#home'
  resources :advertises
end
