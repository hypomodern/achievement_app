class AddIndexToTags < ActiveRecord::Migration
  def change
    add_index :achievements, :tags, using: 'gin'
  end
end