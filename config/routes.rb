Rails.application.routes.draw do
  get 'bookmarks/create'
  root to: 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only: %w[index show]

  resources :lists, only: %w[show create destroy]

  resources :bookmarks, only: %w[create]
end
