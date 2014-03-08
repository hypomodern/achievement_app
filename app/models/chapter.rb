# == Schema Information
#
# Table name: chapters
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  index :integer
#

class Chapter < ActiveRecord::Base
  validates :name, presence: true

  has_many :achievements, dependent: :destroy

  default_scope { order(:index) }

  def self.reorder(ids)
    indices = {}

    ids.each_with_index do |id, i|
      indices[id.to_i] = i
    end

    all.each do |model|
      model.update_attribute(:index, indices[model.id] || indices.count)
    end
  end
end
