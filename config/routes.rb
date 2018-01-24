Rails.application.routes.draw do

  root 'families#index'

  resources :kids
  resources :families
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
