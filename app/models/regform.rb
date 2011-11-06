class Regform < ActiveRecord::Base
  belongs_to :state
  belongs_to :district

  validates :name, :length => {:minimum => 3}
  validates_uniqueness_of :name
  validates :fathername,  :length => {:minimum => 3}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email
  validates_presence_of :dob, :state_id, :district_id

end
