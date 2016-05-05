	Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'static_pages#landing_page'

  get 'static_pages/about', path: 'about'
  get 'static_pages/contact', path: 'contact'

  post 'static_pages/thank_you'
end