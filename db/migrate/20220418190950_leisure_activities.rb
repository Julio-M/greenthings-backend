class LeisureActivities < ActiveRecord::Migration[6.1]
  def change
   create_table :leisure_activities do |t|
    t.string  :activity_type
    t.datetime :datetime
    t.integer :rating
    t.string :comment
    t.string :image
   end
  end
end
