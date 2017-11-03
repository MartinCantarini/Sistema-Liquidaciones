Rails.application.routes.draw do
  root 'generals#index'
  
  get 'generals/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
