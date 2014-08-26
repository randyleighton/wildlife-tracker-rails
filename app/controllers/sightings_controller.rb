class SightingsController < ApplicationController
  def index
    @sightings = Sightings.all
    # @sightings = Sightings.between(params[sightings])
    render('sightings/index.html.erb')
  end
end
