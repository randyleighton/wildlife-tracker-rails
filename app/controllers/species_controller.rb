class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end
end
