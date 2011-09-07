# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

State.create(:name=>"Andhra Pradesh")
State.create(:name=>"Karnataka")
State.create(:name=>"Tamilnadu")
State.create(:name=>"Maharastra")

District.create(:state_id=>1,:name=>"Hyderabad")
District.create(:state_id=>1,:name=>"Nizamabad")
District.create(:state_id=>4,:name=>"Bombay")
District.create(:state_id=>4,:name=>"Pune")
District.create(:state_id=>3,:name=>"Chennai")
District.create(:state_id=>3,:name=>"Coimbatore")
District.create(:state_id=>2,:name=>"Bangalore")
District.create(:state_id=>2,:name=>"Mysore")
