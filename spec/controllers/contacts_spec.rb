require 'rails_helper'

describe 'GET /' do
	it "renders the contacts index template" do
	 expect(response).to render_template("index")
	end
end