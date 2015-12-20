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

	describe 'has appointments column' do

		before(:each) do 
			Contact.create(:first_name => "Laura", :email => "laura@mail.com")
			@contact = Contact.create!(:first_name => "Laura", :email => "laura@mail.com")
		end 

		it 'displays 0 when contact has none' do 
			visit "/"
			expect(page).to have_content("0")
		end 

		it 'displays 2 when there are 2' do 
			@contact.appointments.create!
			@contact.appointments.create!
			visit "/"
			expect(page).to have_content("2")
		end 

	end 
end 