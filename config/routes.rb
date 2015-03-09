Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/show'

  get 'comments/edit'

  devise_for :users
  get 'searches/show'

  get 'searches/index'

  root 'searches#index'

  resources :searches, :comments
end
