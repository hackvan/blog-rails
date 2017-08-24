Rails.application.routes.draw do
  get 'comments/create'

  root 'posts#index'

  devise_for :users

  resources :posts do
    resources :comments, only: [:create]
  end
end
