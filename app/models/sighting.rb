class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  belongs_to :species
  belongs_to :region

  def self.date_search(start_date, end_date)
    search_result = self.where(date: start_date..end_date)
    search_result
  end
end
