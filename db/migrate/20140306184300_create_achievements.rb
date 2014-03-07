class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name, :censored_description, :full_description, :image_url, :chapter
      t.string :tags, array: true, default: []
      t.boolean :secret, :won_at, default: false

      t.timestamps
    end
  end
end
