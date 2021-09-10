require "rails_helper.rb"

RSpec.describe ReviewsController, type: :controller do 

	fixtures :users, :courses

	describe "#add" do
		context "I am a user" do 
			it "I should be able to add a review" do 
				user = users(:user)
				course = courses(:krav_maga)
				sign_in user
				request.session[:user_id] = user.id
				params = {:course_id => course.id, :review => {:comments => "Recensione RSpec", :stelle => 7}}
				get :create, :params => params
				expect(course.reload.reviews).not_to be_nil
				expect(course.reviews.find(1)[:comments]).to eql("Recensione RSpec")
				#byebug
			end
		end
	end

end