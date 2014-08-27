class Species < ActiveRecord::Base
  validates :name, :presence => true
  before_save :format_text
  has_many :sightings
  has_many :regions, through: :sightings

private
  def format_text
    self.name = self.name.downcase.capitalize
  end

end
