Rails.application.routes.draw do
  devise_for :users
  get 'searches/show'

  get 'searches/index'

  root 'searches#index'

  resources :searches
end
