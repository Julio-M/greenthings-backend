class RemoveCommentFromOutposts < ActiveRecord::Migration[6.1]
  def change
    remove_column :outposts, :comment
  end
end
