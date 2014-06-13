class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.string :attached_file, :name, :description, :current_owner, :found_by
      t.boolean :found
      t.references :chapter
      t.string :tags, array: true, default: []

      t.timestamps
    end

    add_index :props, :chapter_id
    add_index :props, :tags, using: 'gin'
  end
end
