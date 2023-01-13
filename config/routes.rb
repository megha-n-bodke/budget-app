Rails.application.routes.draw do
  get 'categories/new'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "spalsh_screen#index"
  root "categories#new"
    resources :categories, only: [:index, :show, :create, :destroy, :new] do
    resources :transaction, only: [:index, :create, :destroy, :new]
  end
end
