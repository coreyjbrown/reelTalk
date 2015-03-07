Rails.application.routes.draw do
  get 'searches/show'

  get 'searches/index'

  get 'movies/index'

  get 'movies/show'

  root 'searches#index'

  resources :movies, :searches
end
