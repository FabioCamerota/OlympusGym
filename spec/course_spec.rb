require "rails_helper.rb"

RSpec.describe CoursesController, type: :controller do 

	fixtures :users, :courses 

	describe "#index" do
		context "I am a user" do 
			it "shows course list correctly" do 
				user = users(:user)
				sign_in user 
				request.session[:user_id] = user.id
				get :index
				expect(response.body).to include("I nostri corsi")
				expect(response.body).to include("Krav Maga")
				expect(response.status).to eql(200)
			end
		end
	end

	describe "#show" do 
		context "I am a user" do 
			it "shows a course infos correctly" do  
				course = courses(:krav_maga)
				user = users(:user)
				sign_in user
				request.session[:user_id] = user.id
				get :show, :params => {:id => course.id}
				expect(response.body).to include("Krav Maga")
				expect(response.body).to include("01/01/1970")
				expect(response.status).to eql(200)
				#byebug
			end
		end
	end

end