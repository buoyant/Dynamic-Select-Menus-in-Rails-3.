class District < ActiveRecord::Base
  validates :name, :format => /\A[a-z A-Z]+\z/, :length => {:minimum => 2}
  validates_uniqueness_of :name

  validates :state_id, :presence => true

  belongs_to :state

 # has_one :state

#  accepts_nested_attributes_for :state

end
