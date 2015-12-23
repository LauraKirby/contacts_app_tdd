require 'rails_helper'

feature 'visiting the new contact page' do

  before(:each) do
    visit "/contacts/new"
  end

  scenario 'fill out and submit new contact form' do
    # setup - CHECK
    # exercise - fill in fields, click submit
    fill_in "Name", with: "Laura"
    fill_in "Email", with: "laura@mail.com"
    click_on "Create"

    # expectations - that user is redirected to contacts
    expect(page).to have_content "My Contacts"

    # teardown - FREE (see spec helper)

  end

  scenario 'contact is saved successfully and it displayed on the index page' do
    fill_in "Name", with: "Contact name"
    fill_in "Email", with: "email@example.com"
    click_on "Create"

    expect(page).to have_content "Contact name"
    expect(page).to have_content "email@example.com"
  end

  context 'contact is not saved successfully' do
    scenario "user sees helpful validation error messages" do
      click_on "Create"

      expect(page).to have_content "First name can't be blank"
      expect(page).to have_content "Email can't be blank"
    end
  end

  it "has a form with a name and email field" do
    expect(page).to have_field 'Name'
    expect(page).to have_field 'Email'
  end

  it "has a button to submit/post a new conact" do
    expect(page).to have_button 'Create'
  end

  it "will redirect user to contacts index" do

  end

  # it "shows a list of all contacts created" do
  #   # if contact then contact.name
  # end

end