Rails.application.routes.draw do
  resources :users, only: %i[new create show edit update]
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
