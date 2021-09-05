require "rails_helper.rb"

describe AdminsController, type: :controller do

	fixtures :users

	#before :each do 
	#	admin = users(:admin)
	#	user = users(:user)
	#	sign_in admin
	#end

	describe "Ban:" do
		context "being and admin banning a user" do
			it "should make user banned" do
				admin = users(:admin)
				user = users(:user)
				sign_in admin
				params = {:id => user.id}
				get :ban_user, :params => params		#NON BANNA L'UTENTE, FIXARE
				#banned_user = User.where(:id => user.id)
				expect(user.roles_mask).to eql(0)
			end
		end
	end


end