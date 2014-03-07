# == Schema Information
#
# Table name: chapters
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Chapter < ActiveRecord::Base
  validates :name, presence: true

  has_many :achievements, dependent: :destroy
end
