Rails.application.routes.draw do

  # resource :books
  # get 'user/:id', to: 'user#show', defaults: { format: 'jpg'}
  # get 'exit', to: 'user#destroy', as: :logout
  # get ':username', to: 'users#show', as: :user
  # get ':username', to: 'user#index', as: :user
  # resource :user
  # get 'users', to: 'users#index', constraints: { subdomain: 'api'}
  # resolve("User") { [:user] }
  # get 'users/*other', to: 'users#unknown'
  # get 'book/*section/:title', to: 'books#show'
  # get '*a/foo/*b', to: 'user#index'
  # root to: 'users#main'
  # root to: 'users#show'
  # root 'users#main'
  # root to: 'books#index'
  # resources :books
  # namespace :book do 
  #   root to: "book#index"
  # end
  # get 'foo', to: 'foo#bar'
  # draw(:admin)
  # get 'book', to: 'book#new'
  # draw(:book)
  # resources :books#, only: [:create] do 
  # assert_recognizes({ controller: 'books', action: 'create' }, { path: 'books', method: :post})
  assert_routing({ path: 'books', method: :post}, { controller: 'books', action: 'create'})
  resources :books
    # assert_generates '/books/1', { controller: 'books', action: 'show', id: '1'}
    # assert_generates '/about', controller: 'products', action: 'about'
  #   resources :products#, as: 'book_names'
  # end
  # resources :videos, param: :identifier
  # root to: "product#index"
  # resources :roducts
  # get 'xndskjsks', to: 'books#show'    
  # resources :books
  
  # direct :index do
  #  p "http://www.rubyonrails.org"
  # # end
  # scope ':title' do 
  #   resources :books
  # end
  # resources :books, except: :destroy
  # resources :books, only: [:index, :show]
  # scope(path_names: { new: 'neu', edit: 'bearbeiten'}) do
    # resources :books, path: 'an'
  # end
  # resources :books, as: 'title'
  # scope path_names: { new: 'make' } do
  #   resources :books
  # end
  # scope 'user', as: 'user' do 
  #   resources :books, :products
  # end

  # resources :books
  #, path_names: { new: 'make', edit: 'change'}
  # p resources :books#, constraints: { username: /[0-z\.\-\_]+/ }, :via => [:get, :post]
  # resources :books, controller: 'products'
  # get ':bookname', to: 'users#index' 
  # resource :book
  # resolve("Book") { [:book] }
  # get '*users', to: 'users#show', format: true
  # get '/show/:name', to: redirect('/users/%{name}', status: 302)
  # match '/useer', to: 'user', via: :all#, to: MyRackApp, via: :all
  # get '/stories/:name', to: redirect { |path_params, req| "/users/#{path_params[:name].pluralize}" }
  # get '/stories/:name', to: redirect { |path_params, req| "/users/#{req.subdomain}" }
  # get 'users/:id', to: 'users#show', id: /[A-Z]\d{5}/
  # get '/:id', to: 'users#show', constraints: { id: /\d.+/ }
  # get 'products/index'
  # get 'products/show'
  # resources :products, only: [:index, :show] do
  #   resources :books, only: [:index, :show]
  # end
  # concern :library   do
  #   resources :books
  # end
  # resources :books do 
  #   resources :products, only: [:index, :special_show]
  # end   
  # resources :products, :books
  # get 'product', action: :show, controller: 'books' 
  # get '/books/:id', to: 'books#show', as: 'books'
    # get 'books/index'
  # get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
