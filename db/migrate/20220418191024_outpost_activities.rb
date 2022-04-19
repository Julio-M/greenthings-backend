class OutpostActivities < ActiveRecord::Migration[6.1]
  def change
   create_table :outpost_activities do |t|
      t.string :avatar
      t.string :activity_type
      t.datetime :datetime
      t.string :description
      t.string :comment
      t.string :image
      t.integer :outpost_id
   end
  end
end
