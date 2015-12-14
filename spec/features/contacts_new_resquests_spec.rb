require 'rails_helper'

describe 'visiting the new contact page' do 
	it "has a form with a name and email field" do 
		visit "/contacts/new"
		expect(page).to have_field 'Name'
		expect(page).to have_field 'Email'
	end
end