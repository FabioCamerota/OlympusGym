class ReviewsController < ApplicationController
  
  def edit
    @review = Course.find(params[:course_id]).reviews.find(params[:id])
  end

  def update
    authorize! :update, Review, message: "You are not authorized!"
    @review = Course.find(params[:course_id]).reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to @review.course
    else
      render :edit
    end
  end

  def create
    authorize! :create, Review, message: "You are not authorized!"
    @course = Course.find(params[:course_id])
    @review = @course.reviews.create(review_params)
    redirect_to course_path(@course)
  end

  def destroy
    authorize! :destroy, Review, message: "You are not authorized!"
    @course = Course.find(params[:course_id])
    @review = @course.reviews.find(params[:id])
    @review.destroy
    redirect_to course_path(@course)
  end

  def user_reviews
    @user = User.find(params[:id])
  end

  private
  def review_params
    p = params.require(:review).permit(:comments, :stelle, :user)
    {:comments=> p[:comments], :stelle=>p[:stelle], :user=>current_user}
  end
    
end
