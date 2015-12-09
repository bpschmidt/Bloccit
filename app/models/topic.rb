class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  scope :visible_to_and_publicly_viewable, -> (user) { user ? all : where(public: true) }
  scope :privately_viewable, -> (user) { user ? all : where(public: false) }
end
