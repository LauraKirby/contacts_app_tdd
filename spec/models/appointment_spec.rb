require 'rails_helper'

RSpec.describe Appointment, type: :model do

  subject(:appointment) { Appointment.create( starts_at: Date.new(1995, 11, 17) )}

	[:starts_at].each do |prop|
	    it {is_expected.to respond_to prop}
	end 

  # undefined method `valid?' for nil:NilClass
  it "is invalid without a start date" do 
  	@appointment = Appointment.create!(:starts_at => nil)
  	expect(@apppointment.valid?).to eq false
  end 

  # expected 1995-11-17 00:00:00.000000000 +0000 to include 1995, but it does not respond to `include?`
  it "returns an appointment's start date as a string" do 
  	@appointment = Appointment.create!(:starts_at => Date.new(1995, 11, 17))
  	expect(@appointment.starts_at).to include ("1995-11-17")
  end 
end
