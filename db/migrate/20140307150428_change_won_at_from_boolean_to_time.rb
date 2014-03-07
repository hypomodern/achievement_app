class ChangeWonAtFromBooleanToTime < ActiveRecord::Migration
  def change
    remove_column :achievements, :won_at, :boolean
    add_column :achievements, :won_at, :datetime
  end
end
