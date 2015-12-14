require 'rails_helper'

describe 'visiting the contacts index page' do 
	it "can see title of application" do 
		visit "/"
		expect(page).to have_content 'My Contacts'
	end
end
