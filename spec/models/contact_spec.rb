
require 'rails_helper'

describe Contact do
	subject(:contact) { Contact.create(
																first_name: "Jessie", 
																email: "jessie@email.com",
	)}

		[:first_name, :email].each do |prop|
	    it {is_expected.to respond_to prop}
		end

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
	
end

# add shoulda matchers gem if would like to write test for "validates presence of"