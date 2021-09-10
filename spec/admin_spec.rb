require "rails_helper.rb"

RSpec.describe AdminsController, type: :controller do

	fixtures :users

	describe "#adm" do
		context "being an admin" do 
			it "I should see admin page" do 
				admin = users(:admin)
				sign_in admin
				request.session[:user_id] = admin.id
				get :index
				#byebug
				expect(response.body).not_to include("Il tuo account è stato bannato dagli amministratori di OlympusGym")
				expect(response.status).to eql(200)
			end
		end
	end



	describe "#ban" do
		context "being and admin banning a user" do
			it "should make user banned" do
				admin = users(:admin)
				user = users(:user)
				sign_in admin
				request.session[:user_id] = admin.id
				get :ban_user, :params => {:id => user.id}
				expect(user.reload.roles_mask).to eql(0)
				#byebug
			end
		end
	end



end