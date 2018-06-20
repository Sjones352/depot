Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  # get 'startup/index'
  namespace :api do
    namespace :v1 do
      resources :fruits, only: [:index, :create, :destroy, :update]
    end
  end

  resources :products do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get :who_bought, on: :member
  end

  # root to: 'home#index'
  root :to => 'store#index', :as => 'store'
end
