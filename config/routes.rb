Rails.application.routes.draw do
  devise_for :users
  get 'welcome/about' , :as => :about

  get 'searches/show'

  get 'searches/index'

  root 'searches#index'

  resources :searches
end
