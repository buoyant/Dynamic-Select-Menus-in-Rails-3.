class State < ActiveRecord::Base
  validates :name, :format => /\A[a-z A-Z]+\z/, :length => {:minimum => 2}
  validates_uniqueness_of :name

  has_many :districts

end
