class Users::RegistrationsController < Devise::RegistrationsController
   after_action :assign_role, only:[:create]

	def assign_role
		if not current_user.nil?
  			current_user.set_gymClient
  		end
	end

	protected
	def update_resource(resource, params)
		resource.update_without_password(params)
	end

end
