class ReservationsController < ApplicationController

  def create
    @course = Course.find(params[:course_id])
    @reservation = @course.reservations.create!(:prenotato => 1 , :user => current_user)
    redirect_to courses_path
  end

  def destroy
    @course = Course.find(params[:course_id])
    @reservation = @course.reservations.find(params[:id])
    @reservation.destroy
    redirect_to courses_path
  end

end
