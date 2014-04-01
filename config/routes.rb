Wildlife::Application.routes.draw do
  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})
  # match('/', {:via => :get, :to => 'regions#index'})

  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/results', {:via => :get, :to => 'sightings#results'})
  # match('sightings/date_results', {:via => :get, :to => 'sightings#results'})
  # match('sightings/species_results', {:via => :get, :to => 'sightings#results'})
  # match('sightings/region_results', {:via => :get, :to => 'sightings#results'})
  match('sightings/new', {:via => :get, :to => 'sightings#new'})
  match('sightings/search', {:via => :get, :to => 'sightings#search'})
  match('sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})

end
