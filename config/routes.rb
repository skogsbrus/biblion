Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#home'
  #pages
  get '/about',     to: 'pages#about'
  get '/contact',   to: 'pages#contact'
  get '/terms',     to: 'pages#termsofservice'
  #users
  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  get '/users',     to: 'users#index'
  #books
  get 'author',     to: 'books#all_by_author'
  get 'location',   to: 'books#all_by_location'
  get 'landscape',  to: 'books#all_by_landscape'
  get 'books/new',   to: 'books#new'
  post 'books/new',  to: 'books#create'
  get 'books/add',  to: 'books#add'
  post 'books/add', to: 'books#googlebooks_search'
  post 'books/show', to: 'books#request_book'
  #session
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'

  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
