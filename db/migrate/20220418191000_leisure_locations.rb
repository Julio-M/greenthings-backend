class LeisureLocations < ActiveRecord::Migration[6.1]
  def change
   create_table :leisure_locations do |t|
    t.string :name
    t.float :latitude
    t.float :longitude
    t.string :default_image
   end
  end
end
