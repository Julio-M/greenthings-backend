class AddRatingToOutpostActivity < ActiveRecord::Migration[6.1]
  def change
    add_column :outpost_activities, :rating, :integer
  end
end
