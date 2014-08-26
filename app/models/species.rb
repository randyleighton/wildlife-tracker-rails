class Species < ActiveRecord::Base
  validates :name, :presence => true
  before_save :format_text

private
  def format_text
    self.name = self.name.downcase.capitalize
  end

end
