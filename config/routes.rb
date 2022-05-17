Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, except: [:index]

  resources :transactions
  post 'checkout', to: 'transactions#checkout'

  get 'search', to: 'offers#index'
end
