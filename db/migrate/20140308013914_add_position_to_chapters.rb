class AddPositionToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :index, :integer
  end
end
