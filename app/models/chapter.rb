class Chapter < ActiveRecord::Base
  validates :name, presence: true

  has_many :achievements, dependent: :destroy
end