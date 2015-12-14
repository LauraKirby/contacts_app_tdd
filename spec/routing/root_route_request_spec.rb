require 'rails_helper'

describe 'visiting the root route' do 
	it "maps to contacts index page" do 
		expect(get('/')).to route_to("contacts#index")
	end
end