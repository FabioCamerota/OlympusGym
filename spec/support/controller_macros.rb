module ControllerMacros

	#def login_admin
	#	before(:each) do
	#		@request.env["devise.mapping"] = Devise.mappings[:admin]
	#		admin = FactoryBot.create(:admin)
	#		sign_in admin
	#	end
	#end

	#def login_user
	#	before(:each) do 
	#		@request.env["devise.mapping"] = Devise.mappings[:gymClient]	#GYMCLIENT O USER?
	#		user = FactoryBot.create(:gymClient)
	#		sign_in user
	#	end
	#end

	def login_as_admin
		admin = FactoryBot.create(:user)
		login_as(admin)
	end

	def login_as(user)
		sign_in user
		request.session[:user_id] = user.id
	end

end