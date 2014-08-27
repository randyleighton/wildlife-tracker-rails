Rails.application.routes.draw do
  match('/',                {:via => :get, :to => 'species#index'})
  match('species',          {:via => :get, :to => 'species#index'})
  match('species',          {:via => :post, :to => 'species#create'})
  match('species/:id',      {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id',      {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id',      {:via => :delete, :to => 'species#destroy'})
  match('sightings',        {:via => :get, :to => 'sightings#index'})
  match('species/:species_id/sightings/new',  {:via => :get, :to => 'sightings#new'})
  match('species/:species_id/sightings',      {via: :post, to: 'sightings#create'})
  match('species/:species_id/sightings/:sighting_id/edit', {via: :get, to: 'sightings#edit'})
  match('species/:species_id/sightings/:sighting_id', {via: [:patch, :put], to: 'sightings#update'})
  match('species/:species_id/sightings/:sighting_id', {via: :delete, to: 'sightings#destroy'})
  match('species/:species_id/sightings/:sighting_id/regions/new', {:via => :get, :to => 'regions#new'})
  match('species/:species_id/sightings/:sighting_id/regions', {via: :post, to: 'regions#create'})

end
