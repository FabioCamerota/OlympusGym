require "rails_helper.rb"

RSpec.describe AdminsController, type: :controller do

	#fixtures :users
	#login_admin
	

	#let(:admin) {User.create(email: "admin@olympus.com", password: "password", roles_mask: 2)}
	#let(:user) {User.create(email: "user@olympus.com", password: "password", roles_mask: 1)}
	#sign_in admin


	#describe "Ban:" do
	#	context "being and admin banning a user" do
	#		it "should make user banned" do
	#			#admin = users(:admin)
	#			user = User.create!(:email => 'prova@ciao.com', :password => 'password', :roles_mask => 1, :id => 0)
	#			#sign_in admin
	#			get :ban_user, :params => {:id => user.id}		#NON BANNA L'UTENTE, FIXARE
	#			#banned_user = User.where(:id => user.id)
	#			expect(user.roles_mask).to eql(0)
	#		end
	#	end
	#end

	describe "#adm" do
		context "being an admin" do 
			login_admin
			it "I should see admin page" do 
				user = User.create!(:email => 'prova@ciao.com', :password => 'password', :roles_mask => 1, :id => 0)
				get :index
				expect(response).to have_http_status(200) #include("prova@ciao.com")
			end
		end
	end


end