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
      @contact = Contact.create!(:first_name => "Laura", :email => "laura@mail.com")
    end

    it 'displays 0 when contact has none' do
      visit "/"
      expect(page).to have_content("0")
    end

    describe 'when there are 2 appointments' do

      before(:each) do
        create(:appointment, starts_at: Date.new(2001, 11, 17), contact: @contact)
        create(:appointment, starts_at: Date.new(2010, 11, 17), contact: @contact)
      end

      it 'displays the number 2' do
        visit "/"
        expect(page).to have_content("2")
      end

      it 'displays most recent appointment date' do
        visit "/"
        expect(page).to have_content("2010-11-17")
      end
    end
  end
end