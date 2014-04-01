Wildlife::Application.routes.draw do
  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})
  match('/', {:via => :get, :to => 'regions#index'})
end
