require 'rails_helper'

describe ContactsController, type: :controller do

  describe "GET contacts#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET contacts#new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
     it "creates contact successfully" do
       params = { contact: { first_name: "Test name", email: "test@example.com" }}

       expect { post :create, params }.to change { Contact.count }.from(0).to(1)

       expect(response.status).to eq 302
     end

     it "does not create contact succesfully if name not present" do
      params = { contact: { email: "test@example.com" }}

      expect { post :create, params }.not_to change { Contact.count }

      expect(response.status).to eq 200
     end

     it "does not create contact succesfully if email not present" do
     end
  end

  #  describe "Post contacts#create" do
  #   it "returns http success" do
  #     post :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end