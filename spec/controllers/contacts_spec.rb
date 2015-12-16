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

  #  describe "Post contacts#create" do
  #   it "returns http success" do
  #     post :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end