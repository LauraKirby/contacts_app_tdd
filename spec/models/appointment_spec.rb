require 'rails_helper'

describe Appointment do
  describe "validations" do
  # since this is covered in the feature spec, do not need to write another test for it here
  # can remove test, however, why does the test cause the following error: undefined method `valid?' for nil:NilClass
    it { should validate_presence_of(:starts_at) }
  end

  it "returns an appointment's start date as a string" do
    @appointment = Appointment.create!(:starts_at => Date.new(1995, 11, 17))
    date = Date.new(1995, 11, 17)
    expect(@appointment.starts_at).to eq (date)
  end
end