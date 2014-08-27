require 'rails_helper'

describe Sighting do
  it {should belong_to :species}
  it {should validate_presence_of :date}
  it {should belong_to :region}

  it "should find all sightings in a date range" do
    yogi_bear = Species.create({name: "Yogi Bear"})
    sighting1 = Sighting.create(species_id: yogi_bear.id, date: "2014-08-11")
    sighting2 = Sighting.create(species_id: yogi_bear.id, date: "2014-08-14")
    sighting3 = Sighting.create(species_id: yogi_bear.id, date: "2014-08-26")
    expect(Sighting.date_search("2014-08-10", "2014-08-25")).to eq [sighting1, sighting2]
  end
end
