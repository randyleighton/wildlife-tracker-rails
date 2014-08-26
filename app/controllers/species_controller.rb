class SpeciesController < ApplicationController

def index
  @species = Species.all
  render('index.html.erb')
end

end
