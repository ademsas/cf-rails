	Rails.application.routes.draw do
  devise_for :users, path: "", path_name: {sign_in: "login", sign_out: "logout"}
  
  resources :users
  
  resources :products do
  	resources :comments
  end
  
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'static_pages#landing_page'

  get 'static_pages/about', path: 'about'
  get 'static_pages/contact', path: 'contact'

  post 'static_pages/thank_you'

  post 'payments/create'
end