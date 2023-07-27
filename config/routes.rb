Rails.application.routes.draw do
  root 'test_orders#index'
  resources :test_orders do
    get 'table_data', on: :collection
  end
  resources :item do
    get 'table_data', on: :collection
  end
  devise_for :users
  # devise_for :installs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root 'home#index'
  get 'tab_test/index'
  get 'tab_test/table_data'
end
