class RemoveSuperfluousColumnsFromProp < ActiveRecord::Migration
  def change
    remove_column :props, :found_by
    remove_column :props, :current_owner
  end
end
