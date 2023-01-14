Rails.application.routes.draw do
  devise_for :users
  root "spalsh_screen#index"

  resources :categories, only: [:index, :show, :create, :destroy, :new] do
    resources :transaction, only: [:index, :create, :destroy, :new]
  end
end
