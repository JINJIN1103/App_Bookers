Rails.application.routes.draw do  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html#
 get 'books' =>'books#index',as:'book_index'
 post 'books' => 'books#create'
 get 'books/:id' =>'books#show',as:'book_show'
 get 'books/:id/edit' =>'books#edit',as:'book_edit'
 patch 'books/:id' =>'books#update',as:'book_update'
 delete 'books/:id' => 'books#destroy',as:'book_destory'
 get 'books/new' =>'books#new'
 get 'books/edit' =>'books#edit'

 root :to => 'homes#top'

end
