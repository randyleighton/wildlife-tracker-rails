class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.integer :latitiude
      t.integer :longitude

      t.timestamps
    end
  end
end
