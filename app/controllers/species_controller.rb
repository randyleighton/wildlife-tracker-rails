class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def create
    @species = Species.create(:name => params[:name])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/index.html.erb')
    end
  end

end
