class AllOutposts < ActiveRecord::Migration[6.1]
  def change
   create_table :all_outposts do |t|
    t.integer :outpost_id
    t.integer :outpost_activity_id
    t.datetime :created_at
   end
  end
end
