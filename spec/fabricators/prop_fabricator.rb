# == Schema Information
#
# Table name: props
#
#  id            :integer          not null, primary key
#  attached_file :string(255)
#  name          :string(255)
#  description   :string(255)
#  found         :boolean
#  chapter_id    :integer
#  tags          :string(255)      default([]), is an Array
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_props_on_chapter_id  (chapter_id)
#  index_props_on_tags        (tags)
#

Fabricator(:prop) do
end
