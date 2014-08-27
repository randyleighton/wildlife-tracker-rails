class RegionsController < ApplicationController

def index
  @regions = Region.all
  render('index.html.erb')
end



end
