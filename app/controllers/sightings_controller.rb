class SightingsController < ApplicationController

  # def index
  #   @sighting = Sighting.between(params[:sightings])
  #   render('sighting/index.html.erb')
  # end

  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.create(params[:sighting])
    if @sighting.valid?
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end
end
