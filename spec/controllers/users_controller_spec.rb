require 'rails_helper'

describe UsersController, type: :controller do

	before do
		@user = User.create!(email: "benclarke018@gmail.com", password: "testpassed123")
		@user1 = User.create!(email: "ben@upliftingmedia.co.uk", password: "timeforatest")
	end


	describe "GET #show" do
		
		context "User is logged in" do
			before do
				it "loads the correct user details" do
					expect(response).to have_http_status(200)
					expect(assign(:user)).to eq @user
				end
			end
		end

		context "No user is logged in" do
			it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end
		end

		context "cannot access second user show page" do
      it "redirects to root" do
        get :show, id: @user1.id
        expect(response).to redirect_to(root_path)
      end
    end
	end

end