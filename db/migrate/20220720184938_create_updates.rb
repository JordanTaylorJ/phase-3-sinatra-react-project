class CreateUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.string :title
      t.text :description 
      t.integer :hiker_id
      t.integer :trail_id 
      t.timestamps
    end
  end
end
