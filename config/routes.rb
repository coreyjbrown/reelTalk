Rails.application.routes.draw do
  get 'searches/show'

  get 'searches/index'

  root 'searches#index'

  resources :searches
end
