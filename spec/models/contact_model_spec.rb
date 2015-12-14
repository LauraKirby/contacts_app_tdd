require 'rails_helper'

describe Contact do
	subject(:contact) { Contact.create(
																first_name: "Jessie", 
																email: "jessie@email.com",
	)}

		[:first_name, :email].each do |prop|
	    it {is_expected.to respond_to prop}
		end
	
end

# add shoulda matchers gem if would like to write test for "validates presence of"