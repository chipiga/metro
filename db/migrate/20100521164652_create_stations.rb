class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations do |t|
      t.integer :identifier
      t.integer :connected_to
      t.string :name
      t.string :color
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :stations
  end
end
