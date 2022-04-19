class LeisureActivities < ActiveRecord::Migration[6.1]
  def change
   create_table :leisure_activities do |t|
    t.string :avatar
    t.string  :activity_type
    t.string :description
    t.datetime :datetime
    t.integer :rating
    t.string :comment
    t.string :image
    t.integer :leisure_location_id
   end
  end
end
