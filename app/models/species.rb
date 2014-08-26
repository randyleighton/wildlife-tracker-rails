class Species < ActiveRecord::Base
  validates :name, :presence => true
  before_save :format_text
  has_many :sightings

private
  def format_text
    self.name = self.name.downcase.capitalize
  end

end
