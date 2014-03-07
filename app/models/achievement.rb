# == Schema Information
#
# Table name: achievements
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  censored_description :string(255)
#  full_description     :string(255)
#  image_url            :string(255)
#  tags                 :string(255)      default([]), is an Array
#  secret               :boolean          default(FALSE)
#  won_at               :boolean          default(FALSE)
#  created_at           :datetime
#  updated_at           :datetime
#  chapter_id           :integer
#  won_by               :string(255)
#
# Indexes
#
#  index_achievements_on_chapter_id  (chapter_id)
#  index_achievements_on_tags        (tags)
#

class Achievement < ActiveRecord::Base
  validates :name, :full_description, :chapter, presence: true

  belongs_to :chapter
end
