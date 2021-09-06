module ControllerMacros

	def login_admin
		before(:each) do
			@request.env["devise.mapping"] = Devise.mappings[:admin]
			admin = FactoryBot.create(:admin)
			sign_in admin
		end
	end

	def login_user
		before(:each) do 
			@request.env["devise.mapping"] = Devise.mappings[:gymClient]
			user = FactoryBot.create(:gymClient)
			sign_in user
		end
	end

end