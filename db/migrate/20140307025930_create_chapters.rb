class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
    end

    add_column :achievements, :chapter_id, :integer
    remove_column :achievements, :chapter, :string
    add_index :achievements, :chapter_id
  end
end
