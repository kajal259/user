Rails.application.routes.draw do
  get 'products/index'
    resources :books
  # get 'books/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end