class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :distance
      t.string :elevation_gain
      t.timestamps
    end
  end
end
