Rails.application.routes.draw do
  get '/top' => "homes#top"
  # post '/books/new' => "books#new"
  # get '/books/edit' => "books#edit"
  # get '/books/index' => "books#index"
  # get '/books/new' => "books#new"
  # get '/books/show' => "books#show"
  # get '/books' => "books#index"
  resources :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
