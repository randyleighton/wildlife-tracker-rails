require 'rails_helper'

describe Species do
  it {should validate_presence_of :name}
  it {should have_many :sightings}

  it 'should downcase and capitalize the name' do
    gerbil = Species.new(name: 'gErbIl')
    gerbil.save
    expect(gerbil.name).to eq "Gerbil"
  end
end
