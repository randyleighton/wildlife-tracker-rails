class SightingsController < ApplicationController

  # def index
  #   @sighting = Sighting.between(params[:sightings])
  #   render('sighting/index.html.erb')
  # end

  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    @regions = Region.all
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

def edit
  @sighting = Sighting.find(params[:sighting_id])
  @regions = Region.all
  render('sightings/edit.html.erb')

end

def update
  binding.pry
  @sighting = Sighting.find(params[:sighting_id])
  if @sighting.update(params[:sighting])
    render('sightings/success.html.erb')
  else
    render('sightings/edit.html.erb')
  end
end

def destroy
  @sighting = Sighting.find(params[:sighting_id])
  @sighting.destroy
  render('destroy.html.erb')
end

end
