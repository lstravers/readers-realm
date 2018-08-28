Rails.application.routes.draw do

  root 'books#index'
  
  resources :books
  
  get 'books/index'
  post '/books/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
