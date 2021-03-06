require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:name) { "simple name" }

	describe "GET /users" do
    it "returns succes status" do
      get users_path
      expect(response).to have_http_status(200)
    end
	end

  describe "POST /users" do 
    context "when it has valid parameters" do
      it "creates the user with correct attributes" do
        user_attributes = FactoryBot.attributes_for(:user)
        post users_path, params: {user: user_attributes}
        expect(User.last).to have_attributes(user_attributes)
      end
    end 

    context "when it has invalid parameters" do
      it "does not create the user" do
        expect{
          post users_path, params: {user: {kind: '', name: '', level: ''}}
        }.to_not change(User, :count)
      end
    end 
  end 
end
