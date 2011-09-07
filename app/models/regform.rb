class Regform < ActiveRecord::Base
  belongs_to :state
  belongs_to :district

  validates :name, :length => {:minimum => 3}
  validates_uniqueness_of :name

  validates :fathername,  :length => {:minimum => 3}

  validates :email, :presence => true, :format  => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email

  validates :dob, :state_id, :district_id, :presence => true

end
