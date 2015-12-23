
require 'rails_helper'

describe Contact do
    describe "Validations" do
      it "is invalid if first name is nil" do
         contact = Contact.new(first_name: nil, email: "test@example.com")

         expect(contact.valid?).to eq false
      end

      it "is valid if first name is present" do
        contact = Contact.new(first_name: "Name", email: "email@example.com")

        expect(contact.valid?).to eq true
      end
    end

    describe "#most_recent_appointment_date" do
      it "finds the appointment with the most recent start time and returns that date" do
        laura = create(:contact)
        appt_one = create(:appointment, contact: laura, starts_at: Date.new(2002, 01, 21))
        appt_two = create(:appointment, contact: laura, starts_at: Date.new(2004, 03, 21))

        most_recent_date = laura.most_recent_appointment_date

        expect(most_recent_date).to eq(Date.new(2004, 03, 21))
      end

      it "returns 'no appointments' when there are no appointments for the contact" do
        contact = create(:contact)

        most_recent_date = contact.most_recent_appointment_date

        expect(most_recent_date).to eq("No scheduled appointments")
      end
    end
end

# add shoulda matchers gem if would like to write test for "validates presence of"