require 'rails_helper'

describe 'visiting the new contact page' do 

 	before(:each) do
		visit "/contacts/new"
	end 

	it "has a form with a name and email field" do 
		expect(page).to have_field 'Name'
		expect(page).to have_field 'Email'
	end

	it "has a button to submit/post a new conact" do 
		expect(page).to have_button 'Create'
	end

	# it "shows a list of all contacts created" do
	# 	# if contact then contact.name
	# end 

end