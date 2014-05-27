Rails.application.routes.draw do
  get 'item_histories/index'

  get 'item_histories/new'

  get 'item_histories/create'

  root 'page#index'

  devise_for :users

  resources :items
  resources :item_histories, only: [:index, :new, :create]

end
