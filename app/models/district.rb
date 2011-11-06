class District < ActiveRecord::Base
  validates :name, :format => /\A[a-z A-Z]+\z/, :length => {:minimum => 2}
  validates_uniqueness_of :name
  validates_presence_of :state_id

  belongs_to :state
#  accepts_nested_attributes_for :state

end
