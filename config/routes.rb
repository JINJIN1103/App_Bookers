Rails.application.routes.draw do  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'books' =>'books#index'
 post 'books' => 'books#create'
 get 'books/show' =>'books#show'
 get 'books/new' =>'books#new'
 get 'books/edit' =>'books#edit'
 
 root :to => 'homes#top'
end
