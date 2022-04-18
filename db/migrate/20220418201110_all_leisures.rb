class AllLeisures < ActiveRecord::Migration[6.1]
  def change
   create_table :all_leisures do |t|
      t.integer :leisure_location_id
      t.integer :leisure_activity_id
      t.datetime :created_at
   end
  end
end
