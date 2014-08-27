class SpeciesController < ApplicationController

  def index
    @species = Species.all
    binding.pry
    @sightings = Sighting.date_search(params[:sightings])
    render('species/index.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def create
    @species = Species.create(params[:species])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/index.html.erb')
    end
  end

  def edit
    @species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    render('species/destroy.html.erb')
  end
end
