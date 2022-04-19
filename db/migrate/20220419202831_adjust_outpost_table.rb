class AdjustOutpostTable < ActiveRecord::Migration[6.1]
  def change
    add_column :outposts, :open_months, :string
    add_column :outposts, :notes, :string
    add_column :outposts, :location, :string
    remove_column :outposts, :open?
  end
end
