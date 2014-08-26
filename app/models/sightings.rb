class Sightings < ActiveRecord::Base
validates :date, :presence => true
belongs_to :species

end
