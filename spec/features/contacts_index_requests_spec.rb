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
end