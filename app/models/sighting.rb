class Sighting < ActiveRecord::Base
validates :date, :presence => true
belongs_to :species
belongs_to :region

end
