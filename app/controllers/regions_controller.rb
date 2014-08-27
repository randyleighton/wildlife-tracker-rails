class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    redirect_to('/regions')
  end

  def show
    @region = Region.find(params[:id])
    @sightings = @region.sightings
    render('regions/show.html.erb')
  end

  def edit
    @region = Region.find(params[:id])
    render('edit.html.erb')
  end

  def update

  end

end


