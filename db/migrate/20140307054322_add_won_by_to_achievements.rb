class AddWonByToAchievements < ActiveRecord::Migration
  def change
    add_column :achievements, :won_by, :string
  end
end
