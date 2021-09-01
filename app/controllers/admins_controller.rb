class AdminsController < ApplicationController

	def index

		@users = User.all
	end


	def ban_user
		u = User.find(params[:id])
		u.unset_gymClient
		redirect_to :admin_view
	end


	def unban_user
		u = User.find(params[:id])
		u.set_gymClient
		redirect_to :admin_view
	end

	def admin_user
		u = User.find(params[:id])
		u.set_gymClient
		u.set_admin
		redirect_to :admin_view
	end


	def unadmin_user
		u = User.find(params[:id])
		u.unset_admin
		redirect_to :admin_view
	end
end