require 'rails_helper'

describe 'visiting the contacts index page' do 
	it "has title of application" do 
		visit "/"
		expect(page).to have_content 'My Contacts'
	end

	it 'user can click the "Add Contact" button' do 
		visit "/"
		expect(page).to have_selector(:link_or_button, 'Add Contact')
	end

	it 'shows number of appointments for each contact' do 
		Contact.create(:first_name => "Laura", :email => "laura@mail.com")
		contact = Contact.create(:first_name => "Laura", :email => "laura@mail.com")
		Appointment.create(contact: contact)
    Appointment.create(contact: contact)
    
		visit "/"

		expect(page).to have_content("0 appointments")
	end 
end 