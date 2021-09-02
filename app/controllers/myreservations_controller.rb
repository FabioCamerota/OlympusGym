class MyreservationsController < ApplicationController
  #Da qui
  attr_accessor :courses
  def initialize
    @courses = []
  end
  #fino a qui. Serve per poter fare l'append su courses. Vedi https://stackoverflow.com/questions/19100463/why-cant-i-append-an-array/19100484#19100484
  def index
    reservations = Reservation.where(:user_id => current_user.id)
    for reservation in reservations
      c = Course.find(reservation.course_id)
      @courses.append(c)
    end
  end
end
