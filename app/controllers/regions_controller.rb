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
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(params[:region])
      redirect_to('/regions')
    else
      render('regions/edit.html.erb')
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to('/regions')
  end

end


