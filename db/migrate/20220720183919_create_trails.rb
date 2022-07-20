class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.integer :length
      t.integer :elevation_gain
      t.string :difficulty
      t.timestamps
    end
  end
end
