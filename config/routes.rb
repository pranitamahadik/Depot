Rails.application.routes.draw do
  
  root to:'products#index'
  resources :products
  resources :store
  get 'store/index' => 'store#index'
  get 'store/add_to_cart/:id' => 'store#add_to_cart'
  get 'store/display_cart' => 'store#display_cart'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
