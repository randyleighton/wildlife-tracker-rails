class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    # @sightings = Sightings.between(params[sightings])
    render('sightings/index.html.erb')
  end
end
