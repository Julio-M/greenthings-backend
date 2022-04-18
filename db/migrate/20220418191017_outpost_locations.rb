class OutpostLocations < ActiveRecord::Migration[6.1]
  def change
   create_table :outposts do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :rating
      t.string :comment
      t.string :default_image
      t.string :schedule
      t.boolean :open?
   end
  end
end
