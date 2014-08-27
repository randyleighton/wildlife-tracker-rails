class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    redirect_to('/regions')
  end
end


