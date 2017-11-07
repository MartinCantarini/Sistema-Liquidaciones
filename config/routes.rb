Rails.application.routes.draw do

  root 'generals#index'

  get 'generals/index'

  resources :agent_category_types
  resources :agent_categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
