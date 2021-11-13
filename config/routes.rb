Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#index' 
  get '/sign-up', to: 'users#sign_up' 
  post '/sign-up', to: 'users#create'
  resources :users
end
